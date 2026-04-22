# THESE USE DATA GENERATED FROM THE SMALL PTM TABLE 

test_that("BuildPathwayCrosstalkNetwork() gives right answer", {
  
  output <- suppressMessages(BuildPathwayCrosstalkNetwork(ex_common_clusters, ex_bioplanet, createfile = FALSE))
  
  pathway_crosstalk_network <- output[[1]]
  
  row_7 <- as.list(pathway_crosstalk_network[7,])
  row_25 <- as.list(pathway_crosstalk_network[25,])
  
  exp_row_7 <- list("Lipid and lipoprotein metabolism", "Vitamin B12 metabolism", 0.3, "PTM_cluster_evidence")
  exp_row_25 <- list("ERBB signaling pathway", "Validated nuclear estrogen receptor alpha network", 0.025974025974026, "pathway_Jaccard_similarity")
  
  expect_setequal(row_7, exp_row_7)
  expect_setequal(row_25, exp_row_25)
  
  
  
  PCNedgelist <- output[[2]]
  
  row_10 <- PCNedgelist[10,]
  row_16 <- PCNedgelist[16,]
  jaccard_sims <- PCNedgelist[4:8,3]
  PTM_ev <- PCNedgelist[10:19,4] # Should be all zeros
  
  exp_row_10 <- list("Axon guidance", "Class A GPCRs (rhodopsin-like)", 0.00173310225303293, 0)
  exp_row_16 <- list("RXR/VDR pathway", "Validated nuclear estrogen receptor alpha network", 0.0344827586206897, 0)
  exp_jaccard_sims <- c(0.01391304, 0.53424658, 0.01104972, 0.02075472, 0.02597403)
  exp_PTM_ev <- numeric(10)
  
  expect_setequal(row_10, exp_row_10)
  expect_setequal(row_16, exp_row_16)
  expect_equal(jaccard_sims, exp_jaccard_sims, tolerance = 1e-6)
  expect_setequal(PTM_ev, exp_PTM_ev)
  
  
  
  pathways_list <- output[[3]]
  
  expect_true("CRP" %in% pathways_list$'Selenium pathway')
  expect_true("FAM120B" %in% pathways_list$'RXR/VDR pathway')
  expect_false("ALB" %in% pathways_list$'Mitochondrial fatty acid beta-oxidation')
   
  
})