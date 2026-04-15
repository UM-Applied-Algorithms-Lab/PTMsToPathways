# NOTE THESE USE TINY PTM TABLE

test_that("MakeCorrelationNetwork() gives right answer", {
    # first we have to run MakeClusterList to get the inputs for MakeCorrelationNetwork
    set.seed(88)
    clusterlist.data <- MakeClusterList(ex_tiny_ptm_table, keeplength = 2, toolong = 3.5)
    common.clusters <- clusterlist.data[[1]]
    adj.consensus <- clusterlist.data[[2]]
    ptm.correlation.matrix <- clusterlist.data[[3]]

    # now run MakeCorrelationNetwork
    correlationnetwork.data <- MakeCorrelationNetwork(adj.consensus, ptm.correlation.matrix)
    ptm.cccn.edges <- correlationnetwork.data[[1]]
    gene.cccn.edges <- correlationnetwork.data[[2]]
    gene.cccn.nodes <- correlationnetwork.data[[3]]

    # check some values in the PTM CCCN edge list
    expect_equal(nrow(ptm.cccn.edges),  1116)
    expect_equal(nrow(gene.cccn.edges),  473)
    expect_equal(length(gene.cccn.nodes),  96)
    expect_equal(sum(gene.cccn.edges$Weight),  18.94286, tolerance = 1e-6)
    expect_equal(sum(ptm.cccn.edges$Weight),  76.24286, tolerance = 1e-6)

    expect_equal(ptm.cccn.edges[ptm.cccn.edges$source == "RBM12B p Y326" & ptm.cccn.edges$target == "SRCIN1 p Y264", "Weight"], 0.6785714, tolerance = 1e-6)
    expect_equal(gene.cccn.edges[gene.cccn.edges$source == "CDK1" & gene.cccn.edges$target == "HSP90AB4P", "Weight"], -0.2142857, tolerance = 1e-6)
})