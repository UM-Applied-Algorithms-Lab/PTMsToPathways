BuildPPINetwork(ex.stringdb.edges, ex.gm.network, db.filepaths = c(), ppi.network.name = "test.ppi.network.123.123")

test_that("Unique entries", {
  test.name <- "MY018A"
  expect_equal(length(test.ppi.network.123.123[which(test.ppi.network.123.123$Gene.1 == test.name), ]$Gene.2), length(unique(test.ppi.network.123.123[which(test.ppi.network.123.123$Gene.1 == test.name), ]$Gene.2)))
  test.name <- "LCK"
  expect_equal(length(test.ppi.network.123.123[which(test.ppi.network.123.123$Gene.1 == test.name), ]$Gene.2), length(unique(test.ppi.network.123.123[which(test.ppi.network.123.123$Gene.1 == test.name), ]$Gene.2)))
  test.name <- 	"ABLIM1"
  expect_equal(length(test.ppi.network.123.123[which(test.ppi.network.123.123$Gene.1 == test.name), ]$Gene.2), length(unique(test.ppi.network.123.123[which(test.ppi.network.123.123$Gene.1 == test.name), ]$Gene.2)))
})

test_that("Correct range of values"{
  expect_equal(max(test.ppi.network.123.123$STRINGdb.combined_score, na.rm = TRUE), 1)
  expect_equal(max(test.ppi.network.123.123$GM.weights, na.rm = TRUE), 1)
})

test_that("No input error", {
  expect_error(BuildPPINetwork(ppi.network.name = "test.ppi.network.321.321"), "No data input.")
})

rm(test.ppi.network.123.123)
