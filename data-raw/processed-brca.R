# Process the BRCA phosphoproteomics data for use in the vignette
file_path <- system.file("extdata", "PhosphoDiscoData_mmc9.txt", package = "PTMsToPathways")
newphos <- utils::read.table(file_path, header = TRUE,
                               stringsAsFactors = FALSE, sep = "\t", comment.char = "#",
                               na.strings = "", quote = "", fill = TRUE)
 newphos$Amino.Acid <- sapply(newphos$variable_sites_names, function(x) substring (x, 1, 1))
 newphos$Site <- trimws(substring(newphos$variable_sites_names, 2))
 newphos$Site <- sub("[a-z]$", "", newphos$Site)
  newphos$Peptide.Name <- mapply(
   name.peptide, genes = newphos$gene_symbol,
   sites =  newphos$Site, aa = newphos$Amino.Acid)
phosdata <- newphos[, 3:ncol(newphos), ]
rownames(phosdata) <- newphos$Peptide.Name
phosdata <- phosdata[, !(names(phosdata) %in% c("gene_symbol", "variable_sites_names", "Amino.Acid", "Site", "Peptide.Name"))]
ptmtable <- phosdata
set.seed(88)
brca_clusterlist_data <- MakeClusterList(ptmtable,
                                    keeplength = 3, toolong = 3.5)
brca_CCCN_data <- MakeCorrelationNetwork(adj.consensus.matrix,
                                    ptm.correlation.matrix)

usethis::use_data(brca_clusterlist_data, overwrite = TRUE)
usethis::use_data(brca_CCCN_data, overwrite = TRUE)

# Get stringDB data from local file.
# brca_CCCN_data is the data just created above
gene.cccn.edges <- brca_CCCN_data[[2]]
gene.cccn.nodes <- brca_CCCN_data[[3]]
# this local file path will need to be changed
string_db_filepath <- "~/Downloads/string_hs_hugo.tsv"
BRCA_stringdb.edges <- GetSTRINGdb.edges(gene.cccn.edges,
                              gene.cccn.nodes,
                              local                  = TRUE,
                              string.local.path      = string_db_filepath
)
usethis::use_data(BRCA_stringdb.edges, overwrite = TRUE)

# Get GeneMania data from local file.
genemania_db_filepath <- "~/Downloads/hs_interactions_hugo.tsv"
BRCA_genemania.edges <- GetGeneMANIA.edges (gm.all.edges.path,
                                gene.cccn.nodes,
                                local                = TRUE,
                                genemania.local.path = genemania_db_filepath,
                                gm.interaction.types = c("Pathway", "Physical Interactions", "Predicted"))
usethis::use_data(BRCA_genemania.edges, overwrite = TRUE)

