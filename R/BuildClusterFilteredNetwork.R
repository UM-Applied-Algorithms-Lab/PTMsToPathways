#' Build PPI Network
#'
#' Uses all inputted database information on protein-protein interactions in order to create a combined PPI-network.
#' All edges in the PPI network are checked against the cocluster correlation network to ensure existence and a non-zero weight.
#' If either of these conditions are not met, then it will be removed from the list of PPI edges.
#' This new, cluster filtered network is then assigned to the global namespace.
#'
#' @param gene.cccn.edges TODO
#' @param stringdb.edges Data frame of consisting of the network of interactions from the genes of study pulled from the STRINGdb database
#' @param genemania.edges GeneMANIA network of protein-protein interactions from the genes of study; defaults to NA
#' @param kinsub.edges TODO
#' @param db.filepaths A vector of paths to the additional ppi network files; defaults to an empty vector
#'
#' @return A list containing the following data structures at the given index: \enumerate{
#' \item{All the database data.frames stringdb, genemania, and kinsub bound together in a data frame.}
#' \item{A version of ppi.network with only the edges that exist in gene.cccn and have non-zero weights.}
#' }
#'
#' @export
#' @examples
#' Example_Output <- BuildClusterFilteredNetwork("need example", ex.stringdb.edges, ex.gm.edges, "need example", "need example")
#' utils::head(Example_Output)

BuildClusterFilteredNetwork <- function(gene.cccn.edges, stringdb.edges = NULL, genemania.edges = NULL, kinsub.edges = NULL, db.filepaths = c(NULL)) {

  # Combine PPIs from different databases
  # First Normalize Weights
  if (!is.null(stringdb.edges)) {
    stringdb.edges$Weight <- 100 * stringdb.edges$Weight / max(stringdb.edges$Weight, na.rm = TRUE) } #  this returns a range of 0 to 100
  if (!is.null(genemania.edges)) {
    genemania.edges$Weight <- 100 * genemania.edges$Weight / max(genemania.edges$Weight, na.rm = TRUE) } #  this returns a range of 0 to 100

  # Note: if additional PPI data is desired, duplicate the normalization of Weights above and add the additional edge file(s) here (and in the function header)
  # Done see below

  # Combine gathered PPI edges into one data frame
  combined.PPIs <- rbind(stringdb.edges, genemania.edges, kinsub.edges)

  if(!is.null(db.filepaths)){
    for(path in db.filepaths){
      db.edges <- utils::read.table(path)
      if(colnames(db.edges) != c("source", "target", "interaction", "Weight")){                        # Ensure the column names are the same
        stop("WARNING: incorrect column names in the file " + path + ". Ensure the column names are as follows: source, target, interaction, Weight")
      } else {
        db.edges$Weight <- 100 * db.edges$Weight / max(db.edges$Weight, na.rm = TRUE)                  # return a range of 0 to 100
        combined.PPIs <- rbind(combined.PPIs, db.edges)                                                # add it to combined.PPIs
      }
    }
  }

  # Check that all edge data objects are not NULL
  if(is.null(combined.PPIs)){
    stop("WARNING: no PPI edges found to create cluster filtered network!")
    }

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
