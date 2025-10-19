test_that("MakeClusterList() gives right answer", {
    set.seed(25)
    clusterlist.data <- MakeClusterList(ex_small_ptm_table, keeplength = 2, toolong = 3.5)
    common.clusters <- clusterlist.data[[1]]
    adj.consensus <- clusterlist.data[[2]]
    ptm.correlation.matrix <- clusterlist.data[[3]]
    expect_equal(ptm.correlation.matrix[200, 5], 0.3212121, tolerance = 1e-6)
    expect_equal(common.clusters[[4]][1], "BCAR3 p Y212")
    expect_equal(length(common.clusters),  132)
    expect_equal(sum(adj.consensus), 14664)
})