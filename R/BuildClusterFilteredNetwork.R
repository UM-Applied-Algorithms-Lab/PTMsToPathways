#' Build PPI Network
#'
#' Uses all inputted database information on protein-protein interactions in order to create a combined PPI-network.
#' All edges in the PPI network are checked against the cocluster correlation network to ensure existence and a non-zero weight.
#' If either of these conditions are not met, then it will be removed from the list of PPI edges.
#' This new, cluster filtered network is then assigned to the global namespace.
#'
#' @param stringdb.edges Data frame of consisting of the network of interactions from the genes of study pulled from the STRINGdb database
#' @param genemania.edges GeneMANIA network of protein-protein interactions from the genes of study; defaults to NA
#' @param kinsub.edges TODO
#' @param gene.cccn.edges TODO
#' @param db.filepaths A vector of paths to the additional ppi network files; defaults to an empty vector
#'
#' @return A list containing the following data structures at the given index:
#' \strong{1} All the database data.frames stringdb, genemania, and kinsub bound together in a data.frame
#' \strong{2} A version of ppi.network with only the edges that exist in gene.cccn and have non-zero weights
#'
#' @export
#' @examples
#' Example_Output <- BuildClusterFilteredNetwork(ex.stringdb.edges, ex.gm.edges, "need example", "need example", "need example")
#' utils::head(Example_Output)

BuildClusterFilteredNetwork <- function(stringdb.edges, genemania.edges, kinsub.edges, gene.cccn.edges, db.filepaths = c(), stringdb=TRUE, genemania=TRUE, kinsub=TRUE) {
  # Give users the option of opting out of all three designated PPI datasets
  if (stringdb == FALSE) {stringdb.edges = NULL}
  if (genemania == FALSE) {genemania.edges = NULL}
  if (kinsub == FALSE) {kinsub.edges = NULL}
  # Combine PPIs from different databases
  # First Normalize Weights
  if (stringdb == TRUE) {
    stringdb.edges$Weight <- 100 * stringdb.edges$Weight / max(stringdb.edges$Weight, na.rm = TRUE) } #  this returns a range of 0 to 100
  if (genemania == TRUE) {
    genemania.edges$Weight <- 100 * genemania.edges$Weight / max(genemania.edges$Weight, na.rm = TRUE) } #  this returns a range of 0 to 100
  # Note: if additional PPI data is desired, duplicate the normalization of Weights above and add the additional edge file(s) here (and in the function header)
  # Now combine
  combined.PPIs <- rbind(stringdb.edges, genemania.edges, kinsub.edges)
  if (dim (combined.PPIs == NULL)) {print("Warning: no PPI edges found to create cluster filtered network!")}
  cfn1 <- merge(gene.cccn.edges[,c("source", "target")], combined.PPIs, by=c("source", "target"))
  # Undirected edges may be reversed in their order so merge the other way around.
  reversed <- combined.PPIs
  reversed <- reversed[ , c("target", "source", setdiff(names(gene.cccn.edges), c("source", "target")))]
  colnames(reversed)[1:2] <- c("source", "target")  # Rename for merge compatibility
  cfn2 <- merge(reversed[,c("source", "target")], combined.PPIs, by=c("source", "target"))
  # Combine both (removing redundant rows if needed)
  cfn <- rbind(cfn1, cfn2)
  cfn <- unique(cfn)
  return(list(combined.PPIs, cfn))
}
#______________________________________________________________________________________________________________________________
