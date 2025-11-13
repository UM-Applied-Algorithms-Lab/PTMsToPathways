test_that("MakeCorrelationNetwork() gives right answer", {
    # first we have to run MakeClusterList to get the inputs for MakeCorrelationNetwork
    set.seed(88)
    clusterlist.data <- MakeClusterList(ex_small_ptm_table, keeplength = 2, toolong = 3.5)
    common.clusters <- clusterlist.data[[1]]
    adj.consensus <- clusterlist.data[[2]]
    ptm.correlation.matrix <- clusterlist.data[[3]]

    # now run MakeCorrelationNetwork
    correlationnetwork.data <- MakeCorrelationNetwork(adj.consensus, ptm.correlation.matrix)
    ptm.cccn.edges <- correlationnetwork.data[[1]]
    gene.cccn.edges <- correlationnetwork.data[[2]]
    gene.cccn.nodes <- correlationnetwork.data[[3]]

    # check some values in the PTM CCCN edge list
    expect_equal(nrow(ptm.cccn.edges),  5853)
    expect_equal(nrow(gene.cccn.edges),  2353)
    expect_equal(length(gene.cccn.nodes),  381)
    expect_equal(sum(gene.cccn.edges$Weight),  111.24196, tolerance = 1e-6)
    expect_equal(sum(ptm.cccn.edges$Weight),  328.5784, tolerance = 1e-6)

    expect_equal(ptm.cccn.edges[ptm.cccn.edges$source == "PRKCD p S304" & ptm.cccn.edges$target == "ZC3H18 p S492", "Weight"], -0.2142857, tolerance = 1e-6)
    expect_equal(gene.cccn.edges[gene.cccn.edges$source == "AHNAK" & gene.cccn.edges$target == "GPRC5A", "Weight"], 0.80229987, tolerance = 1e-6)
})