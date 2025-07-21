 test_that("Not connected to cytoscape", {
  expect_error(GraphCfn(ex.cfn, ex.ptmtable), "Could not connect to Cytoscape. Please ensure the Cytoscape app is open and running. Wait until fully loaded, then run RCy3::cytoscapePing() to verify connection.")
 })
