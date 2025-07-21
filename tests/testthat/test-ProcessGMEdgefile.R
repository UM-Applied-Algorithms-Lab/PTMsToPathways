test_that("Interactions are correct", {
  ProcessGMEdgefile("gm/gm_edgetable.csv", "gm/gm_nodetable.csv", "gm/db_nodes.txt", gm.network.name = "test.gm.network.123.123") # run function (note objects deleted automatically internally)
  expect_equal(length(unique(test.gm.network.123.123$interaction)), 2)                                                            # check how many interactions there are
  expect_contains(unique(test.gm.network.123.123$interaction), c("Physical Interactions", "Pathway"))                             # check interaction types
})
