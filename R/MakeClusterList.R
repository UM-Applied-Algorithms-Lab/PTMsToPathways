# Helper function for Rtsne since parameters are set
#
# This function is made to help people new to the Rtsne function understand parameters and organize code. All it does is call Rtsne with set parameters. If you understand R code, feel free to modify the parameters and resource the function.
#
# @param table The matrix that Rtsne needs to be performed on. It's called table because a lot of operations contain the word "matrix" so it was called something else to not be confusing.
# @param iter Number of iterations, defaults 5000
#
# @return A matrix where each row has 3 dimensionial t-SNE coords for a given matrix.
GetRtsne <- function(table, iter=5000){
  if(!is.matrix(table)) table <- as.matrix(table) #Force parameter to be a matrix if it is not already

  # Apply t-SNE to the distance matrix to reduce dimensions to 3 #
  # Parameters: dims = 3 (3D output), perplexity = 15, theta = 0.25 (speed/accuracy trade-off) #
  # max_iter = 5000 (number of iterations)
  # check_duplicates = FALSE (treat rows as unique) #
  # pca = FALSE (no initial PCA) #
  return(Rtsne::Rtsne(table, dims = 3, perplexity = 15, theta = 0.25, max_iter = iter, check_duplicates = FALSE, pca = FALSE))
}

#' Build Clusters Based on PTM Data Under Like Conditions
#'
#' This function takes the post-translational modification table and runs it through three calculations of distance:
#' Euclidean Distance, Spearman Dissimilarity (1 - |Spearman Correlation|), and the average of the two of these.
#' These calculations find the 'distance' between ptms based upon under what conditions they occur.
#' These matricies are then run through t-SNE in order to put them into a 3-dimensional space. Additionally, the intersection of these 3 clusters is also created.
#' A correlation table is also produced based on the Spearman Correlation table.
#'
#' Please note: t-SNE involves an element of randomness; in order to get the same results, set.seed(#) must be called.
#'
#' @param ptmtable A dataset for post-translational modifications. Formatted with numbered rows, and the first column containing PTM names. The rest of the column names should be drugs. Values are numeric values that represent how much the PTM has reacted to the drug.
#' @param correlation.matrix.name Desired name for the correlation matrix to be saved as; defaults to "ptm.correlation.matrix"
#' @param clusters.list.name Desired name for the lists of clusters to be saved as; defaults to clusters.list
#' @param tsne.coords.name Desired name for the lists of tsne coords to be saved as; defaults to tsne.coords
#' @param common.clusters.name Desired name for the clusters that all 3 methods found in common; defaults to common.clusters
#' @param keeplength Only keep clusters of ptms whose size is larger than this parameter. (I.e keeplength = 2 then keep ("AARS", "ARMS", "AGRS") but not ("AARS", "ARMS")); default is 2
#' @param toolong A numeric threshold for cluster separation, defaults to 3.5.
#' @param adj.consensus.name adjacency matrix of consensus clusters from three t-SNE embeddings
#' @return The correlation matrix: A data frame showing the correlation between ptms (as the rows and the columns) with NAs placed along the diagonal; and A list of three-dimensional data frames used to represent ptms in space to show relationships between them based on distances. Based on Euclidean Distance, Spearman Dissimilarity, and SED (the average between the two)
#' @export
#'
#' @examples
#' ex.ptm.cor <- "ex.ptm.correlation.matrix"
#' ex.clusters <- "ex.clusters.list"
#' ex.tsnes <- "ex.all.tsne.coords"
#' ex.commons <- "ex.common.clusters"
#' MakeClusterList(ex.ptmtable, ex.ptm.cor, ex.clusters, ex.tsnes, ex.commons)
#' utils::head(ex.ptm.correlation.matrix[, c(1,2,3,4,5)])
#' print(ex.clusters.list[[1]][1])
#' print(ex.clusters.list[[2]][1])
#' print(ex.clusters.list[[3]][1])
MakeClusterList <- function(ptmtable, correlation.matrix.name = "ptm.correlation.matrix", clusters.list.name = "clusters.list", tsne.coords.name = "all.tsne.coords", common.clusters.name = "common.clusters", adj.consensus.name = "adj.consensus", keeplength = 2, toolong = 3.5, returndata = TRUE){
  start_time <- Sys.time()
  print("Starting correlation calculations and t-SNE.")
  print(start_time)
  print("This may take a few minutes for large data sets.")
  #SPEARMAN CALCULATION

  # Add if statement here to make sure functions are formatted correctly #
  # Ensure ptmtable is a data frame with numeric values #
  PTMnames <- sort(rownames(ptmtable))
  ptmtable.sp <- apply(ptmtable, 1:2, as.numeric) #Exclude colnames from matrix and test to make sure they are numbers

  # Calculate Spearman correlation #
  ptm.correlation.matrix <- stats::cor(t(ptmtable.sp), use = "pairwise.complete.obs", method = "spearman")
  # Note: this is the slowest step. We found  use = "pairwise.complete.obs", method = "spearman" to perform the best according to evaluations with data with missing values, but it takes longer.

  # Replace diagonal with NA #
  diag(ptm.correlation.matrix) <- NA

  # Calculate dissimilarity #
  sp.diss.matrix <- 1 - abs(ptm.correlation.matrix)

  # Handle any remaining NA values by setting them to the maximum dissimilarity #
  max.dist.sp <- max(sp.diss.matrix, na.rm = TRUE)

  #Set NA values to 100 * the max distance
  sp.diss.matrix[is.na(sp.diss.matrix)] <- 100 * max.dist.sp

  # Fix names of correlation matrix
  colnames(ptm.correlation.matrix) <- PTMnames
  rownames(ptm.correlation.matrix) <- PTMnames

  # Run t-SNE #
  tsne.results <- GetRtsne(sp.diss.matrix) #Call GetRtsne
  # Return t-SNE results #
  spearman.cluster.coords = tsne.results$Y


  #EUCLIDEAN CALCULATION

  # Add if statement here to make sure functions are formatted correctly #
  # Convert the dataframe to a distance matrix using Euclidean distance #
  ptmtable.dist = as.matrix(stats::dist(ptmtable.sp, method = "euclidean"))

  # Compute the maximum distance in the matrix, excluding NA values #
  max.dist = max(ptmtable.dist, na.rm = TRUE)

  # Replace NA values in the distance matrix with 100 times the maximum distance #
  ptmtable.dist[is.na(ptmtable.dist)] <- 100 * max.dist

  # Normalize the distance matrix by scaling it to a range from 0 to 100. This becomes the distance matrix for euclidian distance which we will run Rtsne on#
  eu.dist.calc <- 100 * ptmtable.dist / max(ptmtable.dist, na.rm = TRUE)
  eu.dist.calc <- as.matrix(eu.dist.calc) #Fix eu.dist.calc RQ

  # Apply t-SNE to the distance matrix to reduce dimensions to 3 #
  # Parameters: dims = 3 (3D output), perplexity = 15, theta = 0.25 (speed/accuracy trade-off) #
  # max_iter = 5000 (number of iterations), check_duplicates = FALSE (treat rows as unique) #
  # pca = FALSE (no initial PCA) #
  eu.ptms.tsne.list <- GetRtsne(eu.dist.calc) #Call GetRtsne

  # Extract the t-SNE results from the output list #
  euclidean.cluster.coords <- eu.ptms.tsne.list$Y

  #COMBINED CALCULATION

  #fix spearman thing; so do the exact same thing but no absolute value
  sp.diss.calc <- 1 - ptm.correlation.matrix            # range goes from (-1 to 1) to (0 to 2)
  max.diss.sp <- max(sp.diss.calc, na.rm = TRUE)        # find the max value (around 2)
  sp.diss.calc[is.na(sp.diss.calc)] <- 50 * max.diss.sp # Set every NA value to 50 * the max dissimilarity
  sp.diss.calc <- as.matrix(sp.diss.calc)               # turn into a matrix

  #find average
  combined.distance <- (sp.diss.calc + eu.dist.calc) / 2
  # Perform t-SNE on the combined distances #
  tsne.result <- GetRtsne(combined.distance) #Call GetRtsne
  sed.cluster.coords <- tsne.result$Y


  #Nested function to analyze result
  group <- NULL #Gets rid of check note
  clustercreate <- function(result){

    #Compute the minimum spanning tree connecting the points
    tsne.span <- vegan::spantree(stats::dist(result), toolong=toolong)

    #Find clusters that are connected based on toolong (distance?)
    result.disc2 <-  vegan::distconnected(stats::dist(result), toolong = toolong, trace = FALSE)  # test
    # cat ("threshold dissimilarity", toolong, "\n", max(result.disc2), " groups","\n")

    #Create a plot of the clusters using vegan
    vegan::ordiplot(result)
    #lines(tsne.span, result) #???
    vegan::ordihull(result, result.disc2, col="red", lwd=2)

    #Format a data frame
    result.span.df <- data.frame(PTMnames)
    result.span.df$group <- result.disc2 #Add groups found above to the data frame

    #Convert data frame into a list of clusters (check doesn't like group but it's a column name)
    result.span.list <- plyr::dlply(result.span.df, plyr::.(group))  # GROUP LIST  !
    return(result.span.list)
    end_time <- Sys.time()
    print(end_time)
    #calculate difference between start and end time
    total_time <- end_time - start_time
    print(noquote(paste("Total time: ", total_time, sep="")))

  } #END of nested function

  #Assign tsne coords and distance clusters as a list to global environment
  all.tsne.coords <- list(euclidean.cluster.coords, spearman.cluster.coords, sed.cluster.coords)
  names(all.tsne.coords) <- c("Euclidean", "Spearman", "SED")
  clusters.list <- lapply(all.tsne.coords, clustercreate)
  names(clusters.list) <- c("Euclidean", "Spearman", "SED")

  FindCommonClusters <- function(clusters.list, keeplength=3) { # >>>> NEW method
    # For each clustering method:
    #   1.	Create a square matrix of all PTMs (across clusterings).
    #  2.	For each cluster, set all PTM–PTM pairs in the cluster to 1 (indicating co-membership).
    #  3.	The final matrix for a method has 1 for PTM pairs co-clustered at least once in that method; 0 otherwise.
    #  clusters.list is the list of clusters from different embeddings: list(Euclidean, Spearman, SED) from MakeClusterList()
    library(purrr)
    start_time <- Sys.time()
    message("Starting FindCommonClusters at ", start_time)

    get_ptm_names <- function(clusters) {
      unique(unlist(lapply(clusters, function(cl) cl$PTMnames)))
    }
    all_ptms <- unique(unlist(map(clusters.list, get_ptm_names)))

    co_membership_matrix <- function(clusters, all_ptms) {
      mat <- matrix(0, nrow = length(all_ptms), ncol = length(all_ptms),
                    dimnames = list(all_ptms, all_ptms))
      for (cluster in clusters) {
        ptms <- intersect(cluster$PTMnames, all_ptms)
        if (length(ptms) > 1) {
          mat[ptms, ptms] <- 1
        }
      }
      diag(mat) <- 0
      mat
    }


  adjacency_matrices <- purrr::map(clusters.list, co_membership_matrix, all_ptms=all_ptms)

    # Step 2: Sum the Co-Membership Matrices Across Methods
    adj.sum <- Reduce("+", adjacency_matrices)    # values: 0 (never), 1, 2, 3 (co-clustered in all 3 methods)
    diag(adj.sum) <- 0

    #Step 3: Build a Consensus Network (for Co-Clustering in All 3 Embeddings)
    #	Edges: Only keep edges where `adj.sum == 3` (meaning the PTM pair is in the same cluster in all three methods).
    adj.consensus <- (adj.sum == 3) * 1 # This is a neat R trick to convert a logical matrix (`TRUE`/`FALSE`) to a numeric matrix (`1`/`0`) via multiplication.
    diag(adj.consensus) <- 0
    g <- igraph::graph_from_adjacency_matrix(adj.consensus, mode="undirected", diag=FALSE)

    # Step 4: Extract Cliques (Consensus Clusters)
    # use `igraph` to extract maximal cliques, which are sets of PTMs such that every member is connected to every other member in all three methods.
    clique_list <- igraph::max_cliques(g, min=2)  # Only consider cliques of at least size 2
    clusters_in_all_three <- lapply(clique_list, function(v) igraph::V(g)[v]$name)

    # Filter out very small cliques
    clusters_in_all_three <- Filter(function(x) length(x) >= keeplength, clusters_in_all_three)

    if (length(clusters_in_all_three) > 0) {
      names(clusters_in_all_three) <- paste0("ConsensusCluster", seq_along(clusters_in_all_three))
    } else {
      warning("No cliques remain after filtering with keeplength = ", keeplength)
    }

    end_time <- Sys.time()
    print(end_time)
    #calculate difference between start and end time
    total_time <- end_time - start_time
    print(noquote(paste("Total time: ", total_time, sep="")))
    # Assign
    # assign(adj.consensus, ptm.correlation.matrix, envir = .GlobalEnv)
    return(list(adj.consensus, clusters_in_all_three))
  }
  #Find common clusters
  clusters.common.list <- FindCommonClusters(clusters.list, keeplength) # Runtime: 10 seconds
  adj.consensus <- clusters.common.list[[1]]
  common.clusters <- clusters.common.list[[2]]


  #Assign
  assign(tsne.coords.name, all.tsne.coords, envir = .GlobalEnv) # The list of tsne coords
  assign(clusters.list.name, clusters.list, envir = .GlobalEnv) # list of the t-SNE data for Euclidean, Spearman, and SED
  assign(correlation.matrix.name, ptm.correlation.matrix, envir = .GlobalEnv) # Correlation Matrix for later use
  assign(common.clusters.name, common.clusters, envir = .GlobalEnv) #Common clusters
  assign(adj.consensus.name, adj.consensus, envir = .GlobalEnv) # consensus adjacency matrix from all clusters for later use
  if (returndata==TRUE) {return(list(common.clusters, adj.consensus, ptm.correlation.matrix))}
}
