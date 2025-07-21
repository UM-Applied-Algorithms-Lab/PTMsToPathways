test_that("Not connected to cytoscape", {
   err <- tryCatch(
     GraphCfn(ex.cfn, ex.ptmtable),
     error = function(e) e
   )
   expect_equal(err$message, "Could not connect to Cytoscape. Please ensure the Cytoscape app is open and running. Wait until fully loaded, then run RCy3::cytoscapePing() to verify connection.")
   })
