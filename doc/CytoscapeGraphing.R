## ----setup, echo = FALSE------------------------------------------------------

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = ">>",
  echo = TRUE,
  fig.align = "center",
  fig.path = "plots/",
  fig.width = 8,
  fig.height = 6,
  out.width = "100%",
  results = "hold"
)


## ----label=library, eval = TRUE, echo = TRUE----------------------------------
library(PTMsToPathways)

## ----nodeEdgeKeyOutput, eval = TRUE, echo = FALSE-----------------------------
knitr::include_graphics("vig_figs/NodeEdgeKeyOutput.png")

## ----label=visibleTable, eval = FALSE, echo = TRUE----------------------------
# head(function_key[1:3])

## ----label=tableRun, eval = TRUE, echo = FALSE--------------------------------
knitr::kable(head(function_key[1:3]))

## ----label=readBioPlanet, eval = TRUE-----------------------------------------
bioplanet.path <- system.file("extdata",
                              "bioplanet_pathway_June2025.csv",
                              package = "PTMsToPathways")
pathways.list <- ReadBioplanetFile(bioplanet.file = bioplanet.path)

## ----label=createEGFRPathways, eval = TRUE------------------------------------
egfr_pathways <- names(pathways.list)[sapply(1:length(pathways.list), function(x)
  {"EGFR" %in% pathways.list[[x]]})]

## ----label=showEGFRLength, eval = TRUE----------------------------------------
length(egfr_pathways)

## ----label=makeEGFRTransporterPcn, eval = TRUE--------------------------------
pcn.path <- system.file("extdata",
                        "full_pathway_crosstalk_network.rda",
                        package = "PTMsToPathways")
load(pcn.path)
egfr_transporter_pcn <- filter.edges.between(
  "Transmembrane transport of small molecules",
  egfr_pathways, pathway.crosstalk.network)

## ----label=graphEGFRPcn, eval = FALSE-----------------------------------------
# # Graph PCN
# pcn.graph <- cytoscape.graph.PCN.pathways(
#   PCN = egfr_transporter_pcn,
#   net.name = "EGFR signaling and transmembrane transporters",
#   Jaccard.edges = TRUE)

## ----graphPCNOutput, eval = TRUE, echo = FALSE--------------------------------
knitr::include_graphics("vig_figs/CytoscapePCN.png")

## ----label=showPathwayScores, eval = TRUE-------------------------------------
rbind(
  subset(pathway.crosstalk.network,
         target=="Transmembrane transport of small molecules" &
         source=="EGF/EGFR signaling pathway"),
  subset(pathway.crosstalk.network,
         source=="Transmembrane transport of small molecules" &
         target=="EGF/EGFR signaling pathway")
)

## ----label=EGFRTransporter, eval = TRUE---------------------------------------
cfn.path <- system.file("extdata",
                        "full_cfn_output.rda",
                        package = "PTMsToPathways")
load(cfn.path)

egfr_transporter.cfn <- filter.edges.0(c(
  pathways.list[["EGF/EGFR signaling pathway"]],
  pathways.list[["Transmembrane transport of small molecules"]]), cfn)

egfr_transporter.nodes <- make.cytoscape.node.file(
  egfr_transporter.cfn, function_key, ex_full_ptm_table, include.gene.data=TRUE) 


## ----label=graphCfn, eval = FALSE---------------------------------------------
# GraphCfn(cfn.edges = egfr_transporter.cfn, cfn.nodes = egfr_transporter.nodes,
#          Network.title = "CFN", Network.collection = "PTMsToPathways")

## ----label=show2PathGraph, echo = FALSE, eval =TRUE---------------------------
knitr::include_graphics("vig_figs/TwoPathwayCFN.png")

## ----label=nodeColRatios, eval = FALSE----------------------------------------
# setNodeColorToRatios(plotcol="PC9_ErlotinibRatio")

## ----label=show2PathGraph2, echo = FALSE, eval =TRUE--------------------------
knitr::include_graphics("vig_figs/TwoPathwayCFN2.png")

## ----label=mergeCFN, eval = TRUE----------------------------------------------
cfn.merged <- mergeEdges(cfn)

## ----label=EGFRmerge, eval = TRUE---------------------------------------------
egfr_transporter.cfn.merged <- mergeEdges(egfr_transporter.cfn)

## ----label=graphEGFR, eval = FALSE--------------------------------------------
# GraphCfn(cfn.edges = egfr_transporter.cfn.merged,
#          cfn.nodes = egfr_transporter.nodes,  Network.title = "CFN",
#          Network.collection = "PTMsToPathways")

## ----label=nodeColRatio, eval = FALSE-----------------------------------------
# setNodeColorToRatios(plotcol="PC9_ErlotinibRatio")

## ----label=show2PathGraph3, echo = FALSE, eval =TRUE--------------------------
knitr::include_graphics("vig_figs/TwoPathwayCFN3.png")

## ----label=connect, eval = TRUE-----------------------------------------------
sp1 <- connectNodes.all(c("FYN", 'MET'), edgefile = cfn.merged)

## ----label=SP1cccn, eval = FALSE----------------------------------------------
# # CHECK GET.CO.CLUSTERED.PTMS FUNCTION
# ptmcccn.path <- system.file("extdata",
#                             "full_ptm_cccn.rda",
#                             package = "PTMsToPathways")
# load(ptmcccn.path)
# 
# sp1_plus <- get.co.clustered.ptms(sp1, ptm.cccn.edges, ex_full_ptm_table)
# sp1_plus.nodes <- make.cytoscape.node.file(sp1_plus, function_key, ex_full_ptm_table,
#                                            include.gene.data = TRUE,
#                                            include.coclustered.PTMs = TRUE)

## ----label = SP1graph, eval = FALSE-------------------------------------------
# GraphCfn(cfn.edges = sp1_plus, cfn.nodes = sp1_plus.nodes,
#          Network.title = "CFN/CCCN", Network.collection = "PTMsToPathways")
# 
# setNodeColorToRatios(plotcol = "H3122CrizotinibRatio")

## ----label= pt.sub, eval = TRUE-----------------------------------------------
pt.sub <- ex_full_ptm_table[, grep("DasatinibRatio", names (ex_full_ptm_table))]
pt.sub$Sum.Dasat <- rowSums(pt.sub, na.rm = TRUE)
pt.sub <- pt.sub[order(pt.sub$Sum.Dasat, decreasing = FALSE), ]
head(pt.sub)

## ----label=pt.subFiltered, eval = TRUE----------------------------------------
pt.sub$Gene.Name <- sapply(rownames(pt.sub), function(x){
  unlist(strsplit(x, " ",  fixed=TRUE))[1]})

fa.genes <- pathways.list[["Focal adhesion"]]
pt.sub.fa <- pt.sub[pt.sub$Gene.Name %in% fa.genes,]

## ----label=pt.subDownRegulated, eval = TRUE-----------------------------------
pt.sub.fa.topz <- pt.sub.fa[pt.sub.fa$Sum.Dasat < -2,]
ptms <- rownames(pt.sub.fa.topz)

## ----label=cfnAndVisual, eval = FALSE-----------------------------------------
# # CHECK PTMS_TO_CFN FUNCTION
# cfn.cccn <- ptms_to_cfn(ptms, cfn = cfn.merged, ptm.cccn.edges,
#                         ex_full_ptm_table, pepsep = ";")
# 
# cfn_cccn.nodes <- make.cytoscape.node.file(cfn.cccn, function_key,
#                                            ex_full_ptm_table,
#                                            include.gene.data = TRUE,
#                                            include.coclustered.PTMs = TRUE)

## ----label=graphDasatinib, eval = FALSE---------------------------------------
# GraphCfn(cfn.edges = cfn.cccn, cfn.nodes = cfn_cccn.nodes,
#          Network.title = "CFN/CCCN", Network.collection = "PTMsToPathways")
# 
# # Choose ratio data column to show which proteins' PTMs were inhibited by a dasatinib
# setNodeColorToRatios(plotcol="H366_DasatinibRatio")
# setNodeColorToRatios(plotcol="H2286_DasatinibRatio")

