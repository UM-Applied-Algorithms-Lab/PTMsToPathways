ProcessGMEdgeFile(gm/gm_edgetable.csv, gm/gm_nodetable.csv, gm/db_nodes.txt, gm.network.name = "test.gm.network.123.123")

testthat("Interactions are correct", {
  expect_equal(length(unique(test.gm.network.123.123$interaction)), 2)
  expect_contains(unique(test.gm.network.123.123$interaction), c("Physical Interactions", "Pathway"))
})
