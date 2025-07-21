test_that("Not connected to cytoscape", {
  expect_error(RCy3::cytoscapePing(), "object 'res' not found")
})

rm(notebookIsRunning)
rm(runningRemote)
