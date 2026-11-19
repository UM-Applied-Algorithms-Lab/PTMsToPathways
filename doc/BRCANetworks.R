## ----setup, echo = FALSE------------------------------------------------------

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = ">>",
  fig.align = "center",
  fig.path = "plots/",
  fig.width = 8,
  fig.height = 6,
  out.width = "100%",
  results = "hold"
)

## ----label=library, eval = TRUE-----------------------------------------------
library(PTMsToPathways)

## ----label=readBRCA, eval = TRUE----------------------------------------------
file_path <- system.file("extdata", "PhosphoDiscoData_mmc9.txt",
                         package = "PTMsToPathways")
newphos <- utils::read.table(file_path, header = TRUE,
                             stringsAsFactors = FALSE, sep = "\t",
                             comment.char = "#", na.strings = "",
                             quote = "", fill = TRUE)

## ----label=dimNewPhos, eval = TRUE--------------------------------------------
dim(newphos)

## ----label=viewNewPhos, eval = TRUE-------------------------------------------
head(newphos[, 1:5])

## ----label=proccessTwoCol, eval = TRUE----------------------------------------
 newphos$Amino.Acid <- sapply(newphos$variable_sites_names,
                              function(x) substring (x, 1, 1))
 newphos$Site <- trimws(substring(newphos$variable_sites_names, 2))
 newphos$Site <- sub("[a-z]$", "", newphos$Site)
 head(newphos[, c("gene_symbol", "variable_sites_names", "Amino.Acid", "Site")])

## ----label=createPeptideNames, eval = TRUE------------------------------------
 newphos$Peptide.Name <- mapply(
   name.peptide, genes = newphos$gene_symbol,
   sites =  newphos$Site, aa = newphos$Amino.Acid)

## ----label=createPTMtable, eval = TRUE----------------------------------------
phosdata <- newphos[, 3:ncol(newphos), ]
rownames(phosdata) <- newphos$Peptide.Name
phosdata <- phosdata[, !(names(phosdata) %in%
                           c("gene_symbol", "variable_sites_names",
                             "Amino.Acid", "Site", "Peptide.Name"))]
ptmtable <- phosdata
head(ptmtable[, 1:5])

## ----label=createClusters, eval = FALSE---------------------------------------
# set.seed(88)
# clusterlist.data <- MakeClusterList(ptmtable,
#                                     keeplength = 3, toolong = 3.5)
# 

## ----label=loadResults, eval = TRUE-------------------------------------------
clusterlist.data <- brca_clusterlist_data
CCCN.data <- brca_CCCN_data

## ----label=listElements, eval = TRUE------------------------------------------
common.clusters <- clusterlist.data[[1]]
adj.consensus.matrix <- clusterlist.data[[2]]
ptm.correlation.matrix <- clusterlist.data[[3]]

## ----label=crreatePTMandGeneCCCN, eval = TRUE---------------------------------
CCCN.data <- MakeCorrelationNetwork(adj.consensus.matrix,
                                    ptm.correlation.matrix)
ptm.cccn.edges <- CCCN.data[[1]]
gene.cccn.edges <- CCCN.data[[2]]
gene.cccn.nodes <- CCCN.data[[3]]

## ----label=lenCCCN, eval = TRUE-----------------------------------------------
length(common.clusters)

## ----label=trimCCCN, eval = TRUE----------------------------------------------
cclength <- sapply(common.clusters, length)
common.clusters4 <- common.clusters[which(cclength>3)]
length(common.clusters4)

## ----label=heatMap, eval = TRUE, echo = FALSE---------------------------------
fig_dir <- knitr::opts_current$get("fig.path")

## ----label=heatMapVisible, eval = TRUE----------------------------------------
dir.create(fig_dir, recursive = TRUE, showWarnings = FALSE)
output <- file.path(fig_dir, "ptm_all_clusters_l4.pdf")
res <- graph.ptm.by.cluster(
     ptmtable         = ptmtable,
     common.clusters  = common.clusters4[1:3], # use all clusters > 4
     filename         = output,                # only first 3
     order.rows       = "slope",
     zlim             = 3,
     show.row.labels  = FALSE,
     show.col.labels  = TRUE,
     col_cex          = 0.7
   )
knitr::include_graphics(output)

## ----label=computeIndex, eval = TRUE------------------------------------------
eval_brca <- EvaluateClusters(
   common.clusters4, ptmtable,
   data.type  = "ratio",
   use.slope  = FALSE,
   index.mode = "density",
   verbose    = FALSE
 )
eval_brca[1:10, ]


## ----label=obtainPPI, eval = FALSE--------------------------------------------
# string_db_filepath <- "your/filepath/here.tsv"
# 
# # optional check that the nodenames are consistent with STRINGdb
# sym.map <- StandardizeGeneSymbols(gene.cccn.nodes)
# identical (unique(sym.map$standard_symbol), gene.cccn.nodes)
# # TRUE so no further action is required.
# # If there were differences, replace symbol.map = NULL with symbol.map = sym.map
# 
# stringdb.edges <- GetSTRINGdb.edges(gene.cccn.edges,
#                                     gene.cccn.nodes,
#                                     local = TRUE,
#                                     string.local.path = string_db_filepath,
#                                     combined.score.threshold = 400,
#                                     include.transferred = TRUE,
#                                     symbol.map = NULL)
# 

## ----label=loadEdges, eval = TRUE---------------------------------------------
stringdb.edges <- BRCA_stringdb.edges
head(stringdb.edges)

## ----label=noGenerics, eval = FALSE-------------------------------------------
# genemania_db_filepath <- "your/filepath/here.tsv"
# 
# genemania.edges <- GetGeneMANIA.edges(gm.all.edges.path,
#                                       gene.cccn.nodes,
#                                       local=TRUE,
#                                       genemania.local.path=genemania_db_filepath,
#                                       gm.interaction.types=c("Pathway",
#                                                              "Physical Interactions",
#                                                              "Predicted"))

## ----label=loadGM, eval = TRUE------------------------------------------------
genemania.edges <- BRCA_genemania.edges
head(genemania.edges)

## ----label=retrieveKinsub, eval = TRUE----------------------------------------
file_path <- system.file("extdata",
                         "Kinase_Substrate_Dataset.txt",
                         package = "PTMsToPathways")
kinsub.edges <- GetKinsub.edges(file_path, gene.cccn.nodes)

## ----label=buildCFN, eval = TRUE----------------------------------------------
network.list <- BuildClusterFilteredNetwork(gene.cccn.edges,
                                            stringdb.edges,
                                            genemania.edges,
                                            kinsub.edges,
                                            db.filepaths = c())

combined.PPIs <- network.list[[1]]
cfn <- network.list[[2]]
dim(cfn)

cfn.merged <- mergeEdges(cfn)
dim(cfn.merged)

## ----label=buildPCN, eval = FALSE---------------------------------------------
# bioplanet.file <- system.file("extdata",
#                               "bioplanet_pathway_June2025.csv",
#                               package = "PTMsToPathways")
# PCN.data <- BuildPathwayCrosstalkNetwork(common.clusters, bioplanet.file)

## ----label=loadPCN, eval = TRUE-----------------------------------------------
PCN.data <- BRCA_PCN.data
pathway.crosstalk.network <- PCN.data[[1]] # 679707 edges
PCNedgelist <- PCN.data[[2]]
pathways.list <- PCN.data[[3]]
dim(pathway.crosstalk.network)

## ----label=examineSchrainkModule, eval = TRUE---------------------------------
PD_module.file <- system.file("extdata",
                              "PhosDiscoModules_mmc11.txt",
                              package = "PTMsToPathways")

PD_module.df <- utils::read.table(PD_module.file, header = TRUE,
                  stringsAsFactors = FALSE, sep = "\t", comment.char = "#",
                  na.strings = "", quote = "", fill = TRUE)
dim(PD_module.df) # should be 1017 rows
head(PD_module.df)

## ----label=lenSchraink, eval = TRUE-------------------------------------------
length(intersect(newphos$variable_sites_names, PD_module.df$variableSites)) #530

## ----label=lenIntersect, eval = TRUE------------------------------------------
length(intersect(newphos$gene_symbol, PD_module.df$geneSymbol)) # 161

## ----label=makePepNames, eval = TRUE------------------------------------------

PD_module.df$Amino.Acid <- sapply(PD_module.df$variableSites,
                                  function(x) substring (x, 1, 1))
PD_module.df$Site <- trimws(substring(PD_module.df$variableSites, 2))
PD_module.df$Site <- sub("[a-z]$", "", PD_module.df$Site)

PD_module.df$Peptide.Name <- mapply(
  name.peptide, genes = PD_module.df$geneSymbol,
  sites =  PD_module.df$Site, aa = PD_module.df$Amino.Acid)
head(PD_module.df)

## ----label=treatMods, eval=TRUE-----------------------------------------------
PD.module.list <- split(PD_module.df$Peptide.Name,
                        PD_module.df$HDBSCAN.min_cluster_size.4)
length(PD.module.list)
PD.module.list$`68` 

## ----label=getUnique, eval = TRUE---------------------------------------------
PD.module.genes.unique <- lapply(
  PD.module.list,
  function(x) unique(sub(" .*", "", x)))
PD.module.genes.unique$`68`

## ----label=seeMod63, eval = TRUE----------------------------------------------
mod63.intersect <- Filter(length,
                          Map(intersect,
                              common.clusters,
                              list(PD.module.list$`63`)))
mod63.intersect

## ----label=manyIntersect, eval = TRUE-----------------------------------------
mod63.clust.ptms <- unlist(c(common.clusters$ConsensusCluster1,
                             common.clusters$ConsensusCluster3,
                             common.clusters$ConsensusCluster4,
                             common.clusters$ConsensusCluster5,
                             common.clusters$ConsensusCluster6))
length(mod63.clust.ptms)

## ----label=visualizeCyto, eval = TRUE-----------------------------------------
funckey <- function_key
cfn.cccn <- ptms_to_cfn(mod63.clust.ptms,
                        cfn = cfn.merged,
                        ptm.cccn.edges = ptm.cccn.edges,
                        ptmtable = ptmtable, pepsep = ";")
cfn_cccn.nodes <- make.cytoscape.node.file(cfn.cccn, funckey, ptmtable,
                                           include.gene.data = TRUE,
                                           include.coclustered.PTMs = TRUE,
                                           ptm.cccn.edges = ptm.cccn.edges)

## ----label=graphCyto, eval = FALSE--------------------------------------------
# g1 <- GraphCfn(cfn.edges = cfn.cccn,
#                cfn.nodes = cfn_cccn.nodes,
#                Network.title = "CFN/CCCN All PTMs 1",
#                Network.collection = "PTMsToPathways")
# 

## ----label=showCyto, eval = TRUE, echo = FALSE--------------------------------
knitr::include_graphics("vig_figs/Mod63_AllPTMs_X03BR011.png")

## ----label=CDK1focus, eval = TRUE---------------------------------------------
cdk1.kinsub <- filter.edges.1("CDK1", kinsub.edges)
dim(cdk1.kinsub)
head(cdk1.kinsub)

## ----label=infoEdges, eval = TRUE---------------------------------------------
cdk1.substrates <- cdk1.kinsub [which(cdk1.kinsub$source=="CDK1"), "target"]
cfn_cccn.nodes.cdksubs <- cfn_cccn.nodes[cfn_cccn.nodes$Gene.Name %in%
                                           cdk1.substrates, ]


## ----label=selectCDK1, eval = FALSE-------------------------------------------
# RCy3::selectNodes(cfn_cccn.nodes.cdksubs$id, by = "id", preserve=FALSE)
# Cy3::selectEdgesConnectingSelectedNodes()
# RCy3::createSubnetwork(nodes = RCy3::getSelectedNodes(),
#                        edges = RCy3::getSelectedEdges(),
#                        nodes.by.col = "id",
#                        edges.by.col = "name")

## ----label=useP2P, eval = FALSE-----------------------------------------------
# cfn_cccn.nodes.cdksubs.edges <- filter.edges.0(nodenames=cfn_cccn.nodes.cdksubs$id,
#                                                edge.file=cfn.cccn)
# 
# g2 <- GraphCfn(cfn.edges = cfn_cccn.nodes.cdksubs.edges,
#                cfn.nodes = cfn_cccn.nodes.cdksubs,
#                Network.title = "CFN/CCCN All PTMs 5",
#                Network.collection = "PTMsToPathways")

## ----label=showSame, eval = TRUE, echo = FALSE--------------------------------
knitr::include_graphics("vig_figs/CDKsub63_allPTMs_X03BR011.png")

## ----label=moreSimple, eval = FALSE-------------------------------------------
# cdksubs.genes <- unique(cfn_cccn.nodes.cdksubs$id)
# cdksubs.cfn <- filter.edges.0(cdksubs.genes, cfn.merged)
# cdksubs.cfn.cccn <- get.co.clustered.ptms(cdksubs.cfn,
#                                           ptm.cccn.edges=ptm.cccn.edges)
# cdksubs.cfn.cccn.nodes <- make.cytoscape.node.file(cdksubs.cfn.cccn,
#                                                    funckey, ptmtable,
#                                                    include.gene.data=TRUE,
#                                                    include.coclustered.PTMs=TRUE)
# g3 <- GraphCfn(cfn.edges = cdksubs.cfn.cccn,
#                cfn.nodes = cdksubs.cfn.cccn.nodes,
#                Network.title = "CFN/CCCN All PTMs 6",
#                Network.collection = "PTMsToPathways")

## ----label=showSimple, eval = TRUE, echo = FALSE------------------------------
knitr::include_graphics("vig_figs/CDKsub63_CCPTMs_X03BR011.png")

## ----label=Style, eval = FALSE------------------------------------------------
# setNodeColorToRatios(plotcol="X03BR011")
# 
# # This exaggerates the node size and shape somewhat:
# setNodeColorToRowz(plotcol="X03BR011")
# 
# setNodeColorToRatios(plotcol="X21BR010")
# setNodeColorToRowz(plotcol="X21BR010")
# setNodeColorToRatios(plotcol="X05BR045")
# setNodeColorToRowz(plotcol="X05BR045")

## ----label=sessionInfo, eval = TRUE-------------------------------------------
sessionInfo()

