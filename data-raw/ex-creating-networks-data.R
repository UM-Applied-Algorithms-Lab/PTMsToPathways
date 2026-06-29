# create the full example data as in the getting started vignette/
# The randomness inherent in the clustering procedure, and the MakeClusterList parameters keep length
# and toolong, make it so that the data generated here may be slightly different than the existing example
# data, which would break tests. So we don't overwrite the existing data, but provide the code for reference.

set.seed(88)
clusterlist.data <- MakeClusterList(ex_small_ptm_table,
                                    keeplength = 2, toolong = 3.5)

ex_common_clusters <- clusterlist.data[[1]]
ex_adj_consensus_matrix <- clusterlist.data[[2]]
ex_ptm_correlation_matrix <- clusterlist.data[[3]]

#usethis::use_data(ex_common_clusters, overwrite = TRUE)
#usethis::use_data(ex_adj_consensus_matrix, overwrite = TRUE)
#usethis::use_data(ex_ptm_correlation_matrix, overwrite = TRUE)

CCCN.data <- MakeCorrelationNetwork(ex_adj_consensus_matrix,
                                    ex_ptm_correlation_matrix)

ex_ptm_cccn_edges <- CCCN.data[[1]]
ex_gene_cccn_edges <- CCCN.data[[2]]
ex_gene_cccn_nodes <- CCCN.data[[3]]

#usethis::use_data(ex_ptm_cccn_edges, overwrite = TRUE)
#usethis::use_data(ex_gene_cccn_edges, overwrite = TRUE)
#usethis::use_data(ex_gene_cccn_nodes, overwrite = TRUE)

ex_pathways_list <- ReadBioplanetFile(system.file("extdata", "pathway.csv", package = "PTMsToPathways"))

usethis::use_data(ex_pathways_list, overwrite = TRUE)

