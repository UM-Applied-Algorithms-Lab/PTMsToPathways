test_that("Silent creation of DB_nodes text file", {
  expect_silent(MakeDBInput(ex.gene.cccn, file.path.name = "gm/test-db_nodes.txt"))
})

file.remove("gm/test-db_nodes.txt")
