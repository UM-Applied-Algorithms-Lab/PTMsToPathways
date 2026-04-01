#' Tiny PTM Table Example
#'
#' Post-translational modification data under certain environmental conditions.
#'
#' @keywords internal
#'
#' @format Dataframe of 125 rows and 7 columns:
#' \describe{
#'   \item{row}{Number of PTMs}
#'   \item{columns}{Names of drugs that were used on PTMs}
#'   \item{values}{Expression as found by mass spectrometry}
#' }
#' @source "Sub-data frame of the small PTM table"
#' @examples
#' head(ex_small_ptm_table)
"ex_tiny_ptm_table"

#' Small PTM Table Example
#'
#' Post-translational modification data under certain environmental conditions.
#'
#' @keywords internal
#'
#' @format Dataframe of 908 rows and 18 columns:
#' \describe{
#'   \item{row}{Number of PTMs}
#'   \item{columns}{Names of drugs that were used on PTMs}
#'   \item{values}{Expression as found by mass spectrometry}
#' }
#' @source "An .rda version of phospho_cleaned_mapped.txt found in inst/extdata"
#' @examples
#' head(ex_small_ptm_table)
"ex_small_ptm_table"

#' Full PTM Table Example
#'
#' Post-translational modification data under certain environmental conditions.
#'
#' @keywords internal
#'
#' @format Dataframe of 9215 rows and 70 columns:
#' \describe{
#'   \item{row}{Number of PTMs}
#'   \item{columns}{Names of drugs that were used on PTMs}
#'   \item{values}{Expression as found by mass spectrometry}
#' }
#' @source "Mass Spectrometry Data"
#' @examples
#' head(ex_full_ptm_table)
"ex_full_ptm_table"



#' Common Clusters
#'
#' Clusters that contain PTMs that are found to cocluster in all 3 T-SNE lists.
#'
#' @keywords internal
#'
#' @format List of 140 lists:
#' \describe{
#'   \item{Cluster id}{Common clusters between the three distance metrics}
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
#' @format Dataframe of 908 rows and columns:
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
#' @format Square matrix of 908 rows and columns:
#' \describe{
#'   \item{rows and columns}{Ptm names}
#'   \item{values}{Strength of correlation}
#' }
#' @source "Produced by MakeClusterList"
#' @examples
#' head(ex_ptm_correlation_matrix)
"ex_ptm_correlation_matrix"



#' PTM CCCN Edgelist
#' 
#' PTM Co-Cluster Correlation Network as an Edgelist
#' 
#' @keywords internal
#' 
#' @format Data Frame of 5710 rows and 4 columns
#' \describe{
#'  \item{source}{A PTM}
#'  \item{target}{A PTM}
#'  \item{Weight}{Value from -1 to 1}
#'  \item{interaction}{Either correlation, positive correlation, or negative correlation}
#' }
#' @source "Produced by MakeCorrelationNetwork"
#' @examples
#' head(ex_ptm_cccn_edges)
"ex_ptm_cccn_edges"

#' Gene CCCN Edgelist
#' 
#' Gene Co-Cluster Correlation Network as an Edgelist
#' 
#' @keywords internal
#' 
#' @format Data Frame of 2279 rows and 4 columns
#' \describe{
#'  \item{source}{A Gene}
#'  \item{target}{A Gene}
#'  \item{Weight}{Value from -1 to 1}
#'  \item{interaction}{Either correlation, positive correlation, or negative correlation}
#' }
#' @source "Produced by MakeCorrelationNetwork"
#' @examples
#' head(ex_gene_cccn_edges)
"ex_gene_cccn_edges"

#' Gene list (nodes)
#' 
#' List of Genes gotten from PTMs
#' 
#' @keywords internal
#' 
#' @format Character Vector of length 390
#' \describe{
#'  \item{String}{Gene}
#' }
#' @source "Produced by MakeCorrelationNetwork"
#' @examples
#' ex_gene_cccn_nodes[0:5]
"ex_gene_cccn_nodes"




#' STRINGdb Edges
#'
#' List of edges between genes in dataset.
#'
#' @keywords internal
#'
#' @format Dataframe of 8844 rows and 4 columns:
#' \describe{
#'   \item{source}{First gene interacting}
#'   \item{target}{Second gene interacting}
#'   \item{interaction}{The type of interaction}
#'   \item{Weight}{The weight of the interaction between these two genes as described by STRINGdb}
#' }
#' @source "Produced by GetSTRINGdb.edges"
#' @examples
#' head(ex_stringdb_edges)
"ex_stringdb_edges"


#' Genemania Edges
#' 
#' Edges from gene_cccn_nodes that are also found within the Genemania database
#' 
#' @keywords internal
#' 
#' @format Dataframe of 5 rows and 4 columns
#' \describe{
#'  \item{source}{First gene interacting}
#'  \item{target}{Second gene interacting}
#'  \item{interaction}{The type of interaction}
#'  \item{Weight}{The weight of the interaction between these two genes gotten from the Genemania database}
#' }
#' @source "Produced by GetGeneMANIA.edges"
#' @examples
#' head(ex_genemania_edges)
"ex_genemania_edges"

# DO KINSUB EDGES 



#' Combined PPIs
#' 
#' Combines all Protein to Protein interaction data and combines their weights into one score from a range of 0 to 1
#' 
#' @keywords internal
#' 
#' @format Dataframe of 8849 rows and 4 columns
#' \describe{
#'  \item{source}{First gene interacting}
#'  \item{target}{Second gene interacting}
#'  \item{interaction}{The type of interaction}
#'  \item{Weight}{The normalized weight of the interaction between two genes from Genemania and StringDB}
#' }
#' @source "Produced by BuildClusterFilteredNetwork"
#' @examples
#' head("ex_combined_ppi")
"ex_combined_ppi"

#' Cfn
#' 
#' The Cluster Filtered Network is a filtered version of the Combined PPIs but only for proteins found to interact via t-SNE clusters
#' 
#' @keywords internal
#' 
#' @format Dataframe of 196 rows and 4 columns
#' \describe{
#'  \item{source}{First gene interacting}
#'  \item{target}{Second gene interacting}
#'  \item{interaction}{The type of interaction}
#'  \item{Weight}{Weight from Combined PPI}
#' }
#' @source "Produced by BuildClusterFilteredNetwork"
#' @examples
#' head("ex_cfn")
"ex_cfn"



#' Bioplanet
#' 
#' A database file from the bioplanet website
#' 
#' @keywords internal
#' 
#' @format Dataframe of 196 rows and 4 columns
#' \describe{
#'  \item{PATHWAY_ID}{The pathway a gene belongs to}
#'  \item{PATHWAY_NAME}{The name of the pathway a gene belongs to}
#'  \item{GENE_ID}{A unique gene ID}
#'  \item{GENE_SYMBOL}{An abrivation for the name of the gene}
#' }
#' @source "https://www.frontiersin.org/journals/pharmacology/articles/10.3389/fphar.2019.00445/full"
#' @examples
#' head("ex_bioplanet")
"ex_bioplanet"

#' Pathway Crosstalk Network
#' 
#' Specific genes from the bioplanet file that we found in Common Clusters and their respective cell signaling pathway relationships
#' 
#' @keywords internal
#' 
#' @format Dataframe of 37 rows and 4 columns
#' \describe{
#'  \item{source}{The name of a pathway interacting}
#'  \item{target}{The name of the pathway the source interacts with}
#'  \item{Weight}{Weight from Combined PPI}
#'  \item{interaction}{The type of interaction}
#' }
#' @source "Produced by BuildPathwayCrosstalkNetwork"
#' @examples
#' head("ex_pathway_crosstalk_network")
"ex_pathway_crosstalk_network"

#' PCN Edge List
#' 
#' The Pathway Crosstalk Network but with direct values for both weight types
#' 
#' @keywords internal
#' 
#' @format Dataframe of 19 rows and 4 columns
#' \describe{
#'  \item{source}{The name of a pathway interacting}
#'  \item{target}{The name of the pathway the source interacts with}
#'  \item{pathway_Jaccard_similarity}{A weight}
#'  \item{PTM_cluster_evidence}{A weight}
#' }
#' @source "Produced by BuildPathwayCrosstalkNetwork"
#' @examples
#' head("ex_PCNedgelist")
"ex_PCNedgelist"

#' Pathways list
#' 
#' A list of pathway names and the genes that make them up
#' 
#' @format list of 9 character vectors
#' \describe{
#'  \item{Pathway name}{Genes in the pathway}
#' }
#' @source "Produced by BuildPathwayCrosstalkNetwork"
#' @examples
#' head("ex_pathways_list")
"ex_pathways_list"


