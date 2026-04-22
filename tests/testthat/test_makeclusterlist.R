# NOTE THESE USE TINY PTM TABLE

test_that("MakeClusterList() gives right answer", {
    set.seed(88)

    # data to check clusters
    clust1 <- list("RACK1 p T229", "ATP6V1H p Y388", "TNK2 p T829", "IRS2 p Y632")
    clust2 <- list("EIF2S1 p Y147", "ACTG1 p T297; ACTB p T297", "PDLIM5 p T248", "LSR p S365", "DCP1A p Y64", "MAPK13 p T185", "ALK p S1509", "GAREM1 p S700")

    clusterlist_data <- suppressMessages(invisible(MakeClusterList(ex_tiny_ptm_table, keeplength = 2, toolong = 3.5)))
    common_clusters <- clusterlist_data[[1]]
    adj_consensus <- clusterlist_data[[2]]
    ptm_correlation_matrix <- clusterlist_data[[3]]

    # check one of the values of the correlation computation
    expect_equal(ptm_correlation_matrix[58, 33], 0.9428571, tolerance = 1e-6)

    # check that the cluster that contains ATP6V1H p Y388 is correct
    clust1_result <- unname(common_clusters[sapply(common_clusters, function(x) "ATP6V1H p Y388" %in% x)])
    expect_setequal(clust1_result[[1]], clust1)

    # check that the cluster that contains ACTG1 p T297; ACTB p T297 is correct
    clust2_result <- unname(common_clusters[sapply(common_clusters, function(x) "ACTG1 p T297; ACTB p T297" %in% x)])
    expect_setequal(clust2_result[[1]], clust2)

    # check total clusters and total number of PTMs in clusters
    expect_equal(length(common_clusters),  11)
    expect_equal(sum(adj_consensus), 2380)
})
