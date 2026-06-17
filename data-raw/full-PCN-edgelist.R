# this follows the process in the Creating Networks vignette, but with the full ptm table.
clusterlist.data <- MakeClusterList(ex_full_ptm_table,
                                    keeplength = 2, toolong = 3.5)
common.clusters <- clusterlist.data[[1]]
adj.consensus.matrix <- clusterlist.data[[2]]
ptm.correlation.matrix <- clusterlist.data[[3]]

CCCN.data <- MakeCorrelationNetwork(adj.consensus.matrix,
                                    ptm.correlation.matrix)

ptm.cccn.edges <- CCCN.data[[1]]
gene.cccn.edges <- CCCN.data[[2]]
gene.cccn.nodes <- CCCN.data[[3]]

# stringdb.edges <- GetSTRINGdb.edges(gene.cccn.edges, gene.cccn.nodes)
stringdb.edges <- GetSTRINGdb.edges(gene.cccn.edges, gene.cccn.nodes,
                   local = TRUE, string.local.path = "~/Downloads/string_hs_hugo.tsv")




usethis::use_data(ex_pathways_list, overwrite = TRUE)