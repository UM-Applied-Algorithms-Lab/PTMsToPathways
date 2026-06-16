# THESE USE DATA GENERATED FROM THE SMALL PTM TABLE 

# Get data from package
gene_cccn_edges <- PTMsToPathways::ex_gene_cccn_edges
gene_cccn_nodes <- PTMsToPathways::ex_gene_cccn_nodes

test_that("GetGeneMANIA.edges() gives right answer", {
  
  path <- system.file('extdata/ex_genemania_interactions.txt', package='PTMsToPathways') # Accesses the path to this file even run on github or devtools::test
  genemania_edges <- GetGeneMANIA.edges(path, gene_cccn_nodes) # Run function and filter data
  col_1 <- as.list(genemania_edges[,1])
  row_2 <- as.list(genemania_edges[2,])
  
  # Expected values
  exp_col <- list("EPHA2", "EPHA2", "ARHGAP35", "ARHGAP35", "EPHA2") # Init test
  exp_row <- list('EPHA2', 'ACP1', 'Pathway', 0.2171439) # Init test
  
  # Run tests
  expect_setequal(col_1, exp_col)
  expect_setequal(row_2, exp_row)
})

test_that("GetSTRINGdb.edges() gives right answer with local file", {
  
  path <- system.file('extdata/small_string_hs_hugo.tsv', package='PTMsToPathways')
  stringdb_edges <- suppressMessages(GetSTRINGdb.edges(gene_cccn_edges, gene_cccn_nodes, local = TRUE, string.local.path = path))
  
  # Expected values
  exp_row_100 <- data.frame(source = "PLEKHA7", target = "EPB41L2", interaction = "experimental", Weight = 292) 
  
  # Run tests
  expect_equal(stringdb_edges[100, ], exp_row_100, ignore_attr = TRUE)
  expect_equal(nrow(stringdb_edges), 166)
})

test_that("GetKinsub.edges() gives right answer", {

  path <- system.file('extdata/Kinase_Substrate_Dataset.txt', package='PTMsToPathways')
  kinsub_edges <- GetKinsub.edges(path, gene_cccn_nodes)
  
  # Expected values
  exp_row_1 <- data.frame(source = "EGFR", target = "PLCG1", interaction = "pp", Weight = 1) 
  
  # Run tests
  expect_equal(kinsub_edges[311, ], exp_row_1, ignore_attr = TRUE)
  expect_equal(nrow(kinsub_edges), 334)
})