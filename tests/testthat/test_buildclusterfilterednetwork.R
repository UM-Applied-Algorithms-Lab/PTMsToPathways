test_that("BuildClusterFilteredNetwork() gives right answer", {
  
  # Run the function to test
  output <- BuildClusterFilteredNetwork(ex_gene_cccn_edges, ex_stringdb_edges, ex_genemania_edges, NULL)
  
  # Test the combined PPI output
  combined_ppi <- output[[1]]
  
  row_18 <- as.list(combined_ppi[18,])
  weights <- combined_ppi[25:30,4]
  
  exp_row <- list('MAPK1', 'TRAP1', 'experimental_transferred', 14.8351648351648) # Init test
  exp_weights <- c(32.747253, 63.553114, 13.369963,  5.567766, 42.014652, 23.626374)
  
  #expect_setequal(row_18, exp_row)
  expect_setequal(row_18, exp_row)
  expect_equal(weights, exp_weights, tolerance = 1e-6) # Need the tolerance parameter here
  
  
  # Test the CFN output
  cfn <- output[[2]]
  
  row_141 <- as.list(cfn[141,])  # Database interaction type test
  row_93 <- as.list(cfn[93,]) # experimental_transferred interaction type
  row_36 <- as.list(cfn[36,]) # database_transferred interaction type
  targets <- cfn[176:180,2]
  
  exp_row_141 <- list("INPPL1", "LYN", "database", 24.7252747252747)
  exp_row_93 <- list("EIF3B", "RACK1", "experimental_transferred", 64.5787545787546)
  exp_row_36 <- list("CBR1", "CEACAM3", "database_transferred", 7.21611721611722)
  exp_targets <- c("PGAM1", "SHC2", "SOS1", "VAV3", "PPP1CA")
  
  expect_setequal(row_141, exp_row_141)
  expect_setequal(row_93, exp_row_93)
  expect_setequal(row_36, exp_row_36)
  expect_setequal(targets, exp_targets)
  
  
  
  
  
  
  
  
})