test_that("GetGeneMANIA.edges() gives right answer", {
  # set.seed(88) # Perhaps unnecessary
  
  path <- system.file('extdata/ex_genemania_interactions.txt', package='PTMsToPathways') # Accesses the path to this file even run on github or devtools::test
  genemania_edges <- GetGeneMANIA.edges(path, ex_gene_cccn_nodes) # Run function and filter data
  col_1 <- as.list(genemania_edges[,1])
  row_2 <- as.list(genemania_edges[2,])
  
  # Expected values
  exp_col <- list("EPHA2", "EPHA2", "ARHGAP35", "ARHGAP35", "EPHA2") # Init test
  exp_row <- list('EPHA2', 'ACP1', 'Pathway', 0.2171439) # Init test
  
  # Run tests
  expect_setequal(col_1, exp_col)
  expect_setequal(row_2, exp_row)
})