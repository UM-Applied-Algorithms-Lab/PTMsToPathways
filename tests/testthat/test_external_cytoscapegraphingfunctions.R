# For testing functions in cytoscapegraphing which require cytoscape open

# Conditional. Skip all tests if cytoscapePing() returns an error class -> Conclude cytoscape is not open. 
testthat::skip_if( inherits(try(suppressMessages(RCy3::cytoscapePing()), silent=TRUE), what="try-error"), message="Could not ping Cytoscape. Likely because the application is not open.")

test_that( "NodeEdgeKey function gives right answer", {
  
  expect_no_error(suppressMessages(NodeEdgeKey()))
  
})

test_that( "cytoscape.graph.PCN.pathways function gives right answer", {
  
  # Takes a VERY long time
  suppressMessages(cytoscape.graph.PCN.pathways(ex_pathway_crosstalk_network, "EXAMPLE DATA PCN"))
  
  # Does the Selenium pathway node exist?
  RCy3::selectNodes('Selenium pathway','name')
  node <- RCy3::getSelectedNodes()
  expect_equal(node, c("Selenium pathway"))
  
  # Get the neighbors of the node
  RCy3::selectFirstNeighbors()
  neighbor_names <- RCy3::getSelectedNodes()
  
  # Does the Selenium pathway node have the correct amount of neighbors?
  # I believe this test will be different based on if graph_cfn() has run before
  # expect_equal(length(neighbor_names), 5)
  
  # Does the Selenium pathway node have specific neighbors?
  exp_neighbors <-c("Vitamin B12 metabolism", "RXR/VDR pathway")
  expect_all_true(exp_neighbors %in% neighbor_names)
  
})

# Tests after this one require some graph to be in cytoscape. 
# For test repeatability, ensure that last graph is the CFN
test_that( "GraphCfn function gives right answer", {
  
  # Crop this dataset?
  # Why do we need to manually assign nodes here but not PCN?
  nodes <- data.frame(id=unique(c(ex_cfn$source, ex_cfn$target)))
  # Mark's code wants a nodetype column - Why?
  # nodeType magically makes everything work 
  # nodes["nodeType"] <- "gene"
  expect_no_error(suppressMessages(GraphCfn(ex_cfn, nodes)))
  
})

# All tests below here need some graph in cytoscape
# Not sure what they should run on, so test on CFN for now
# Since many of these functions call predictable RCy3 methods, test for non-errorness
test_that( "setNodeMapping function gives right answer", {
  
  expect_no_error(suppressMessages(setNodeMapping())) 
  
})

test_that( "setCorrEdgeAppearance function gives right answer", {
  
  expect_no_error(suppressMessages(setCorrEdgeAppearance()))
  
})

test_that( "setNodeColorToRatios function gives right answer", {
  
  expect_no_error(suppressMessages(setNodeColorToRatios("SUID")))
  
})

test_that( "setNodeColorToRowz function gives right answer", {
  
  expect_no_error(suppressMessages(setNodeColorToRowz("SUID")))
  
})

test_that( "setNodeSizeColorIndependently function gives right answer", {
  
  expect_no_error(suppressMessages(setNodeSizeColorIndependently(sizeplotcol="SUID", colorplotcol="SUID", ratio=FALSE)))
  
})

test_that( "setEdgeWidths function gives right answer", {
  
  expect_no_error(suppressMessages(setEdgeWidths(ffactor=5)))			

})

test_that( "SetStandards function gives right answer", {
  
  # Doesn't send messages
  expect_no_error(SetStandards("default"))

})
