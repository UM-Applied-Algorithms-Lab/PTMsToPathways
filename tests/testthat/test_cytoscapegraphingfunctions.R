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
  cytoscape.graph.PCN.pathways(ex_pathway_crosstalk_network, "EXAMPLE DATA PCN")
  
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
  
  # Example data does not contain self loops. Need custom
  source <- c("EPHA2", "CBL", "CBL", "PIK3C2B", "DDX5")            
  target <- c("AHNAK", "SYTL1", "CBL", "KRT7", "EPS8")
  # Does not affect remove.autophos but copying ex_cfn
  interaction <- c("database_transferred", "database_transferred", "database", "database_transferred", "experimental_transferred") 
  Weight <- c(0.1090909, 0.2340426, 2.4615385, 0.4166667, 1.5333333)
  
  custom_data <- data.frame(source=source, target=target, interaction=interaction, Weight=Weight)
  
  removed_data <- remove.autophos(custom_data)
  
  # Are the dimensions correct?
  dim_data <- dim(removed_data)
  expect_equal(dim_data, c(4, 4))
  
  # Is there exactly 1 row containing the "CBL" gene?
  count <- length(which(removed_data$source == "CBL" | removed_data$target == "CBL"))
  expect_equal(count, 1)
  
})

test_that( "make.genepep.edges function gives right answer", {
  
  genepep <- make.genepep.edges(ex_ptm_cccn_edges)
  
  # Are dimensions correct?
  expect_equal(dim(genepep), c(740, 4))
  
  # Does CTTN have proper representation?
  CTTN_subset <- genepep[genepep$source == "CTTN",]
  expect_equal(dim(CTTN_subset), c(16, 4))
  
  # Is row 200 correct?
  row <- data.frame(source="MET", target="MET p S1236", Weight=0.25, interaction="peptide", row.names="MET p S1236")
  expect_true(identical(genepep[200,], row))
  
})

test_that( "get.co.clustered.ptms function gives right answer", {
  
  coclustered_ptms <- get.co.clustered.ptms(ex_cfn, ex_ptm_cccn_edges, ex_tiny_ptm_table)	
  
  # Are dimensions correct?
  expect_equal(dim(coclustered_ptms), c(280, 4))
  
  # Are rows 1, 195, 200 & 280 correct?
  row1 <- data.frame(source="ABL1", target="IRS2", interaction="experimental_transferred", Weight=3.589744, row.names="1")
  expect_equal(coclustered_ptms[1,], row1, tolerance = 1e-6)
  
  row195 <- data.frame(source="EPHA2", target="ACP1", interaction="Physical Interactions", Weight=18.30485, row.names=197)
  expect_equal(coclustered_ptms[195,], row195, tolerance = 1e-6)
  
  row200 <- data.frame(source="G6PD p Y202", target="PIK3R1 p Y467", interaction="positive correlation", Weight=0.8101135, row.names=680)
  expect_equal(coclustered_ptms[200,], row200, tolerance = 1e-6)
  
  row280 <- data.frame(source="TJP2", target="TJP2 p Y261", interaction="peptide", Weight=0.25, row.names="TJP2 p Y261")
  expect_equal(coclustered_ptms[280,], row280, tolerance = 1e-6)
  
})

test_that( "%w/o% function gives right answer", {
  # Functionality test
  genes <- c("SLC25A5", "EPS8", "EPHA2", "AHNAK", "PTK2")
  peptide <- c("EPS8")
  expect_false("EPS8" %in% (genes %w/o% peptide))
})

test_that( "outersect function gives right answer", {
  # Functionality test
  genes <- c("SLC25A5", "EPS8", "EPHA2", "AHNAK", "PTK2")
  peptides <- c("EPS8", "ANKS1A")
  
  outer <- outersect(genes, peptides)
  
  expect_false("EPS8" %in% outer)
  expect_true("ANKS1A" %in% outer)
})

test_that( "harmonize_cfs function gives right answer", {
  # TO DO. SUGGESTS A DEPENDANCY FUNCTION NODE.FILE WHICH IS NOT FULLY UNDERSTOOD
})

test_that( "mergeEdges function gives right answer", {
  
  # Stack edgefiles and fake data to create "parallel edges"
  cfn_sample <- ex_cfn[c(2, 119, 110, 112, 113),]
  gene_cccn_sample <- ex_gene_cccn_edges[c(4, 5, 710, 687, 2203), ]
  fake_directed <- data.frame(
    source=rep("GAREM1",2),
    target=rep("NECTIN4",2),
    Weight=c(0.1, -0.2),
    interaction=c("PHOSPHORYLATION", "catalysis-precedes")
  ) 
  data <- rbind(cfn_sample, gene_cccn_sample, fake_directed)
  
  merged <- mergeEdges(data)
  
  # Where parallel edges removed?
  expect_equal(dim(merged), c(9,4))
  
  # Test merging directed, undirected, and unmerged edges
  directed <- c("GAREM1", "NECTIN4", "0.1", "PHOSPHORYLATION [PHOSPHORYLATION | catalysis-precedes]")
  row1 <- unlist(merged[1,], use.names=FALSE)
  expect_equal(row1, directed)
  
  undirected <- c("ADAM10", "ANXA2", "2.6007326007326", "correlation | experimental_transferred")
  row3 <- unlist(merged[3,], use.names=FALSE)
  expect_equal(row3, undirected)
  
  unmerged <- c("FYN", "IRS2", "3.58974358974359", "experimental_transferred")
  row5 <- unlist(merged[5,], use.names=FALSE)
  expect_equal(row5, unmerged)
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

