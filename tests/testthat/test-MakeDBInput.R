test_that("Silent creation of DB_nodes text file", {
  expect_silent(GatherPPIData(ex.gene.cccn, file.path.name = "gm/test-db_nodes.txt"))
})
