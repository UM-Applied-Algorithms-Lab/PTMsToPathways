GetSTRINGdb(ex.gene.cccn, stringdb.name = "test.stringdb.edges.123.123", nodenames.name = "test.nodenames.123.123")

test_that("Column names are correct", {
  expect_equal(colnames(test.stringdb.edges.123.123[1]), "Gene.1")
  expect_equal(colnames(test.stringdb.edges.123.123[2]), "Gene.2")
  expect_equal(colnames(test.stringdb.edges.123.123[3]), "Interaction")
  expect_equal(colnames(test.stringdb.edges.123.123[4]), "STRINGdb.combined_score")
})

test_that("Nodenames are unique", {
  expect_equal(length(test.nodenames.123.123$Gene.Names), length(unique((test.nodenames.123.123))))
})

rm(test.stringdb.edges.123.123)
rm(test.nodenames.123.123)
