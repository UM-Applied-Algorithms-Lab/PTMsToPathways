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

## ----label=library, eval = TRUE, echo = TRUE----------------------------------
library(PTMsToPathways)

## ----label=showData, eval = FALSE, echo = TRUE--------------------------------
# data(package = "PTMsToPathways")

## ----label=viewData, eval = TRUE, echo = FALSE--------------------------------
dat <- as.data.frame(data(package = "PTMsToPathways")$results)
dat <- dat[, c("Item", "Title")]
knitr::kable(dat, col.names = c("Dataset Name", "Description"), align = 'l')

## ----label=dimAndShow, eval = TRUE, echo = TRUE-------------------------------
dim(ex_small_ptm_table)
ex_small_ptm_table[38:50, 1:2]

## ----label=dimAndShowBig, eval = TRUE, echo = TRUE----------------------------
dim(ex_full_ptm_table)
ex_full_ptm_table[38:50, 1:2]

## ----label=readData, eval = FALSE, echo = TRUE--------------------------------
# allptmtable <- utils::read.table("AlldataPTMs.txt", sep = "\t", skip = 0,
#                                  fill = T, quote = "\"", dec = ".",
#                                  comment.char = "", stringsAsFactors = F)

## ----label=runMCL, eval = TRUE, echo = TRUE-----------------------------------
set.seed(88)
clusterlist.data <- MakeClusterList(ex_small_ptm_table,
                                    keeplength = 2, toolong = 3.5)

## ----label=unpackMCL, eval = TRUE, echo = TRUE--------------------------------
common.clusters <- clusterlist.data[[1]]
adj.consensus.matrix <- clusterlist.data[[2]]
ptm.correlation.matrix <- clusterlist.data[[3]]

## ----label=viewCC, eval = TRUE, echo = TRUE-----------------------------------
common.clusters[1]

## ----label=viewAdjMatrix, eval = TRUE, echo = TRUE----------------------------
adj.consensus.matrix[7:10, 7:10]

## ----label=viewPTMcorr, eval = TRUE, echo = TRUE------------------------------
ptm.correlation.matrix[38:43, 1:2]

## ----label=makeCCCN, eval = TRUE, echo = TRUE---------------------------------
CCCN.data <- MakeCorrelationNetwork(adj.consensus.matrix,
                                    ptm.correlation.matrix)
ptm.cccn.edges <- CCCN.data[[1]]
gene.cccn.edges <- CCCN.data[[2]]
gene.cccn.nodes <- CCCN.data[[3]]

## ----label=viewCCCN, eval = TRUE, echo = TRUE---------------------------------
ptm.cccn.edges[18:22,]

## ----label=viewGeneCCCN, eval = TRUE, echo = TRUE-----------------------------
gene.cccn.edges[1:5,]

## ----label=viewGeneNodes, eval = TRUE, echo = TRUE----------------------------
gene.cccn.nodes[1:5]

## ----label=saveEnv, eval = FALSE, echo = TRUE---------------------------------
# save.image(file = "filepath/name.RData")
# # All objects in the environment are saved

## ----label=getStringDB, eval = TRUE, echo = TRUE------------------------------
path <- system.file("extdata", "small_string_hs_hugo.tsv",
                    package = "PTMsToPathways")
stringdb.edges <- GetSTRINGdb.edges(gene.cccn.edges, gene.cccn.nodes,
                                    local=TRUE, string.local.path = path)
stringdb.edges[1:5,]

## ----label=getGm, eval = TRUE, echo = TRUE------------------------------------
MakeDBInput(gene.cccn.nodes, file.path.name = "db_nodes.txt")

## ----label=saveGm, eval = TRUE, echo = TRUE-----------------------------------
gm.results.path <- system.file("extdata", "ex_gm_results.txt",
                               package = "PTMsToPathways")
genemania.edges <- GetGeneMANIA.edges(gm.results.path, gene.cccn.nodes)

## ----label=viewGm, eval = TRUE, echo = TRUE-----------------------------------
genemania.edges[1:5,]

## ----label=getKinsub, eval = TRUE, echo = TRUE--------------------------------
input.filename <- system.file("extdata", "Kinase_Substrate_Dataset.txt",
                              package = "PTMsToPathways")

## ----label=kinsubEdges, eval = TRUE, echo = TRUE------------------------------
kinsub.edges <- GetKinsub.edges(input.filename, gene.cccn.nodes)

## ----label=buildCfn, eval = TRUE, echo = TRUE---------------------------------
network.list <- BuildClusterFilteredNetwork(gene.cccn.edges,
                                            stringdb.edges,
                                            genemania.edges,
                                            kinsub.edges,
                                            db.filepaths = c())

## ----label=unpackCfn, eval = TRUE, echo = TRUE--------------------------------
combined.PPIs <- network.list[[1]]
cfn <- network.list[[2]]

## ----label=viewCfn, eval = TRUE, echo = TRUE----------------------------------
cfn[1:5,]

## ----label=mergeCfn, eval = TRUE, echo = TRUE---------------------------------
cfn.merged <- mergeEdges(cfn)

## ----label=getBioplanet, eval = TRUE, echo = TRUE-----------------------------
bioplanet.file <- system.file("extdata", "pathway.csv",
                              package = "PTMsToPathways")

## ----label=buildPCN, eval = TRUE, echo = TRUE---------------------------------
PCN.data <- BuildPathwayCrosstalkNetwork(common.clusters, bioplanet.file)
pathway.crosstalk.network <- PCN.data[[1]]
PCNedgelist <- PCN.data[[2]]
pathways.list <- PCN.data[[3]]
CPE.matrix <- PCN.data[[4]]

## ----label=saveToEdgefile, eval = FALSE, echo = TRUE--------------------------
# utils::write.csv(pathway.crosstalk.network,
#                  file = "PCN_file.csv",
#                  row.names = FALSE)

## ----label= cytoCols, eval = TRUE, echo = TRUE--------------------------------
names(pathway.crosstalk.network)

## ----label=viewPcn, eval = FALSE, echo = TRUE---------------------------------
# pathway.crosstalk.network[1:5,]

## ----label=showPcn, eval = TRUE, echo = FALSE---------------------------------
dat <- pathway.crosstalk.network[1:5,]
knitr::kable(dat, align = 'l', digits = 2)

## ----label=showEdgeWeights, eval = FALSE, echo = TRUE-------------------------
# PCNedgelist[PCNedgelist$source == "Axon guidance" &
#               PCNedgelist$target == "ERBB signaling pathway", ]

## ----label=calcEdgeWeights, eval = TRUE, echo = FALSE-------------------------
dat <- PCNedgelist[PCNedgelist$source == "Axon guidance" &
                     PCNedgelist$target == "ERBB signaling pathway", ]
knitr::kable(dat, align = 'l', digits = 2)

## ----label=getJaccard, eval = TRUE, echo = TRUE-------------------------------
size_union <- length(union(pathways.list[["Axon guidance"]],
                           pathways.list[["ERBB signaling pathway"]]))
size_intersection <- length(intersect(pathways.list[["Axon guidance"]],
                                      pathways.list[["ERBB signaling pathway"]]))
jaccard_similarity <- size_intersection / size_union
jaccard_similarity

## ----label=axonGuidancePathway, eval = TRUE, echo = TRUE----------------------
c_i <- common.clusters[[1]]
p_j <- pathways.list[["Axon guidance"]]
length(c_i)
length(p_j)

## ----label=getMYH, eval = TRUE, echo = TRUE-----------------------------------
c_i[grepl("MYH9", c_i)]

## ----label=getPTK, eval = TRUE, echo = TRUE-----------------------------------
c_i[grepl("PTK2", c_i)]

## ----label=sums, eval = TRUE, echo = TRUE-------------------------------------
sum(sapply(pathways.list, function(x) "MYH9" %in% x))
sum(sapply(pathways.list, function(x) "PTK2" %in% x))

## ----label=math, eval = TRUE, echo = TRUE-------------------------------------
1/(1*8) + 1/(2*8)

## ----label=CPEcompare, eval = TRUE, echo = TRUE-------------------------------
CPE.matrix[1, "Axon guidance"]

## ----label=viewScores, eval = FALSE, echo = TRUE------------------------------
# cols <- c("Axon guidance", "ERBB signaling pathway")
# rows <- rowSums(!is.na(CPE.matrix[, cols])) == 2
# CPE.matrix[rows, cols]

## ----label=getColRowDat, eval = TRUE, echo = FALSE----------------------------
cols <- c("Axon guidance", "ERBB signaling pathway")
rows <- rowSums(!is.na(CPE.matrix[, cols])) == 2
dat <- CPE.matrix[rows, cols]
knitr::kable(dat, align = 'l', digits = 2)

## ----label=sumAgain, eval= TRUE, echo = TRUE----------------------------------
sum(CPE.matrix[rows, cols])

## ----label=saveOneObject, eval = FALSE, echo = TRUE---------------------------
# save(object, filename = "filepath/name.rda") # Saves object as an .rda
# load("filepath/name.rda")                    # Loads object saved to a file

## ----label=saveMultiObjects, eval = FALSE, echo = TRUE------------------------
# save(object1, object2, object.ect, filename="NewFile.RData")

## ----label=saveCSV, eval = FALSE, echo = TRUE---------------------------------
# utils::write.csv(object, file = "filepath/name.csv") # Saves object as a .csv
# utils::read.csv(file = "filepath/name.csv")          # Loads object from .csv

## ----label=saveEnvAgain, eval = FALSE, echo = TRUE----------------------------
# save.image(file = "filepath/name.RData")
# # All objects in the environment are saved

## ----label=sessionInfo, eval = TRUE-------------------------------------------
sessionInfo()

