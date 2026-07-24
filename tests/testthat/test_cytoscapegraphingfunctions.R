test_that("filter.edges.0 function gives right answer", {
  
  nodenames <- c('Axon Guidance', 'Lipid and lipoprotein metabolism', 'Validated nuclear estrogen receptor alpha network', 'Vitamin B12 metabolism')
  
  filtered <- filter.edges.0(nodenames, ex_pathway_crosstalk_network)
  dim_filtered <- dim(filtered)
  
  # Are dimensions correct?
  expect_equal(dim_filtered, c(6, 4))
  # Is a random weight correct?
  expect_equal(filtered[4,3], "0.0128205128205128")
  expect_equal(filtered[1,3], "0.3")
  
})

test_that("filter.edges.1 function gives right answer", {
  
  nodenames <- c('SYK p S295', 'NOL8 p S723', 'EGFR p Y1197')  
  
  filtered <- filter.edges.1(nodenames, ex_ptm_cccn_edges)
  dim_filtered <- dim(filtered)
  
  # Are dimensions correct?
  expect_equal(dim_filtered, c(73, 4))
  # Is a random weight correct?
  expect_equal(filtered[50,3], 0.5)
  expect_equal(filtered[10,3], -0.294117647)
  
})

test_that("filter.edges.between function gives right answer", {
  
  nodes1 <- c('KIRREL1', 'EPHA2', 'CTTN')  
  nodes2 <- c('EGFR', 'LCK', 'ERBIN')  
  filtered <- filter.edges.between(nodes1, nodes2, ex_cfn)
  dim_filtered <- dim(filtered)
  
  # Are dimensions correct?
  expect_equal(dim_filtered, c(4, 4))
  # Is a random weight correct?
  expect_equal(filtered[2, 4], 2.5)
  expect_equal(filtered[4, 4], -0.3)
  
})

