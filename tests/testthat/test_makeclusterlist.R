test_that("MakeClusterList() gives right answer", {
    set.seed(25)

    # data to check clusters
    clust1 <- list(c("EML4 p Y453", "GLUL p Y180", "PDLIM5 p Y251", "CD99L2 p Y243", "RDH10 p Y126", "GFPT1 p Y553", "CRK p Y251"))
    clust2 <- list(c("SDC1 p Y309", "ARHGAP32 p Y1537", "ALK p Y1096", "APLP2 p Y755", "TIAL1 p Y140", "SNRPN p Y15; SNRPB p Y15"))

    clusterlist.data <- MakeClusterList(ex_small_ptm_table, keeplength = 2, toolong = 3.5)
    common.clusters <- clusterlist.data[[1]]
    adj.consensus <- clusterlist.data[[2]]
    ptm.correlation.matrix <- clusterlist.data[[3]]

    # check one of the values of the correlation computation
    expect_equal(ptm.correlation.matrix[200, 5], 0.3212121, tolerance = 1e-6)
    
    # check that the cluster that contains GLUL p Y180 is correct
    clust1_result <- unname(common.clusters[sapply(common.clusters, function(x) "GLUL p Y180" %in% x)])
    setequal(clust1_result, clust1)

    # check that the cluster that contains SNRPN p Y15; SNRPB p Y15 is correct
    clust2_result <- unname(common.clusters[sapply(common.clusters, function(x) "SNRPN p Y15; SNRPB p Y15" %in% x)])
    setequal(clust2_result, clust2)

    # check total clusters and total number of PTMs in clusters
    expect_equal(length(common.clusters),  132)
    expect_equal(sum(adj.consensus), 14664)
})