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
#' @param ptmtable A dataset for post-translational modifications. Formatted with row's names containing PTM names. The column names should be drugs. Values are numeric values that represent how much the PTM has reacted to the drug.
#' @param keeplength Only keep clusters of ptms whose size is larger than this parameter. (I.e keeplength = 2 then keep ("AARS", "ARMS", "AGRS") but not ("AARS", "ARMS")); default is 2
#' @param toolong A numeric threshold for cluster separation, defaults to 3.5.
#' @param tsne_perplexity The perplexity parameter for Rtsne. Please read Rtsne documentation for more information.
#' @param tsne_max_iter Number of iterations for Rtsne. Please read Rtsne documentation for more information.
#' @return A list with these data structures at the given index:
#' \enumerate{
#' \item{Clusters in all 3 distance metrices as a list.}
#' \item{A matrix containing values of 0s and 1s depending on if the PTMs are cocluster with other PTMs, rows and columns are unamed.}
#' \item{A data frame showing the correlation between ptms (as the rows and the columns) with NAs placed along the diagonal.}
#' }
#'
#' @export
#'
#' @examples
#' Example_Output <- MakeClusterList(ex_tiny_ptm_table) #Run function
#' Example_Output[[1]][1:3] #Display data
#' #Do we want to have one for adj.consensus? Doesn't seem like it'd be very helpful to view.
#' utils::head(Example_Output[[3]][, c(1,2,3,4,5)]) #Display data
MakeClusterList <- function(ptmtable, keeplength = 2, toolong = 3.5, tsne_perplexity = 15, tsne_max_iter = 5000){
  start_time <- Sys.time()
  message("Starting correlation calculations and t-SNE.")
  message("This may take a few minutes or hours for large data sets.")

  # Add if statement here to make sure functions are formatted correctly #
  # Ensure ptmtable is a data frame with numeric values #
  PTMnames <- rownames(ptmtable)
  if (!all(sapply(ptmtable, is.numeric))) {
    stop("All columns in 'ptmtable' must be numeric.")
  }

  # SPEARMAN CALCULATION

  # Calculate Spearman correlation #
  ptm.correlation.matrix <- suppressWarnings(stats::cor(t(ptmtable), use = "pairwise.complete.obs", method = "spearman"))
  # Note: this is the slowest step. We found  use = "pairwise.complete.obs",
  # method = "spearman" to perform the best according to evaluations with data
  # with missing values, but it takes longer.

  # Replace diagonal with NA #
  diag(ptm.correlation.matrix) <- NA

  # Calculate dissimilarity #
  sp.diss.matrix <- 1 - abs(ptm.correlation.matrix)

  # Handle any remaining NA values by setting them to the maximum dissimilarity #
  max.dist.sp <- max(sp.diss.matrix, na.rm = TRUE)

  #Set NA values to 100 * the max distance
  sp.diss.matrix[is.na(sp.diss.matrix)] <- 100 * max.dist.sp
  message("Spearman correlation calculation complete after ", round(Sys.time() - start_time, 2), " ", units(Sys.time() - start_time), " total.")

  # Run t-SNE #
  tsne.results <- Rtsne::Rtsne(sp.diss.matrix, dims = 3, perplexity = tsne_perplexity, theta = 0.25, max_iter = tsne_max_iter, check_duplicates = FALSE, pca = FALSE)
  spearman.coords <- tsne.results$Y
  message("Spearman t-SNE calculation complete after ", round(Sys.time() - start_time, 2), " ", units(Sys.time() - start_time), " total.")

  #EUCLIDEAN CALCULATION

  # Convert the dataframe to a distance matrix using Euclidean distance #
  ptmtable.dist = as.matrix(stats::dist(ptmtable, method = "euclidean"))

  # Compute the maximum distance in the matrix, excluding NA values #
  max.dist = max(ptmtable.dist, na.rm = TRUE)

  # Replace NA values in the distance matrix with 100 times the maximum distance #
  ptmtable.dist[is.na(ptmtable.dist)] <- 100 * max.dist

  # Normalize the distance matrix by scaling it to a range from 0 to 100. This becomes the distance matrix for euclidian distance which we will run Rtsne on#
  eu.dist.calc <- 100 * ptmtable.dist / max(ptmtable.dist, na.rm = TRUE)
  eu.dist.calc <- as.matrix(eu.dist.calc) #Fix eu.dist.calc RQ
  message("Euclidean distance calculation complete after ", round(Sys.time() - start_time, 2), " ", units(Sys.time() - start_time), " total.")

  # Run t-SNE #
  eu.ptms.tsne.list <- Rtsne::Rtsne(eu.dist.calc, dims = 3, perplexity = tsne_perplexity, theta = 0.25, max_iter = tsne_max_iter, check_duplicates = FALSE, pca = FALSE)
  euclidean.coords <- eu.ptms.tsne.list$Y
  message("Euclidean t-SNE calculation complete after ", round(Sys.time() - start_time, 2), " ", units(Sys.time() - start_time), " total.")

  #COMBINED CALCULATION

  #fix spearman thing; so do the exact same thing but no absolute value
  sp.diss.calc <- 1 - ptm.correlation.matrix            # range goes from (-1 to 1) to (0 to 2)
  max.diss.sp <- max(sp.diss.calc, na.rm = TRUE)        # find the max value (around 2)
  sp.diss.calc[is.na(sp.diss.calc)] <- 50 * max.diss.sp # Set every NA value to 50 * the max dissimilarity
  sp.diss.calc <- as.matrix(sp.diss.calc)               # turn into a matrix

  #find average
  combined.distance <- (sp.diss.calc + eu.dist.calc) / 2
  message("Combined distance calculation complete after ", round(Sys.time() - start_time, 2), " ", units(Sys.time() - start_time), " total.")
  # Perform t-SNE on the combined distances #
  tsne.result <- Rtsne::Rtsne(combined.distance, dims = 3, perplexity = tsne_perplexity, theta = 0.25, max_iter = tsne_max_iter, check_duplicates = FALSE, pca = FALSE)
  sed.coords <- tsne.result$Y
  message("SED t-SNE calculation complete after ", round(Sys.time() - start_time, 2), " ", units(Sys.time() - start_time), " total.")


  #Nested function to analyze result
  group <- NULL #Gets rid of check note
  clustercreate <- function(tsne_coords, distance_name){

    # Find clusters that are connected
    # this returns a vector with cluster assignment for each PTM
    result.disc2 <-  vegan::distconnected(stats::dist(tsne_coords), toolong = toolong, trace = FALSE)

    # Create a plot of the clusters, with convex hulll around each cluster
    # note that tsne_coords is a matrix with 3 columns (the t-SNE dimensions), but only first two will get plotted
    vegan::ordiplot(tsne_coords, display = c(), main=paste("t-SNE Cluster Plot", distance_name))
    vegan::ordihull(tsne_coords, result.disc2, col="red", lwd=2)

    # make a dataframe with one column for PTMs and another for group assignment
    result.span.df <- data.frame(PTMnames = PTMnames, group= result.disc2)

    # Convert data frame into a list of clusters (check doesn't like group but it's a column name)
    result.span.list <- plyr::dlply(result.span.df, plyr::.(group))  # GROUP LIST  !

    end_time <- Sys.time()
    total_time <- end_time - start_time
    message("Clustering for ", distance_name, " complete after ", round(total_time, 2), " ", units(total_time), " total.")
    return(result.span.list)
  } #END of nested function

  #Create all tsne coords data sturcture and give it names
  all.tsne.coords <- list(euclidean.coords, spearman.coords, sed.coords)
  names(all.tsne.coords) <- c("Euclidean", "Spearman", "SED")
  clusters.list <- mapply(clustercreate, all.tsne.coords, names(all.tsne.coords))

  FindCommonClusters <- function(clusters.list, keeplength=3) { # >>>> NEW method
    # For each distance metric's clusters:
    #  1.	Create a square matrix of all PTMs.
    #  2.	For each cluster, set all PTM–PTM pairs in the cluster to 1 (indicating co-membership).
    #  3.	The final matrix for a method has 1 for PTM pairs co-clustered in that method; 0 otherwise.

    co_membership_matrix <- function(clusters, all_ptms) {
      # 1. square matrix of all PTMs
      mat <- matrix(0, nrow = length(PTMnames), ncol = length(PTMnames),
                    dimnames = list(PTMnames, PTMnames))
      # 2. For each cluster, set all PTM–PTM pairs in the cluster to 1 (indicating co-membership).
      for (cluster in clusters) {
        ptms <- cluster$PTMnames
        if (length(ptms) > 1) {
          mat[ptms, ptms] <- 1
        }
      }
      diag(mat) <- 0
      return(mat)
    }

    adjacency_matrices <- purrr::map(clusters.list, co_membership_matrix, all_ptms=all_ptms)

    # Step 2: Sum the Co-Membership Matrices Across Methods
    adj.sum <- Reduce("+", adjacency_matrices)    # values: 0 (never), 1, 2, 3 (co-clustered in all 3 methods)

    #Step 3: Build a Consensus Network (for Co-Clustering in All 3 Embeddings)
    #	Edges: Only keep edges where `adj.sum == 3` (meaning the PTM pair is in the same cluster in all three methods).
    adj.consensus.matrix <- (adj.sum == 3) * 1 # This is a neat R trick to convert a logical matrix (`TRUE`/`FALSE`) to a numeric matrix (`1`/`0`) via multiplication.
    g <- igraph::graph_from_adjacency_matrix(adj.consensus.matrix, mode="undirected", diag=FALSE)

    # Step 4: Extract Cliques (Consensus Clusters): since clusters partitioned the graph, every clique is a connected component
    components <- igraph::components(g)
    # filter out components smaller than keeplength parameter and create list of co-clusters
    # from existing single-metric clusters
    keep_ids <- which(components$csize >= keeplength)
    clusters_in_all_three <- lapply(keep_ids,
     function(id) {igraph::V(g)$name[components$membership == id]}
    )
    if (length(clusters_in_all_three) > 0) {
      names(clusters_in_all_three) <- paste0("ConsensusCluster", seq_along(clusters_in_all_three))
    } else {
      warning("No cliques remain after filtering with keeplength = ", keeplength)
    }

    end_time <- Sys.time()
    message("Consensus clustering complete after ", round(end_time - start_time, 2), " ", units(end_time - start_time), " total.")
    return(list(adj.consensus.matrix, clusters_in_all_three))
  }

  # Find common clusters from existing single-metric clusters
  clusters.common.list <- FindCommonClusters(clusters.list, keeplength)
  adj.consensus.matrix <- clusters.common.list[[1]]
  common.clusters <- clusters.common.list[[2]]

  message("MakeClusterList complete after ", round(Sys.time() - start_time, 2), " ", units(Sys.time() - start_time), " total.")


  return(list(common.clusters, adj.consensus.matrix, ptm.correlation.matrix))
}
