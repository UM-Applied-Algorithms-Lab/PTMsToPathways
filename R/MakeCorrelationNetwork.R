#' Make Correlation Network
#'
#' Make Correlation Network filters a correlation matrix of PTMs by specific PTMs.
#' It groups the PTM correlation matrix based on the Genes of PTMs.
#' By summing these submatrices, it also produces a gene by gene cocluster correlation network shows strength of relationships between proteins using the common clusters between the three distance metrics.
#'
#' @param common.clusters A list of clusters. Ideally the ones found by MakeClusterList in common_clusters
#' @param ptm.correlation.matrix A data frame showing the correlation between ptms (as the rows and the columns). NAs are placed along the diagonal.
#' @param ptm.cccn.name Desired name of the PTM correlation matrix filtered by specific PTMs from input; defaults to ptm.cccn
#' @param gene.cccn.name Desired name for the gene cocluster correlation network; defaults to gene.cccn
#' @param ptm.cccn.graph.name Desired name of the PTM correlation matrix filtered by specific PTMs from input - igraph object
#' @param gene.cccn.graph.name Desired name for the gene cocluster correlation network; defaults to gene.cccn - igraph object
#' @param ptm.cccn.edges.name Desired name of the PTM edge list file
#' @param gene.cccn.edges.name Desired name for the gene edge list file
#' @return The list of common clusters between all three distance metrics (Euclidean, Spearman, and SED) and a matrix showing strength of relationships between proteins using the common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
#' @export
#'
#' @examples
#' ex.ptm.cor <- ex.ptm.correlation.matrix
#' MakeCorrelationNetwork(ex.common.clusters, ex.ptm.cor, "ex.ptm.cccn", "ex.gene.cccn")
#' ex.ptm.cccn[1:5, 1:5]
#' ex.gene.cccn[1:5, 1:5]
#'
MakeCorrelationNetwork <- function(common.clusters, ptm.correlation.matrix, ptm.cccn.name = "ptm.cccn", gene.cccn.name = "gene.cccn", ptm.cccn.graph.name = "ptm.cccn.g", gene.cccn.graph.name = "gene.cccn.g", ptm.cccn.edges.name = "ptm.cccn.edges", gene.cccn.edges.name = "gene.cccn.edges", returndata = TRUE){
 # Two nested functions for creating the PTM and gene CCCN, respectively
  # Use the consensus adjacency matrix to filter PTM correlations, then create a graph and edge files for PTMs and genes
  MakePTMCCCN <- function(adj.consensus, ptm.correlation.matrix) {
  #calculate time at start of code block
  print("Making PTM CCCN")
  start_time <- Sys.time()
  # Use only PTM pairs that co-clustered in all three methods (adj.consensus == 1)
  ptm.cccn <- ptm.correlation.matrix[sort(rownames(ptm.correlation.matrix)), sort(colnames(ptm.correlation.matrix))]
  ptm.cccn.mask <- adj.consensus[sort(rownames(adj.consensus)), sort(colnames(adj.consensus))]
  # Find active ptms before setting 0 to NA
  active_flags <- (rowSums(adj.consensus) > 0) | (colSums(adj.consensus) > 0)
  active_ptms <- rownames(adj.consensus)[active_flags]
  ptm.cccn.mask[ptm.cccn.mask == 0] <- NA  # Set 0 to NA for masking

  # Apply mask to Spearman correlations
  ptm.cccn[is.na(ptm.cccn.mask)] <- NA

  # Subset the adjacency matrix to include only active PTMs
  ptm.cccn.active <- ptm.cccn[active_ptms, active_ptms, drop=FALSE]

  # Remove self-loops
  if(any(!is.na(diag(ptm.cccn)))) {diag(ptm.cccn) <- NA}
  ptm.cccn <- ptm.cccn.active

  # Make edglist file:
  # Replace NA with 0 for igraph compatibility
  ptm.cccn0 <- ptm.cccn
  ptm.cccn0[is.na(ptm.cccn0)] <- 0

  # Create igraph object from correlation matrix
  ptm.cccn.g <- igraph::graph_from_adjacency_matrix(ptm.cccn0, mode = "lower", diag = FALSE, weighted = TRUE)

  # Extract edge list as data.frame
  ptm.cccn.edges <- as.data.frame(igraph::as_edgelist(ptm.cccn.g))
  names(ptm.cccn.edges) <- c("source", "target")
  ptm.cccn.edges$Weight <- igraph::edge_attr(ptm.cccn.g, "weight")

  # Classify interaction by correlation value
  ptm.cccn.edges$interaction <- "correlation"
  ptm.cccn.edges$interaction[ptm.cccn.edges$Weight <= -0.5] <- "negative correlation"
  ptm.cccn.edges$interaction[ptm.cccn.edges$Weight >=  0.5] <- "positive correlation"
  # Assign
  # assign(ptm.cccn.g, ptm.cccn, ptm.cccn.edges, envir = .GlobalEnv)
  end_time <- Sys.time()
  print(end_time)
  #calculate difference between start and end time
  total_time <- end_time - start_time
  print(noquote(paste("Total time: ", total_time, sep="")))
  return(list(ptm.cccn0, ptm.cccn.g, ptm.cccn.edges))
}
#
ptm.cccn.list <- MakePTMCCCN(adj.consensus, ptm.correlation.matrix)
ptm.cccn <- ptm.cccn.list[[1]]
ptm.cccn.g <- ptm.cccn.list[[2]]
ptm.cccn.edges <- ptm.cccn.list[[3]]
# Build the Gene CCCN
# Start from igraph object saved from MakePTMCCCN()
# Double ddply Summing: By grouping and summing in both directions, you ensure the aggregation is performed for both genes in each pair, producing a correctly shaped and labeled gene–gene matrix.
MakeGeneCCCN <- function(ptm.cccn){
  start_time <- Sys.time()
  print("Making Gene CCCN")
  print(start_time)
  # ptm.cccn  was returned above
  gene.cccn <- data.frame(ptm.cccn, row.names = rownames(ptm.cccn), check.rows=TRUE, check.names=FALSE, fix.empty.names = FALSE)
  # Check: identical(rownames(gene.cccn), colnames(gene.cccn)) # TRUE
  gene.cccn$Gene.Name <- sapply(rownames(gene.cccn), function (x) unlist(strsplit(x, " ",  fixed=TRUE))[1])
  # Use only upper triangle so correlations are not duplicated during the next step
  gene.cccn[lower.tri(gene.cccn)] <- NA
  # Sum correlations in one dimension, then the other dimension
  # library(plyr)
  # gene.cccn2 <- plyr::ddply(gene.cccn, "Gene.Name", numcolwise(function(x) sum(x, na.rm=T)), .progress = "tk") # old method
  gene.cccn2 <- dplyr::summarise(
    dplyr::group_by(gene.cccn, .data$Gene.Name),
    dplyr::across(
      where(is.numeric),
      ~sum(.x, na.rm = TRUE)
    )
  )
  gene.cccn2 <- as.data.frame(gene.cccn2)
  rownames(gene.cccn2) <- gene.cccn2$Gene.Name
  gene.cccn2 <- gene.cccn2[, 2:ncol(gene.cccn2)]
  # Transform to do the other dimension
  gene.cccn2 <- data.frame(t(gene.cccn2))
  gene.cccn2$Gene <- sapply(rownames(gene.cccn2), function (x) unlist(strsplit(x, " ",  fixed=TRUE))[1])
  # Now sum the other dimension
  # gene.cccn3 <- plyr::ddply(gene.cccn2, "Gene", numcolwise(function(x) sum(x, na.rm=T)), .progress = "tk") # old method
  gene.cccn3 <- dplyr::summarise(
    dplyr::group_by(gene.cccn2, .data$Gene),
    dplyr::across(
      where(is.numeric),
      ~sum(.x, na.rm = TRUE)
    )
  )
  # R likes to put dots in column names, which is a problem for ambiguous gene names and gene names with hyphens
  #  so just work around the problem (once satisfied that the gene names actually match).
  names(gene.cccn3)[2:ncol(gene.cccn3)] <- gene.cccn3$Gene
  gene.cccn3 <- as.data.frame(gene.cccn3)
  rownames(gene.cccn3) <- gene.cccn3$Gene
  gene.cccn.matrix <- as.matrix(gene.cccn3[,2:ncol(gene.cccn3)])
  # Replace 0 with NA in the correlation matrix
  gene.cccn.matrix[gene.cccn.matrix==0] <- NA
  # Remove self-loops by setting diagonal to NA; diag() requires a matrix
  diag(gene.cccn.matrix) <- NA
  gene.cccn0 <- gene.cccn.matrix
  gene.cccn0[is.na(gene.cccn0)] <- 0 #  igraph doesn't like NAs
  # For Graphing and making edge lists
  gene.cccn.g <- igraph::graph_from_adjacency_matrix(gene.cccn0, mode = "lower", diag = FALSE, weighted = TRUE)
  # Extract edge list as data.frame
  gene.cccn.edges <- as.data.frame(igraph::as_edgelist(gene.cccn.g))
  names(gene.cccn.edges) <- c("source", "target")
  gene.cccn.edges$Weight <- igraph::edge_attr(gene.cccn.g, "weight")

  # Classify interaction by correlation value
  gene.cccn.edges$interaction <- "correlation"
  gene.cccn.edges$interaction[gene.cccn.edges$Weight <= -0.5] <- "negative correlation"
  gene.cccn.edges$interaction[gene.cccn.edges$Weight >=  0.5] <- "positive correlation"
  end_time <- Sys.time()
  print(end_time)
  #calculate difference between start and end time
  total_time <- end_time - start_time
  print(noquote(paste("Total time: ", total_time, sep="")))
  return(list(gene.cccn.g, gene.cccn.edges, gene.cccn.matrix))
}

gene.cccn.list <- MakeGeneCCCN(ptm.cccn)
gene.cccn.g <- gene.cccn.list[[1]]
gene.cccn.edges <- gene.cccn.list[[2]]
gene.cccn <- gene.cccn.list[[3]]


  ### Export Final Data Structure ###
  assign(gene.cccn.name, gene.cccn, envir = .GlobalEnv) # Gene Co-Cluster Correlation Network adjacency matrix
  assign(ptm.cccn.name, ptm.cccn, envir = .GlobalEnv) # PTM Co-Cluster Correlation Network adjacency matrix
  assign(gene.cccn.graph.name, gene.cccn.g, envir = .GlobalEnv) # igraph object for Gene Co-Cluster Correlation Network
  assign(ptm.cccn.graph.name, ptm.cccn.g, envir = .GlobalEnv) # igraph object for PTM Co-Cluster Correlation Network
  assign(gene.cccn.edges.name, gene.cccn.edges, envir = .GlobalEnv) # edge file for Gene Co-Cluster Correlation Network
  assign(ptm.cccn.edges.name, ptm.cccn.edges, envir = .GlobalEnv) # edge file for PTM Co-Cluster Correlation Network
  if (returndata == TRUE) {return (list(ptm.cccn.g, gene.cccn.g, ptm.cccn.edges, gene.cccn.edges))}

  ### Graphing ###
  # graph <- igraph::graph_from_adjacency_matrix(gene.cccn, mode = "lower", diag = FALSE, weighted = "Weight")
  # plot(graph)
  # Note: Cytoscape is recommended for graphing networks
}
