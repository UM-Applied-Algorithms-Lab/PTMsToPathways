# NOTE THESE USE TINY PTM TABLE

test_that("MakeCorrelationNetwork() gives right answer", {

    # now run MakeCorrelationNetwork
    correlationnetwork_data <- suppressMessages(MakeCorrelationNetwork(ex_adj_consensus, ex_ptm_correlation_matrix))
    ptm_cccn_edges <- correlationnetwork_data[[1]]
    gene_cccn_edges <- correlationnetwork_data[[2]]
    gene_cccn_nodes <- correlationnetwork_data[[3]]

    # check some values in the PTM CCCN edge list
    expect_equal(nrow(ptm_cccn_edges),  5710)
    expect_equal(nrow(gene_cccn_edges),  2279)
    expect_equal(length(gene_cccn_nodes),  390)
    expect_equal(sum(gene_cccn_edges$Weight),  233.3965, tolerance = 1e-6)
    expect_equal(sum(ptm_cccn_edges$Weight),  561.4631, tolerance = 1e-6)

    expect_equal(ptm_cccn_edges[ptm_cccn_edges$source == "PRKCD p S304" & ptm_cccn_edges$target == "AFAP1L2 p S414", "Weight"], 0.771428571, tolerance = 1e-6)
    expect_equal(gene_cccn_edges[gene_cccn_edges$source == "ADAM10" & gene_cccn_edges$target == "CEP89", "Weight"], 0.18885449, tolerance = 1e-6)
})