#' Build PPI Network
#'
#' Uses all inputted database information on protein-protein interactions in order to create a combined PPI-network.
#'
#' @param stringdb.edges Data frame of consisting of the network of interactions from the genes of study pulled from the STRINGdb database
#' @param genemania.edges GeneMANIA network of protein-protein interactions from the genes of study; defaults to NA
#' @param db.filepaths A vector of paths to the additional ppi network files; defaults to an empty vector
#' @param ppi.network.name Desired name for the output protein-protein interaction network using all entered database input; defaults to ppi.network
#'
#' @return A dataframe representing how strongly proteins are known to interact based on previous research contained within provided database networks
#' @export
#'
#' @examples
#' ex.string <- ex.stringdb.edges
#' ex.gm <- ex.genemania.edges
#' BuildPPINetwork(stringdb.edges = ex.string, genemania.edges = ex.gm, ppi.network.name = "ex.ppi.network")
#' utils::head(ex.ppi.network)
BuildPPINetwork <- function(removeme){
  return(1)
}

#' #' Filter PPI Network by Known Clusters
#'
#' All edges in the PPI network are checked against the cocluster correlation network to ensure existence and a non-zero weight.
#' If either of these conditions are not met, then it will be removed from the list of PPI edges.
#' This new, cluster filtered network is then assigned to the global namespace.
#'
#' @param gene.cccn A matrix showing strength of relationships between proteins using the common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
#' @param ppi.network A dataframe representing how strongly proteins are known to interact based on previous research contained within provided database networks
#' @param cfn.name Desired name of the output cluster filtered network
#'
#' @return A version of ppi.network with only the edges that exist in gene.cccn and have non-zero weights
#'
#' @export
#' @examples
#' ClusterFilteredNetwork(ex.gene.cccn, ex.ppi.network, cfn.name = "ex.cfn")
#' utils::head(ex.cfn)

BuildClusterFilteredNetwork <- function(stringdb.edges, genemania.edges, gene.cccn.edges, db.filepaths = c(), ppi.network.name = "combined.PPIs", cfn.name = "cfn", returndata=TRUE) {
  # Combine PPIs from different databases
  # First Normalize Weights
  stringdb.edges$Weight <- 100 * stringdb.edges$Weight / max(stringdb.edges$Weight, na.rm = TRUE) #  this returns a range of 0 to 100
  genemania.edges$Weight <- 100 * genemania.edges$Weight / max(genemania.edges$Weight, na.rm = TRUE) #  this returns a range of 0 to 100
  # Note: if additional PPI data is desired, duplicate the normalization of Weights above and add the additional edge file(s) here (and in the function header)
  # Now combine
  combined.PPIs <- rbind(stringdb.edges, genemania.edges)
  cfn1 <- merge(gene.cccn.edges[,c("source", "target")], combined.PPIs, by=c("source", "target"))
  # Undirected edges may be reversed in their order so merge the other way around.
  reversed <- combined.PPIs
  reversed <- reversed[ , c("target", "source", setdiff(names(gene.cccn.edges), c("source", "target")))]
  colnames(reversed)[1:2] <- c("source", "target")  # Rename for merge compatibility
  cfn2 <- merge(reversed[,c("source", "target")], combined.PPIs, by=c("source", "target"))
  # Combine both (removing redundant rows if needed)
  cfn <- rbind(cfn1, cfn2)
  cfn <- unique(cfn)
  assign(ppi.network.name, combined.PPIs, envir = .GlobalEnv)
  assign(cfn.name, cfn, envir = .GlobalEnv)    # assign :)
  if (returndata==TRUE) {return(list(combined.PPIs, cfn))}
}
#______________________________________________________________________________________________________________________________
