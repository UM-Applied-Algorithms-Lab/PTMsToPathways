#' Common Clusters
#'
#' Clusters that contain PTMs that are found to cocluster in all 3 T-SNE lists.
#'
#' @keywords internal
#'
#' @format List of 11 lists:
#' \describe{
#'   \item{list}{Common clusters between the three distance metrics}
#' }
#' @source "Produced by MakeClusterList"
#' @examples
#' ex_common_clusters[0:3]
"ex_common_clusters"

#' Adjacency Consensus Matrix
#'
#' A matrix containing values of 0s and 1s depending on if the PTMs are in a cocluster with other PTMs.
#'
#' @keywords internal
#'
#' @format Dataframe of 125 rows and columns:
#' \describe{
#'   \item{rows}{PTMs}
#'   \item{columns}{PTMs}
#'   \item{values}{1 if PTMs are in the same cluster (pls confirm)}
#' }
#' @source "Produced by MakeClusterList"
#' @examples
#' head(ex_adj_consensus)
"ex_adj_consensus"

#' Correlation Matrix
#'
#' Matrix relating the correlation values between ptms based on Spearman Similarity.
#'
#' @keywords internal
#'
#' @format Square matrix of 125 rows and columns:
#' \describe{
#'   \item{rows and columns}{Ptm names}
#'   \item{values}{Strength of correlation}
#' }
#' @source "created by MakeClusterList"
#' @examples
#' head(ex_ptm_correlation_matrix)
"ex_ptm_correlation_matrix"



#' PTM CCCN Edgelist
#' 
#' PTM Co-Cluster Correlation Network as an Edgelist
#' 
#' @keywords internal
#' 
#' @format Data Frame of 1116 rows and 4 columns
#' \describe{
#'  \item{source}{A PTM}
#'  \item{target}{A PTM}
#'  \item{Weight}{Value from -1 to 1}
#'  \item{interaction}{Either correlation, positive correlation, or negative correlation}
#' }
#' @source "Created in MakeCorrelationNetwork"
#' @examples
#' head(ex_ptm_cccn_edgelist)
"ex_ptm_cccn_edgelist"

#' Gene CCCN Edgelist
#' 
#' Gene Co-Cluster Correlation Network as an Edgelist
#' 
#' @keywords internal
#' 
#' @format Data Frame of 473 rows and 4 columns
#' \describe{
#'  \item{source}{A Gene}
#'  \item{target}{A Gene}
#'  \item{Weight}{Value from -1 to 1}
#'  \item{interaction}{Either correlation, positive correlation, or negative correlation}
#' }
#' @source "Created in MakeCorrelationNetwork"
#' @examples
#' head(ex_gene_cccn_edgelist)
"ex_gene_cccn_edgelist"

#' Gene list
#' 
#' List of Genes gotten from PTMs
#' 
#' @keywords internal
#' 
#' @format Character Vector of length 96
#' \describe{
#'  \item{String}{Gene}
#' }
#' @source "Created in MakeCorrelationNetwork"
#' @examples
#' ex_genelist[0:5]
"ex_genelist"




#' STRINGdb Edges
#'
#' List of edges between genes in dataset.
#'
#' @keywords internal
#'
#' @format Dataframe of 702 rows and 4 columns:
#' \describe{
#'   \item{source}{First gene interacting}
#'   \item{target}{Second gene interacting}
#'   \item{interaction}{The type of interaction}
#'   \item{Weight}{The weight of the interaction between these two genes as described by STRINGdb}
#' }
#' @source "created by GetSTRINGdb"
#' @examples
#' head(ex_stringdb_edges)
"ex_stringdb_edges"



# TO DO: ADD GENEMANIA

