# NOTE THESE USE TINY PTM TABLE

test_that("MakeCorrelationNetwork() gives right answer", {
    # first we have to run MakeClusterList to get the inputs for MakeCorrelationNetwork
    set.seed(88)
    clusterlist_data <- MakeClusterList(ex_tiny_ptm_table, keeplength = 2, toolong = 3.5)
    common_clusters <- clusterlist_data[[1]]
    adj_consensus <- clusterlist_data[[2]]
    ptm_correlation_matrix <- clusterlist_data[[3]]

    # now run MakeCorrelationNetwork
    correlationnetwork.data <- MakeCorrelationNetwork(adj.consensus, ptm.correlation.matrix)
    ptm_cccn_edges <- correlationnetwork_data[[1]]
    gene_cccn_edges <- correlationnetwork_data[[2]]
    gene_cccn_nodes <- correlationnetwork_data[[3]]

    # check some values in the PTM CCCN edge list
    expect_equal(nrow(ptm_cccn_edges),  1116)
    expect_equal(nrow(gene_cccn_edges),  473)
    expect_equal(length(gene_cccn_edges),  96)
    expect_equal(sum(gene_cccn_edges$Weight),  18.94286, tolerance = 1e-6)
    expect_equal(sum(ptm_cccn_edges$Weight),  76.24286, tolerance = 1e-6)

    expect_equal(ptm_cccn_edges[ptm_cccn_edges$source == "RBM12B p Y326" & ptm_cccn_edges$target == "SRCIN1 p Y264", "Weight"], 0.6785714, tolerance = 1e-6)
    expect_equal(gene_cccn_edges[gene_cccn_edges$source == "CDK1" & gene_cccn_edges$target == "HSP90AB4P", "Weight"], -0.2142857, tolerance = 1e-6)
})