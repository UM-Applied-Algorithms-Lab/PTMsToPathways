# Cytoscape connection check
# tryCatch(RCy3::cytoscapePing(), error=function() message("Cannot connect to Cytoscape"))

test_that("filter.edges.0 function gives right answer", {
  
  nodenames <- c('Axon Guidance', 'Lipid and lipoprotein metabolism', 'Validated nuclear estrogen receptor alpha network', 'Vitamin B12 metabolism')
  
  edges_0_output <- filter.edges.0(nodenames, ex_pathway_crosstalk_network)
  dim_edges_0_output <- dim(edges_0_output)
  
  # Are dimensions correct?
  expect_equal(dim_edges_0_output, c(6, 4))
  # Is a random weight correct?
  expect_equal(edges_0_output[4,3], "0.0128205128205128")
  expect_equal(edges_0_output[1,3], "0.3")
  
})

test_that("filter.edges.1 function gives right answer", {
  
  nodenames <- c('SYK p S295', 'NOL8 p S723', 'EGFR p Y1197')  
  
  edges_1_output <- filter.edges.1(nodenames, ex_ptm_cccn_edges)
  dim_edges_1_output <- dim(edges_1_output)
  
  # Are dimensions correct?
  expect_equal(dim_edges_1_output, c(73, 4))
  # Is a random weight correct?
  expect_equal(edges_1_output[50,3], 0.5)
  expect_equal(edges_1_output[10,3], -0.294117647)
  
})

test_that("filter.edges.between function gives right answer", {
  
  nodes1 <- c('KIRREL1', 'EPHA2', 'CTTN')  
  nodes2 <- c('EGFR', 'LCK', 'ERBIN')  
  
  filter_edges_output <- filter.edges.between(nodes1, nodes2, ex_cfn)
  dim_filter_edges_output <- dim(filter_edges_output)
  
  # Are dimensions correct?
  expect_equal(dim_filter_edges_output, c(4, 4))
  # Is a random weight correct?
  expect_equal(filter_edges_output[2, 4], 24.54212, tolerance = 1e-6)
  expect_equal(filter_edges_output[4, 4], 2.4542125, tolerance = 1e-6)
  
})

test_that("connectNodes.all function gives right answer", {
  
  nodes <- c('LCK', 'ERBIN')  
  connectNodes_output <- connectNodes.all(nodes, ig.graph=NULL, edgefile=ex_cfn, newgraph=TRUE)
  dim_connectNodes_output <- dim(connectNodes_output)
  
  # Are dimensions correct?
  expect_equal(dim_connectNodes_output, c(2, 4))
  # Is a random weight correct?
  expect_equal(connectNodes_output[1, 4], 13.260073, tolerance = 1e-6)
  expect_equal(connectNodes_output[2, 4], 13.992674, tolerance = 1e-6)
  
})

test_that("getCyEdgeNames function gives right answer", {
  
  CyEdgeNames_output <- getCyEdgeNames(ex_pathway_crosstalk_network)
  
  # Is the amount of edges correct?
  expect_equal(length(CyEdgeNames_output), 37)

  # Is a random edge name string correct?
  expect_equal(CyEdgeNames_output[[16]], 'RXR/VDR pathway (PTM_cluster_evidence) Validated nuclear estrogen receptor alpha network')
  expect_equal(CyEdgeNames_output[[30]], 'Lipid and lipoprotein metabolism (pathway_Jaccard_similarity) Vitamin B12 metabolism')
  
})

test_that( "strip.cy.goo function gives right answer", {
  
  # THANK YOU MARK FOR PROVIDING THIS!!!
  cytoscape_metadata_string <- "ValidatedObjectAndEditString: validatedObject=ERBB3, editString=null"
  stripped_string <- strip.cy.goo(cytoscape_metadata_string)
  expect_equal(stripped_string, "ERBB3")
  
})

test_that( "cytoscape.graph.PCN.pathways function gives right answer", {
  
  # Conditional. Skip this test if cytoscapePing() errors -> Conclude cytoscape is not open. 
  tryCatch(suppressMessages(
    RCy3::cytoscapePing()), 
    error=function(s) skip('cytoscapePing() failed to locate cytoscape. This is likely because the cytoscape application is not open.')
  )
  
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
  expect_true(length(neighbor_names) == 5)
  
  # Does the Selenium pathway node have specific neighbors?
  exp_neighbors <-  c("Vitamin B12 metabolism", "RXR/VDR pathway")
  expect_all_true(exp_neighbors %in% neighbor_names)
  
})

test_that( "make.gene.data.from.ptmtable function gives right answer", {
  
  # Since the tiny ptm table is already a subset, get genes from there. 
  genes <- rownames(ex_tiny_ptm_table)
  genes <- sapply(genes, function(x) strsplit(x, " ")[[1]][[1]])
  
  gene_data <- make.gene.data.from.ptmtable(genes, ex_small_ptm_table)

  # Are dimensions correct?
  expect_equal(dim(gene_data), c(104, 19))
  
  # Is a random gene-level sum correct?
  expect_equal(gene_data[56,2], 7924800)
  expect_equal(gene_data[103,5], 592825)
  
})

test_that( "make.cytoscape.node.file function gives right answer", {
   # NEEDS A REWORK, JUST VOMMITTING OUT THE INPUT 
  
   #node_file <- make.cytoscape.node.file(ex_ptm_cccn_edges, funckey=PTMsToPathways::function_key, ptmtable=ex_tiny_ptm_table)	
   #sampled_node_file <- node_file[c(340,700),]$`Gene.Name`
   #dim_node_file <- dim(node_file)
   
   ## Are the dimensions correct?
   #expect_equal(dim_node_file, c(740, 9))
   
   ## Are two random genes correct?
   #expect_equal(sampled_node_file[1], "HSP90AA1 p Y627")
   #expect_equal(sampled_node_file[2], "TNK2 p T517")
   
})

test_that( "remove.autophos function gives right answer", {
  # TO DO			
}
)
test_that( "make.genepep.edges function gives right answer", {
  # TO DO			
})

test_that( "get.co.clustered.ptms function gives right answer", {
  # TO DO			
})

test_that( "%w/o% function gives right answer", {
  # TO DO			
})

test_that( "outersect function gives right answer", {
  # TO DO			
})

test_that( "harmonize_cfs function gives right answer", {
  # TO DO			
})

test_that( "mergeEdges function gives right answer", {
  # TO DO			
})

test_that( "ptms_to_cfn function gives right answer", {
  # TO DO			
})

test_that( "setNodeMapping function gives right answer", {
  # TO DO			
})

test_that( "setCorrEdgeAppearance function gives right answer", {
  # TO DO			
})

test_that( "setNodeColorToRatios function gives right answer", {
  # TO DO			
})

test_that( "setNodeColorToRowz function gives right answer", {
  # TO DO			
})

test_that( "setNodeSizeColorIndependently function gives right answer", {
  # TO DO			
})

test_that( "GraphCfn function gives right answer", {
  # TO DO			
})

test_that( "setEdgeWidths function gives right answer", {
  # TO DO			
})

test_that( "SetStandards function gives right answer", {
  # TO DO			
})

test_that( "NodeEdgeKey function gives right answer", {
  # TO DO		
})

