#' @title Graph Cluster Filtered Network
#'
#' @description Creates a cytoscape graph of the cluster filtered network. Ensure that you have the Cytoscape app open and the RCy3 package downloaded.
#' The package RCy3 is required for this function. To download, run:
#' - if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")
#' - BiocManager::install("RCy3")
#'
#' @details Graph Key
#' - Node Size
#'   - Greater the node size, larger the absolute value of the score
#' - Blue Node
#'   - Negative score
#' - Yellow Node
#'   - Positive score
#' - Green Node
#'   - Approximately zero score
#' Node Shapes:
#' - "ELLIPSE"
#'   - unknown
#' - "ROUND_RECTANGLE"
#'   - receptor tyrosine kinase
#' - "VEE"
#'   - SH2 protein
#'   or
#'   - SH2-SH3 protein
#' - "TRIANGLE"
#'   - SH3 protein
#' - "HEXAGON"
#'   - tyrosine kinase
#' - "DIAMOND"
#'   - SRC-family kinase
#' - "OCTAGON"
#'   - kinase
#'   or
#'   - phosphatase
#' - "PARALLELOGRAM"
#'   - transcription factor
#' - "RECTANGLE"
#'   - RNA binding protein
#' Node Border Colors:
#' - Orange
#'   - deacetylase
#'   or
#'   - acetyltransferase
#' - Blue
#'   - demethylase
#'   or
#'   - methyltransferase
#' - Royal Purple
#'   - membrane protein
#' - Red
#'   - kinase
#'   or
#'   - tyrosine kinase
#'   or
#'   - SRC-family kinase
#' - Yellow
#'   - phosphatase
#'   or
#'   - tyrosine phosphatase
#' - Lilac
#'   - G protein-coupled receptor
#'   or
#'   - receptor tyrosine kinase
#' - Grey
#'   - default
#' - Edge Thickness
#'   - Stronger correlation
#'Edge Colors:
#' - Red
#'   - Phosphorylation
#'   or
#'   - pp
#'   or
#'   - controls-phosphorylation-of
#' - Bright Magenta
#'   - controls-expression-of
#' - Dull Magenta
#'   - controls-transport-of
#' - Purple
#'   - controls-state-change-of
#' - Blood Orange
#'   - Acetylation
#' - Lime Green
#'   - Phystical interactions
#' - Green
#'   - BioPlex
#' - Dull Green
#'   - in-complex-with
#' - Seafoam Green
#'   - experiments
#'   or
#'   - experiments_transferred
#' - Cyan
#'   - database
#'   or
#'   - database_transferred
#' - Teal
#'   - Pathway
#'   or
#'   - Predicted
#' - Dark Turquoise
#'   - Genetic interactions
#' - Yellow-Orange
#'   - correlation
#' - Royal Blue
#'   - negative correlation
#' - Bright Yellow
#'   - positive correlation
#' - Grey
#'   - combined_score
#' - Dark Grey
#'   - merged
#' - Light Grey
#'   - intersect
#' - Black
#'   - peptide
#' - Orange
#'   - homology
#' - Dull Orange
#'   - Shared protein domains
#' - White
#'   - Default
#' Arrow Types:
#' - Arrow
#'   - Phosphorylation
#'   or
#'   - pp
#'   or
#'   - controls-phosphorylation-of
#'   or
#'   - controls-expression-of
#'   or
#'   - controls-transport-of
#'   or
#'   - controls-state-change-of
#'   or
#'   - Acetylation
#' - No Arrow
#'   - Default
#'
#' @param cfn A version of ppi.network with only the edges that exist in cccn.matrix and have non-zero weights
#' @param ptmtable A dataset for post-translational modifications. Formatted with numbered rows, and the first column containing PTM names. The rest of the column names should be drugs. Values are numeric values that represent how much the PTM has reacted to the drug.
#' @param funckey A table graphing gene names to type of protein; defaults to internal database at PTMsToPathways::ex.funckey
#' @param Network.title Desired title for the created Cytoscape Network; defaults to "cfn"
#' @param Network.collection Desired name for the collection created on Cytoscape in which the network will reside; defaults to "PTMsToPathways"
#' @param visual.style.name Desired name for the visual style created on Cytoscape; defaults to "PTMsToPathways.style"
#'
#' @param background.color Hex code of background color of graph; defaults to '#fcf3cf'
#' @param edge.label.color Hex code of edge label color of graph; defaults to '#17202a'
#' @param node.label.color Hex code of node label color of graph; defaults to '#145a32'
#'
#' @param default.font Font style of edge and node names; defaults to "Times New Roman"
#' @param node.font.size Font size of the node name; defaults to 12
#' @param edge.font.size Font size of the edge name; defaults to 8
#'
#' @param edge.line.style Type of edge style; defaults to "SOLID"; options include: "PARALLEL_LINES", "MARQUEE_EQUAL", "DOT", "EQUAL_DASH", "LONG_DASH", "CONTIGUOUS_ARROW", "MARQUEE_DASH", "DASH_DOT", "BACKWARD_SLASH", "FORWARD_SLASH", "VERTICAL_SLASH", "SOLID", "SEPARATE_ARROW", "MARQUEE_DASH_DOT", "ZIGZAG", "SINEWAVE"
#'
#' @param edge.opacity Opacity of the edge line on a scale of 0 - 255 with 0 being transparent; defaults to 175
#' @param edge.label.opacity Opacity of the edge label on a scale of 0 - 255 with 0 being transparent; defaults to 255
#' @param border.opacity Opacity of the node border on a scale of 0 - 255 with 0 being transparent; defaults to 255
#' @param node.label.opacity Opacity of the node label on a scale of 0 - 255 with 0 being transparent; defaults to 255
#' @param node.fill.opacity Opacity of the node fill on a scale of 0 - 255 with 0 being transparent; defaults to 255
#'
#' @return A cytoscape graph of the cluster filtered network
#' @export
#'
#' @examples
#' # GraphCFN(ex.cfn)
#' # See vignette for default graph
#'
#

# Import Function Key
funckey.filename <- "FunctionKey.txt"
if(is.character(funckey.filename)){ #If Path to file (string input)
  if(!file.exists(funckey.filename)) stop(paste(funckey.filename, "not found. Plese check your working directory."))
  funckey <- read.table(funckey.filename, header=TRUE, sep = "\t", comment.char = "#", na.strings='', quote = "", stringsAsFactors=FALSE, fill=TRUE)
}
# helper functions for networks in R:
# function to filter networks to include only selected nodes and those with edges to them
filter.edges.0 <- function(nodenames, edge.file) {
  nodenames <-as.character(nodenames)
  a = as.character(edge.file[,1])
  b = as.character(edge.file[,2])
  edgefile.nodes <- unique(c(a,b))
  sel.edges <- edge.file[edge.file[,1] %in% nodenames & edge.file[,2] %in% nodenames,]
  if(dim(sel.edges)[1] == 0) {return(NA)} else return(sel.edges)
}
#
#function to filter networks and to get first order connected nodes
filter.edges.1 <- function(nodenames, edge.file) {
  nodenames <-as.character(nodenames)
  a = as.character(edge.file[,1])
  b = as.character(edge.file[,2])
  edgefile.nodes <- unique(c(a,b))
  sel.edges.1 <- edge.file[edge.file[,1] %in% nodenames,]
  sel.edges.2 <- edge.file[edge.file[,2] %in% nodenames,]
  sel.edges <- rbind(sel.edges.1, sel.edges.2)
  if(dim(sel.edges)[1] == 0) {return(NA)} else {
    return(unique(sel.edges)) }
}
filter.edges.between <- function(nodes1, nodes2, edge.file, convert=FALSE) {
  sel.edges1 <- edge.file[edge.file[,1] %in% nodes1 & edge.file[,2]%in% nodes2,]
  sel.edges2 <- edge.file[edge.file[,1] %in% nodes2 & edge.file[,2]%in% nodes1,]
  sel.edges <- rbind(sel.edges1, sel.edges2)
  if(dim(sel.edges)[1] == 0) {return(NA)} else return(sel.edges)
}
# connectNodes.all  uses all_shortest_paths and returns just the edge file
connectNodes.all <- function(nodepair, ig.graph=NULL, edgefile, newgraph=FALSE)	{
  if (newgraph==TRUE) {
    ig.graph <- igraph::graph.data.frame(edgefile, directed=FALSE) }
  sp <- igraph::all_shortest_paths(graph= ig.graph, from=nodepair[1], to=nodepair[2], mode="all")
  path.nodeslist <-  unique(lapply(sp[[1]], names))
  edges.list <- lapply(path.nodeslist, filter.edges.0, edge.file=edgefile)
  path.edges <- unique(plyr::ldply(edges.list))
  return(path.edges)
}
# This function names the edges the way Cytoscape does so they can be selected:
getCyEdgeNames <- function(edgefile) {
  cyedges <- mapply(paste, edgefile $source, " (", edgefile $interaction, ") ", edgefile $target, sep="")
  return(cyedges)
}
# Function to extract node names from, e.g.:
#	"ValidatedObjectAndEditString: validatedObject=ERBB3, editString=null"
strip.cy.goo <- function(test) {
  t1 <- unlist(strsplit(test, "Object="))
  t2 <- sapply(t1[2:length(t1)], function (x) (strsplit(x, ", ")))
  return(plyr::ldply(t2)$V1)
}
# For graphing Pathway Crosstalk Networks (PCNs) in cytoscape
cytoscape.graph.PCN.pathways <- function(PCN = pathway.crosstalk.network, net.name, Jaccard.edges=TRUE) {
  PCN.df <- data.frame(id=unique(c(PCN$source, PCN$target)))
  if (Jaccard.edges== FALSE) {PCN = PCN[-which (PCN$interaction=="pathway Jaccard similarity"),]}
  # Get rid of zero weight edges
  PCN.edges <- PCN[PCN$Weight>0, ]
  no.windows <- length(RCy3::getNetworkList())
  PCN.suid <- RCy3::createNetworkFromDataFrames(PCN.df, PCN.edges, title=paste(net.name, "PCN", (1+no.windows), sep=" "), collection = "Pathway Interactions")
  RCy3::setEdgeSelectionColorDefault (gplots::col2hex("chartreuse")) # still doesn't work
  RCy3::setNodeColorDefault("#33FFFF" ) # bright Cyan
  # edgeColors <- c(col2hex(alpha("purple",0.33333)), col2hex(alpha("magenta",0.33333)), col2hex("green"))
  # edgeColors <- c("#9966FF", col2hex("green"))
  edgeColors <- c(gplots::col2hex(ggplot2::alpha("darkorchid1",0.33333)), gplots::col2hex(ggplot2::alpha("tomato", 0.25)), gplots::col2hex("green"))
  # edgeColors <- c("#9966FF", col2hex("green"))
  edgeTypes <- c("PTM_cluster_evidence", "Protein_cluster_evidence", "pathway_Jaccard_similarity")
  RCy3::setEdgeColorMapping( 'interaction', edgeTypes, edgeColors, 'd', default.color="#FFFFFF")
  setEdgeWidths(ffactor = -1.2, log=TRUE) # Finally works!
  style.name <- paste("PCN style", (1+no.windows), sep=" ")
  RCy3::copyVisualStyle('default', style.name)
  RCy3::setVisualStyle(style.name)
}

# Two linked functions to generate node file for Cytoscape:

make.gene.data.from.ptmtable <- function(genes, ptmtable) {
  ptmtable.temp <- ptmtable
  ptmtable.temp$Gene.Name <- sapply(rownames(ptmtable.temp), function (x) strsplit(x, " ", fixed = TRUE)[[1]][1])
  subset.ptmtable <- ptmtable.temp[ptmtable.temp$Gene.Name %in% unique(genes), ]
  gene.data <- subset.ptmtable %>%
    dplyr::group_by(.data$Gene.Name) %>%
    dplyr::summarise(
      dplyr::across(where(is.numeric), ~sum(.x, na.rm = TRUE)),
      .groups = "drop"
    )

  return(as.data.frame(gene.data))  # Ensure base R class
}
make.cytoscape.node.file <- function(edge.file, funckey, ptmtable, include.gene.data = FALSE, include.PTM.data = FALSE) {

  # Step 1: get unique nodes from edge file
  edge_nodes <- unique(c(as.character(edge.file[, 1]), as.character(edge.file[, 2])))

  # Step 2: build node data frame from function key
  annotation_cols <- c(
    "Gene.Name", "Approved.Name", "Hugo.Gene.Family", "HPRD.Function",
    "nodeType", "Domains", "Compartment", "Compartment.Overview"
  )

  node_file <- merge(
    data.frame(Gene.Name = edge_nodes, stringsAsFactors = FALSE),
    funckey[, annotation_cols, drop = FALSE],
    by = "Gene.Name",
    all.x = TRUE
  )

  # Step 3: Optionally merge gene data summed from PTM table
  if (include.gene.data == TRUE) {
    gene.data <- make.gene.data.from.ptmtable(edge_nodes, ptmtable)
    node_file <- merge(
      node_file,
      gene.data,
      by = "Gene.Name",
      all.x = TRUE
    )
  }
  node_file <- cbind(data.frame(id = node_file$Gene.Name), node_file)

  # Step 4: Optionally merge PTM CCCN and data
  if (include.PTM.data == TRUE) {
    edge.file.with.ptms <- get.co.clustered.ptms(edge.file)
    node_file <- harmonize_cfs(edge.file.with.ptms, genecf = node_file)
  }
  return(unique(node_file))
}

# Helper functions for connecting PTMs (called "peptides" with their parent protein nodes (called Gene.Name))
remove.autophos <-    function(edgefile)	{
  auto <- which (as.character(edgefile$source) == as.character(edgefile$target))
  if (length(auto) > 0) {
    newedgefile <- edgefile[-auto,] } else newedgefile <- edgefile
    return (newedgefile)
}
make.genepep.edges <- function(peptide.edgefile) {
  peptides <- unique(c(peptide.edgefile$source, peptide.edgefile$target))
  genenames <- sapply(peptides,  function (x) unlist(strsplit(x, " ",  fixed=TRUE))[1])
  net.gpe <- data.frame(source=genenames, target=peptides, Weight=0.25, interaction="peptide")
  net.gpe <- remove.autophos(net.gpe)
  return(net.gpe)
}
# This function takes an edge file, retrieves only co-clustered PTM CCCN edges and links them to their gene nodes, returning an edge file
get.co.clustered.ptms <- function (edge.file) {
  gene_nodes <- unique(c(as.character(edge.file[, 1]), as.character(edge.file[, 2])))
  ptmtable.temp <- ptmtable
  ptmtable.temp$Gene.Name <- sapply(rownames(ptmtable.temp), function (x) strsplit(x, " ", fixed = TRUE)[[1]][1])
  subset.ptms <- rownames(ptmtable.temp[ptmtable.temp$Gene.Name %in% unique(gene_nodes), ])
  # Simplify ambiguous names - turned off because it limits their retrieval in the ptm cccn
  # subset.ptms <- unique(sapply(subset.ptms,  function (x) unlist(strsplit(x, ";",  fixed=TRUE))[1]))
  subset.ptm.cccn <- filter.edges.0(subset.ptms, ptm.cccn.edges)
  pep.edges <- make.genepep.edges(subset.ptm.cccn)
  edge.file.with.ptms <- rbind(edge.file, subset.ptm.cccn, pep.edges)
  return(edge.file.with.ptms)
}

# Function to harmonize gene and peptide data for networks
#  - for graphing combined CFN/CCCN graphs
# Enusres that for Cytoscape, "id" is used for node name columns
#
"%w/o%" <- function(x, y) x[!x %in% y] #--  x without y

harmonize_cfs <- function(edge.file.with.ptms, genecf) {
  if(!any(grepl("Gene.Name", names(genecf)))) {
    genecf.new <- data.frame(Gene.Name= genecf$id, genecf)} else {genecf.new = genecf}
  genecf.new$parent <- ""
  genecf.new$Node.ID <- "Gene"
  peptides <- edge.file.with.ptms[which(edge.file.with.ptms$interaction == "peptide"), "target"]
    if(length (peptides) == 0)  {                                                                       # check if there are PTMs in edgefile
      stop("There are no PTMs/peptides in this edge file!")
      }
  parent.genes <- sapply(peptides, function (x) strsplit(x, " ", fixed = TRUE)[[1]][1])
  # Map peptides to ptmtable rows, handling unmatched by filling with NA or zero
  matches <- match(peptides, rownames(ptmtable))
  ptm.rows <- ptmtable[matches, , drop=FALSE]   # Will include NAs for unmatched rows
  # Optionally replace all NA to 0 in the resulting data.frame
  ptm.rows[is.na(ptm.rows)] <- 0
  pepcf <- data.frame(
    id = as.character(peptides),
    parent = as.character(parent.genes),
    Gene.Name = as.character(parent.genes),
    ptm.rows
  )

  pepcf$Node.ID <- "PTM"
  cf <- merge(genecf.new, pepcf, all=TRUE)
  if(any(grepl("Gene.Name.1", names(cf)))) {cf <- cf[,-which(names(cf)=="Gene.Name.1")]}
  if(any(is.na(cf))) {cf[is.na(cf)] <- 0}
  # Make sure "id" is in the first column
  cf <- cf[,c("id", "Gene.Name", "Node.ID", "parent", names(cf) %w/o% c("id", "Gene.Name", "Node.ID", "parent"))]
  return(cf)
}

# Function to merge edges to declutter networks

mergeEdges <- function(edgefile) {
  # Define edge type priorities for directed edges
  directed_priority <- c("pp", "controls-phosphorylation-of", "controls-expression-of",
                         "controls-transport-of", "controls-state-change-of",
                         "PHOSPHORYLATION", "METHYLATION", "ACETYLATION", "catalysis-precedes")
  undirected <- c("Physical interactions", "BioPlex", "in-complex-with",  'experiments',
                  'database',   "Pathway", "Predicted", "Genetic interactions",
                  "correlation", "negative correlation", "positive correlation",
                  'combined_score', "merged", "intersect", "peptide", 'homology',
                  "Shared protein domains", "interacts-with")

  require(plyr)

  # --- UNDIRECTED EDGES ---
  undir.edges <- edgefile[!(edgefile$interaction %in% directed_priority), ]
  # Sort node pairs for undirected edges
  undir.edges[, 1:2] <- t(apply(undir.edges[, 1:2], 1, function(x) sort(x)))

  # Merge by source/target and make informative label
  undir.merged <- ddply(undir.edges, .(source, target), function(x) {
    data.frame(
      Weight = max(x$Weight, na.rm = TRUE),
      interaction = paste(sort(unique(as.character(x$interaction))), collapse = " | "),
      stringsAsFactors = FALSE
    )
  })
  # ..

  # --- DIRECTED EDGES ---
  dir.edges <- edgefile[edgefile$interaction %in% directed_priority, ]
  # For each directed edge (source, target), choose the top-priority interaction
  dir.merged <- ddply(dir.edges, .(source, target), function(x) {
    ints <- as.character(x$interaction)
    present <- intersect(directed_priority, ints)
    best <- if (length(present) > 0) present[1] else ints[1]
    all_types <- paste(sort(unique(ints)), collapse = " | ")
    data.frame(
      Weight = max(x$Weight, na.rm = TRUE),
      interaction = if (best != all_types) paste0(best, " [", all_types, "]") else best,
      stringsAsFactors = FALSE
    )
  })

  # Combine and clean
  edgefile.merged <- rbind(dir.merged, undir.merged)
  # Remove self-loops
  edgefile.merged <- edgefile.merged[edgefile.merged$source != edgefile.merged$target, ]
  if (exists("remove.autophos")) edgefile.merged <- remove.autophos(edgefile.merged)
  rownames(edgefile.merged) <- NULL
  return(edgefile.merged)
}

# Vizprops helper functions:


# Function to set shape and border color according to node type
setNodeMapping <- function(cf=getTableColumns('node')) {
  require(RCy3)
  setBackgroundColorDefault("#949494") # grey 58
  setNodeShapeDefault("ELLIPSE")
  setNodeColorDefault("#F0FFFF") # azure1
  setNodeSizeDefault(100) # for grey non-data nodes
  setNodeFontSizeDefault( 22)
  setNodeLabelColorDefault("#000000")  # black
  setNodeBorderWidthDefault( 1.8)
  setNodeBorderColorDefault("#888888")  # gray
  setNodeSelectionColorDefault(  "#CC00FF")
  #  NOTE getNodeShapes(cy) returns node shapes in random order!  Define manually
  # there are now 24 nodeType classes: molclasses <- sort(unique(func.key$nodeType)); define manually:
  molclasses <- c("acetyltransferase", "deacetylase", "demethylase", "G protein-coupled receptor", "kinase", "membrane protein", "methyltransferase", "phosphatase", "receptor tyrosine kinase", "RNA binding and processing protein", "RNA binding and splicing protein", "RNA binding protein", "RNA processing and splicing protein", "RNA processing protein", "RNA splicing protein", "SH2 protein", "SH2-SH3 protein", "SH3 protein", "SRC-family kinase", "transcription factor", "transcription regulator", "tyrosine kinase", "tyrosine phosphatase", "undefined")
  #	*12 for RCy2; 9 for RCy3
  nodeshapes <- c("ELLIPSE", "ELLIPSE", "ELLIPSE", "ROUND_RECTANGLE", "OCTAGON", "ROUND_RECTANGLE", "ELLIPSE", "OCTAGON", "ROUND_RECTANGLE", "RECTANGLE", "RECTANGLE", "RECTANGLE", "RECTANGLE", "RECTANGLE", "RECTANGLE", "VEE", "VEE", "TRIANGLE", "DIAMOND", "PARALLELOGRAM",  "PARALLELOGRAM",  "HEXAGON", "HEXAGON", "ELLIPSE")
  nodebordercolors <- gplots::col2hex(c("darkorange", "darkorange3", "blue3", "darkorchid1", "red3", "purple", "blue", "lightgoldenrod1", "violetred", "darkgoldenrod", "burlywood4",  "darkgoldenrod3", "burlywood3","darkgoldenrod4", "burlywood3", "deeppink", "hotpink", "rosybrown1", "red2", "springgreen4", "steelblue4", "red2",  "yellow",  "gray"))
  setNodeShapeMapping ("nodeType", molclasses, nodeshapes, default.shape="ELLIPSE")
  setNodeBorderColorMapping("nodeType", molclasses, nodebordercolors, mapping.type = "d", default.color=gplots::col2hex("gray"))
  nodeborderwidths <- c(12,5,5,16,12,8,12,12,16,6,6,6,6,6,6,12,6,12,16,10,10,12,12,4)
  setNodeBorderWidthMapping(table.column="nodeType", table.column.values=molclasses, widths=nodeborderwidths, mapping.type = "d", default.width=2)
  #setNodeBorderWidthMapping("nodeType", c("deacetylase","acetyltransferase","demethylase","methyltransferase","membrane protein", "receptor tyrosine kinase", "G protein-coupled receptor", "SRC-family kinase", "tyrosine kinase", "kinase", "phosphatase"), widths=c(4,12,4,12,8,16,16,12,12,12,14), 'd',default.width=4)
}

# Function to set edge appearance
# # Use:  setCorrEdgeAppearance()  to change cytoscape front window
#This is now modified to handle merged edges and match colors correctly
setCorrEdgeAppearance <- function() {
  require(RCy3)
  setEdgeLineWidthDefault (3)
  setEdgeColorDefault ( "#FFFFFF")  # white
  edgevalues <- getTableColumns('edge',c('Weight'))
  edgevalues['Weight']<-abs(edgevalues['Weight'])
  edgevalues['Weight']<-lapply(edgevalues['Weight'], function(x) log2(x * 10) + 2)
  names(edgevalues)<-c('Width')
  loadTableData(edgevalues, table = 'edge', table.key.column = 'SUID')
  setEdgeLineWidthMapping('Width', mapping.type = 'p', style.name = 'default')
  setEdgeSelectionColorDefault ( "#FF69B4")  # hotpink

  edgecolors <- gplots::col2hex(c("red", "red", "red", "magenta", "violet", "purple", "darkorange1", "green",
                                  "green2", "green3", "aquamarine2", "aquamarine2", "cyan","cyan",
                                  "turquoise2", "cyan2", "lightseagreen", "gold",  "blue", "yellow",
                                  "slategrey", "darkslategrey", "grey", "black", "orange", "orange2"))
  edgeTypes <- c("PHOSPHORYLATION", "pp", "controls-phosphorylation-of", "controls-expression-of", "controls-transport-of",
                 "controls-state-change-of", "ACETYLATION", "Physical Interactions", "BioPlex", "in-complex-with",
                 'experimental', 'experimental_transferred',  'database', 'database_transferred',   "Pathway",
                 "Predicted", "Genetic interactions", "correlation", "negative correlation", "positive correlation",
                 'combined_score', "merged", "intersect", "peptide", 'homology', "Shared protein domains")
  myarrows <- c ('Arrow', 'Arrow', 'Arrow', 'Arrow', 'Arrow', 'Arrow', "Arrow", 'None', 'None', 'None', 'None','None',
                 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None')

  # ➤ MAIN: assign the highest-priority interaction per edge as a new column
  edge_priority <- edgeTypes  # already in desired order
  edgevalues2 <- getTableColumns('edge',c('interaction','SUID'))
  get_main_interaction <- function(intchar) {
    components <- unlist(strsplit(as.character(intchar), split = "[|]", fixed = FALSE))
    components <- trimws(components)
    found <- edge_priority[edge_priority %in% components]
    if (length(found)) {
      return(found[1])
    } else {
      return(components[1])
    }
  }
  edgevalues2$main_interaction <- sapply(edgevalues2$interaction, get_main_interaction)

  # Write back this single type for each edge (now used for color/arrows)
  loadTableData(edgevalues2, table = 'edge', table.key.column = 'SUID')

  setEdgeTargetArrowMapping('main_interaction', edgeTypes, myarrows, default.shape='None')
  matchArrowColorToEdge('TRUE')
  setEdgeColorMapping('main_interaction', edgeTypes, edgecolors, 'd', default.color="#FFFFFF")
}

# function to sent node size and color to match ratio data. this one uses the Cytoscape table.
setNodeColorToRatios <- function(plotcol){
  require(RCy3)
  cf <- getTableColumns('node')
  if(!(plotcol %in% getTableColumnNames('node'))){
    print (getTableColumnNames('node'))
    cat("\n","\n","\t", "Which attribute will set node size and color?")
    plotcol <- as.character(readLines(con = stdin(), n = 1))
  }
  limits <- range(cf[, plotcol])
  node.sizes     = c (135, 130, 108, 75, 35, 75, 108, 130, 135)
  #	RATIO is plotted
  #	Blue is negative: Yellow positive, Green in middle
  #
  size.control.points = c (-100.0, -15.0, -5.0, 0.0, 5.0, 15.0, 100.0)
  color.control.points = c (-100.0, -10.0, -5.0, -2.25, 0.0, 2.25, 5.0, 10.0, 100.0)
  if(limits[1] < min(size.control.points)) {
    size.control.points = c (limits[1], -15.0, -5.0, 0.0, 5.0, 15.0, 100.0)
    color.control.points = c (limits[1]-1, -10.0, -5.0, -2.25, 0.0, 2.25, 5.0, 10.0, 100.0)
  }
  if(limits[2] > max(size.control.points)) {
    size.control.points = c (limits[1], -15.0, -5.0, 0.0, 5.0, 15.0, limits[2])
    color.control.points = c (limits[1]-1, -10.0, -5.0, -2.25, 0.0, 2.25, 5.0, 10.0, limits[2]+1)
  }
  ratio.colors = c ('#0099FF', '#007FFF','#00BFFF', '#00CCFF', '#00FFFF', '#00EE00', '#FFFF7E', '#FFFF00', '#FFE600', '#FFD700', '#FFCC00')
  setNodeColorMapping (names(cf[plotcol]), color.control.points, ratio.colors, 'c')
  lockNodeDimensions('TRUE')
  setNodeSizeMapping (names(cf[plotcol]), size.control.points, node.sizes, 'c')
  setNodeSelectionColorDefault ( "#CC00FF")
}

# This function works well with data that are normalized by row z-scores
setNodeColorToRowz <- function(plotcol){
  cf <- getTableColumns('node')
  if(!(plotcol %in% getTableColumnNames('node'))){
    print (getTableColumnNames('node'))
    cat("\n","\n","\t", "Which attribute will set node size and color?")
    plotcol <- as.character(readLines(con = stdin(), n = 1))
  }
  limits <- range(cf[, plotcol])
  node.sizes     = c (135, 130, 108, 75, 35, 75, 108, 130, 135)
  #	Row z-score data is plotted
  #	Blue is negative: Yellow positive, Green in middle
  #
  size.control.points = c (-log2(100.0), -log2(15.0), -log2(5.0), 0.0, log2(5.0), log2(15.0), log2(100.0))
  color.control.points = c (-log2(100.0), -log2(10.0), -log2(5.0), -log2(2.25), 0.0, log2(2.25), log2(5.0), log2(10.0), log2(100.0))
  ratio.colors = c ('#0099FF', '#007FFF','#00BFFF', '#00CCFF', '#00FFFF', '#00EE00', '#FFFF7E', '#FFFF00', '#FFE600', '#FFD700', '#FFCC00')
  setNodeColorMapping (names(cf[plotcol]), color.control.points, ratio.colors, 'c')
  lockNodeDimensions('TRUE')
  setNodeSizeMapping (names(cf[plotcol]), size.control.points, node.sizes, 'c')
  setNodeSelectionColorDefault ( "#CC00FF")
}

# This function wraps RCy3 graphing in cytoscape and sets node and edge visual properties

GraphCfn <- function(cfn.edges, cfn.nodes,  Network.title = "CFN", Network.collection = "PTMsToPathways", visual.style.name = "PTMsToPathways.style"){

  if(!requireNamespace("RCy3", quietly = TRUE)){                                                                       # check RCy3 downloaded
    stop("In order to use this function, please download RCy3 as described in the vignette, the readme, and the function documentation.")
  }

  tryCatch({
    RCy3::cytoscapePing()                                                                                               # ensure connection?
  }, error = function(e){
    stop("Could not connect to Cytoscape. Please ensure the Cytoscape app is open and running. Wait until fully loaded, then run RCy3::cytoscapePing() to verify connection.")
  }
  )


  cyscape <- RCy3::createNetworkFromDataFrames(cfn.nodes, cfn.edges, title = Network.title, collection = Network.collection) # create network (not sure if storing it does anything?)


  # CUSTOMIZATION of visual properties

  setNodeMapping()

  setCorrEdgeAppearance()

  RCy3::copyVisualStyle("default", visual.style.name)   # create visual style

  RCy3::setVisualStyle(visual.style.name)                           # set vis style

}

# # This helper function will make wider edges if they are two thin
setEdgeWidths <- function (ffactor=-1.2, log=TRUE)	{
  edgevalues <- RCy3::getTableColumns('edge',c('Weight'))
  edgevalues$Weight <- abs(as.numeric(edgevalues$Weight))
  if (log==FALSE) {
    line.widths <- ffactor*abs(as.numeric(unlist(edgevalues$Weight)))
  }
  if (log==TRUE) {
    line.widths <- log(abs(as.numeric(unlist(edgevalues$Weight)))) + ffactor - min(log(abs(as.numeric(unlist(edgevalues$Weight)))))
  }
  # plot(line.widths ~ unlist(edgevalues$Weight), pch=19, col="blue")
  edgevalues['Width']<-line.widths
  RCy3::loadTableData(edgevalues, table = 'edge', table.key.column = 'SUID')
  RCy3::setEdgeLineWidthMapping("Width", mapping.type = "p",default.width=1.2)
}

# helper function
# For further customization if necessary:
SetStandards <- function(visual.style.name,
                         background.color = "#949494", edge.label.color = '#17202a', node.label.color = '#000000',
                         default.font = "Arial", node.font.size = 20, edge.font.size = 8,
                         edge.line.style = 'SOLID',
                         edge.opacity = 175, edge.label.opacity = 255, border.opacity = 255, node.label.opacity = 255, node.fill.opacity = 255){

  RCy3::setNodeLabelPositionDefault("C", "C", "c", 0, 0, visual.style.name)  # What part of the node label is aligned "C", "NW", "N", "NE", "E", "SE", "S", "SW", "W"
  # to what part of the node graphic       "C", "NW", "N", "NE", "E", "SE", "S", "SW", "W"
  # "l", "r", "c"
  # amount offset in the x direction
  # amount offset in the y direction

  # CUSTOMIZED: user inputs can change the following:

  # colors
  RCy3::setBackgroundColorDefault(background.color, visual.style.name)       # set color of background
  RCy3::setEdgeLabelColorDefault(edge.label.color, visual.style.name)        # set color of edge label
  RCy3::setNodeLabelColorDefault(node.label.color, visual.style.name)        # set color of node name
  # fonts
  RCy3::setEdgeFontFaceDefault(default.font, visual.style.name)              # set font of edge
  RCy3::setNodeFontFaceDefault(default.font, visual.style.name)              # set font of node name (Initial Default UNKNOWN (not TNR or Arial))
  RCy3::setEdgeFontSizeDefault(edge.font.size, visual.style.name)            # set font size of edge (Initial Default 12)
  RCy3::setNodeFontSizeDefault(node.font.size, visual.style.name)            # set font size of node name (Initial Default 12)
  # shape/style
  RCy3::setEdgeLineStyleDefault(edge.line.style, visual.style.name)          # "PARALLEL_LINES", "MARQUEE_EQUAL", "DOT", "EQUAL_DASH", "LONG_DASH", "CONTIGUOUS_ARROW", "MARQUEE_DASH", "DASH_DOT", "BACKWARD_SLASH", "FORWARD_SLASH", "VERTICAL_SLASH", "SOLID", "SEPARATE_ARROW", "MARQUEE_DASH_DOT", "ZIGZAG", "SINEWAVE"
  # opacity
  RCy3::setEdgeOpacityDefault(edge.opacity, visual.style.name)               # set opacity of edge; 0 - 255 w 0 --> translucent
  RCy3::setEdgeLabelOpacityDefault(edge.label.opacity, visual.style.name)    # set opacity of edge label; 0 - 255 w 0 --> translucent
  RCy3::setNodeBorderOpacityDefault(border.opacity, visual.style.name)       # set opacity of border of node; 0 - 255 w 0 --> translucent
  RCy3::setNodeFillOpacityDefault(node.fill.opacity, visual.style.name)      # set opacity of interior color of node; 0 - 255 w 0 --> translucent
  RCy3::setNodeLabelOpacityDefault(node.label.opacity, visual.style.name)    # set opacity of name of node; 0 - 255 w 0 --> translucent

}

# NodeEdgeKey function: Cytoscape legend for styles
NodeEdgeKey <- function(visual.style.name = "PTMsToPathways.style") {
  require(RCy3)

  node_types <- c(
    "acetyltransferase", "deacetylase", "demethylase", "G protein-coupled receptor", "kinase", "membrane protein",
    "methyltransferase", "phosphatase", "receptor tyrosine kinase", "RNA binding and processing protein",
    "RNA binding and splicing protein", "RNA binding protein", "RNA processing and splicing protein",
    "RNA processing protein", "RNA splicing protein", "SH2 protein", "SH2-SH3 protein", "SH3 protein",
    "SRC-family kinase", "transcription factor", "transcription regulator", "tyrosine kinase",
    "tyrosine phosphatase", "undefined"
  )
  n_nodes <- length(node_types)

  edge_types <- c(
    "PHOSPHORYLATION", "pp", "controls-phosphorylation-of", "controls-expression-of", "controls-transport-of",
    "controls-state-change-of", "ACETYLATION", "Physical Interactions", "BioPlex", "in-complex-with",
    "experimental", "experimental_transferred", "database", "database_transferred", "Pathway", "Predicted",
    "Genetic interactions", "correlation", "negative correlation", "positive correlation", "combined_score",
    "merged", "intersect", "peptide", "homology", "Shared protein domains"
  )
  n_edges <- length(edge_types)

  demo_nodes <- data.frame(
    id = node_types,
    nodeType = node_types,
    label = node_types,
    stringsAsFactors = FALSE
  )

  # Prepare non-kinase targets for special edges
  kinase_node <- "kinase"
  non_kinase_targets <- node_types[node_types != kinase_node]

  # Construct edge table
  edge_sources <- character(n_edges)
  edge_targets <- character(n_edges)
  for(i in seq_along(edge_types)) {
    et <- edge_types[i]
    if(et == "PHOSPHORYLATION" || et == "pp") {
      edge_sources[i] <- kinase_node
      edge_targets[i] <- non_kinase_targets[i]  # unique for each, no overlap with kinase
    } else {
      # For all remaining edge types, use pairs that never duplicate exactly (source ≠ target)
      edge_sources[i] <- node_types[(i-1) %% n_nodes + 1]
      edge_targets[i] <- node_types[i %% n_nodes + 1]
      # If by chance this would assign kinase→something again, it's fine, as only PHOSPHORYLATION and pp get special kinases
    }
  }

  edge_table <- data.frame(
    source = edge_sources,
    target = edge_targets,
    interaction = edge_types,
    label = edge_types,
    Weight = seq (from = 2.6, to = 0.1, by = -0.1),
    stringsAsFactors = FALSE
  )

  # Confirm all sources and targets are valid nodes
  stopifnot(all(edge_table$source %in% demo_nodes$id))
  stopifnot(all(edge_table$target %in% demo_nodes$id))

  cy_net <- RCy3::createNetworkFromDataFrames(
    nodes = demo_nodes,
    edges = edge_table,
    title = "Node & Edge Key",
    collection = "PTMsToPathways"
  )

  # Apply visual and mapping styles
  setEdgeFontSizeDefault(20)
  setEdgeLabelMapping("label")
  setNodeMapping()
  setCorrEdgeAppearance()
  RCy3::copyVisualStyle("default", visual.style.name)
  RCy3::setVisualStyle(visual.style.name)

  message("Check the 'Node & Edge Key' network in Cytoscape: kinase sources PHOSPHORYLATION/pp, all edges labelled, all node-edge types illustrated.")
}

#=============================================================================================================================================
# not working:

GraphCfn.v1 <- function(cfn, ptmtable, funckey = funckey, Network.title = "cfn", Network.collection = "PTMsToPathways", visual.style.name = "PTMsToPathways.style",
                        background.color = "#949494", edge.label.color = '#17202a', node.label.color = '#000000',
                        default.font = "Arial", node.font.size = 20, edge.font.size = 8,
                        edge.line.style = 'SOLID',
                        edge.opacity = 175, edge.label.opacity = 255, border.opacity = 255, node.label.opacity = 255, node.fill.opacity = 255
){

  if(!requireNamespace("RCy3", quietly = TRUE)){                                                                       # check RCy3 downloaded
    stop("In order to use this function, please download RCy3 as described in the vignette, the readme, and the function documentation.")
  }

  tryCatch({
    RCy3::cytoscapePing()                                                                                               # ensure connection?
  }, error = function(e){
    stop("Could not connect to Cytoscape. Please ensure the Cytoscape app is open and running. Wait until fully loaded, then run RCy3::cytoscapePing() to verify connection.")
  }
  )

  # ACTUAL CODE AND DATA PROCESSING

  genes <- unique(c(cfn$Gene.1, cfn$Gene.2))                                                                            # get unique names of genes

  ptmnew <- ptmtable[, c("HCC4006_Erlotinib")]                                                                          # just take ptms and another col doesn't matter bc we replace
  rownames(ptmnew) <- sapply(rownames(ptmtable), function(x) strsplit(x, split = " ")[[1]][1])     # Fail (vector!)                     # get just the gene names in the PTM column
  rownames(ptmnew) <- c("score")                                                                                        # rename col

  ptmnew$score <- sapply(1:length(rownames(ptmtable)), function(i) min(as.numeric(ptmtable[-1][i, ]), na.rm = TRUE))    # TAKE MINIMUM SCORE ACROSS PTM COLS

  cfn.edges <- data.frame(matrix(data = 0, nrow = length(rownames(cfn)), ncol = 4), stringsAsFactors = FALSE)           # initialize empty edge df
  cfn.nodes <- data.frame(matrix(data = 0, nrow = length(genes), ncol = 3), stringsAsFactors = FALSE)                   # initialize empty node df

  colnames(cfn.edges) <- c("source", "target", "interaction", "weight")     # Fail (might be different order)                                            # name cols of edge and node tables
  colnames(cfn.nodes) <- c("id", "node.type", "score")

  cfn.edges$source <- cfn$Gene.1                                                            # enter vals for edge table
  cfn.edges$target <- cfn$Gene.2
  cfn.edges$interaction <- cfn$Interaction
  cfn.edges$weight <- format(as.numeric(cfn$PPI.weight), scientific = FALSE, trim = TRUE)   # NOTE: formatting is very important for the edge line width

  # enter vals for node table
  cfn.nodes$id <- genes
  cfn.nodes$node.type <- as.character(sapply(cfn.nodes$id, function(x) funckey$nodeType[which(funckey$Gene.Name == x)]))     # steal node type from funckey
  cfn.nodes$score <- as.numeric(sapply(cfn.nodes$id, function(x) sum(ptmnew$score[which(ptmnew$Gene == x)])))                # steal score from ptmnew

  cyscape <- RCy3::createNetworkFromDataFrames(cfn.nodes, cfn.edges, title = Network.title, collection = Network.collection) # create network (not sure if storing it does anything?)

  RCy3::copyVisualStyle("default", visual.style.name)   # create visual style



  # CUSTOMIZATION FROM HERE ON OUT

  RCy3::setNodeLabelMapping("id", style.name = visual.style.name)   # make the label names appear

  SetStandards(visual.style.name,                                   # we got standards in this joint
               background.color, edge.label.color, node.label.color, default.font, node.font.size, edge.font.size,
               edge.line.style,edge.opacity, edge.label.opacity, border.opacity, node.label.opacity, node.fill.opacity)

  NodeAppMap(visual.style.name)                                     # map the node colors CURRENTLY NOT SIZES

  EdgeAppMap(visual.style.name)                                     # map edge width CURRENTLY NOT COLORS

  NodeBorderMapping(visual.style.name)                              # map node border (color, thickness)

  RCy3::setVisualStyle(visual.style.name)                           # set vis style

}
# Not working:
NodeAppMap <- function(visual.style.name, plotcol){                                                         # maps colors based on score
  cf <- getTableColumns('node')
  if(!(plotcol %in% getTableColumnNames('node'))){
    print (getTableColumnNames('node'))
    cat("\n","\n","\t", "Which attribute will set node size and color?")
    plotcol <- as.character(readLines(con = stdin(), n = 1))
  }
  limits <- range(cf[, plotcol])                                                                   # gets RANGE of scores from table
  node.sizes <- c(135, 130, 108, 75, 35, 75, 108, 130, 135)                                        # set node sizes
  size.control.points = c (-100.0, -15.0, -5.0, 0.0, 5.0, 15.0, 100.0)
  color.control.points = c (-20.0, -10.0, -5.0, -1.0, 0.0, 1.0, 5.0, 10.0, 20.0)                   # Blue is negative, Yellow positive, Green in middle
  if(limits[1] < min(size.control.points)) {
    size.control.points = c (limits[1], -15.0, -5.0, 0.0, 5.0, 15.0, 100.0)
    color.control.points = c (limits[1]-1, -10.0, -5.0, -2.25, 0.0, 2.25, 5.0, 10.0, 100.0)        # if minimum of scores is lower, decrease the lowest (just use -inf?)
  }
  if(limits[2] > max(size.control.points)) {
    size.control.points = c (limits[1], -15.0, -5.0, 0.0, 5.0, 15.0, limits[2])
    color.control.points = c (limits[1]-1, -10.0, -5.0, -2.25, 0.0, 2.25, 5.0, 10.0, limits[2]+1)  # if max of scores is higher, increase the highest (just use inf?)
  }

  node.colors = c('#0099FF', '#007FFF','#00BFFF', '#00CCFF', '#00FFFF', '#00EE00', '#FFFF7E', '#FFFF00', '#FFE600', '#FFD700', '#FFCC00')  # colors line up to the ranges

  RCy3::setNodeColorMapping(plotcol, color.control.points, node.colors, 'c', style.name = visual.style.name)                               # set node color mapping
  RCy3::setNodeSelectionColorDefault ( "#CC00FF", style.name = visual.style.name)                                                          # set selection color
  RCy3::lockNodeDimensions('TRUE', style = visual.style.name)                                                                              # width and height locked together

  RCy3::setNodeSizeMapping(table.column = "score", table.column.values = size.control.points, sizes = node.sizes, mapping.type = 'c', default.size = 103, style.name = visual.style.name) # set node size mapping
}
# helper function
#Not working:
EdgeAppMap <- function(visual.style.name){

  edgevalues <- RCy3::getTableColumns('edge',c('shared name', 'shared interaction', 'weight', 'interaction')) # get edge values
  edgevalues['weight'] <- abs(as.numeric(edgevalues['weight'][[1]]))                                          # make weights pos
  edgevalues['weight'] <- lapply(edgevalues['weight'], function(x) log2(x * 10) + 2)                          # make scale logarithmic

  colnames(edgevalues) <- c('shared name', 'shared interaction', 'width', 'interaction')                      # rename it width bc we're doing passthrough mapping

  RCy3::setEdgeSelectionColorDefault ("#FF69B4", style.name = visual.style.name)                              # selection edge color

  # list of all edge types (you only have SOME in data set, Maddie)
  edgeTypes <- c("PHOSPHORYLATION", "pp", "controls-phosphorylation-of", "controls-expression-of", "controls-transport-of", "controls-state-change-of", "ACETYLATION", "Physical interactions", "BioPlex", "in-complex-with", 'experiments', 'experiments_transferred', 'database', 'database_transfered', "Pathway", "Predicted", "Genetic interactions", "correlation", "negative correlation", "positive correlation", 'combined_score', "merged" , "intersect", "peptide", 'homology', "Shared protein domains")

  # list of colors corresponding to edge types
  edgecolors <- c("#FF0000", "#FF0000", "#FF0000", "#FF00FF", "#EE82EE", "#A020F0", "#FF7F00", "#00FF00", "#00EE00", "#00CD00", "#76EEC6", "#76EEC6", "#00FFFF", "#00FFFF", "#00E5EE", "#00EEEE", "#20B2AA", "#FFD700", "#0000FF", "#FFFF00", "#708090", "#2F4F4F", "#BEBEBE", "#000000", "#FFA500", "#EE9A00")

  # list of arrow options corresponding to edge types
  myarrows <- c ('Arrow', 'Arrow', 'Arrow', 'Arrow', 'Arrow', 'Arrow', "Arrow", 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None')

  # Fix phosphorylation edge color to red with merged edges  < -- not sure if these comments are still relevant
  # work around for misaligned mapping                       < -- ignoring for now Ig

  # OH if it's in shared interaction, make the interaction column that
  # shouldn't this already be so?

  if (length(edgevalues[grep("pp", edgevalues$'shared interaction'), 'interaction']) > 0) {                       # make interaction of pp shared interaction "PHOSPHORYLATION"
    edgevalues[grep("pp", edgevalues$'shared interaction'), 'interaction'] <- "PHOSPHORYLATION"}

  if (length(edgevalues[grep("PHOSPHORYLATION", edgevalues$'shared interaction'), 'interaction']) > 0) {          # make interaction of PHOSPHORYLATION shared interaction "PHOSPHORYLATION"
    edgevalues[grep("PHOSPHORYLATION", edgevalues$'shared interaction'), 'interaction'] <- "PHOSPHORYLATION"}

  if (length(edgevalues[grep("phosphorylation", edgevalues$'shared interaction'), 'interaction']) > 0) {          # make interaction of phosphorylation shared interaction "PHOSPHORYLATION"
    edgevalues[grep("phosphorylation", edgevalues$'shared interaction'), 'interaction'] <- "PHOSPHORYLATION"}

  if (length(edgevalues[grep("ACETYLATION", edgevalues$'shared interaction'), 'interaction']) > 0) {              # make interaction of ACETYLATION shared interaction "ACETYLATION"
    edgevalues[grep("ACETYLATION", edgevalues$'shared interaction'), 'interaction'] <- "ACETYLATION"}

  RCy3::loadTableData(edgevalues, table = 'edge', table.key.column = 'SUID')                                      # load the table

  RCy3::matchArrowColorToEdge('TRUE', style.name = visual.style.name)                                             # match arrow color to edge color (love RCy3 for this)

  RCy3::setEdgeLineWidthMapping('width', mapping.type = 'p', style.name = visual.style.name)                                     # map the edge width
  RCy3::setEdgeTargetArrowMapping('interaction', edgeTypes, myarrows, default.shape='None', style.name = visual.style.name)      # map the target arrow
  RCy3::setEdgeColorMapping('interaction', edgeTypes, edgecolors, 'd', default.color="#FFFFFF", style.name = visual.style.name)  # map the edge color

}





# helper function
# not working:
NodeBorderMapping <- function(visual.style.name){

  # list of molecule classes
  molclasses <- c("unknown", "receptor tyrosine kinase",  "SH2 protein", "SH2-SH3 protein", "SH3 protein", "tyrosine kinase",  "SRC-family kinase", "kinase", "phosphatase", "transcription factor", "RNA binding protein")
  # list of node shapes
  nodeshapes <- c("ELLIPSE","ROUND_RECTANGLE", "VEE", "VEE", "TRIANGLE", "HEXAGON", "DIAMOND", "OCTAGON", "OCTAGON", "PARALLELOGRAM", "RECTANGLE")

  # map molecule classes to node shapes
  RCy3::setNodeShapeMapping ("node.type", molclasses, nodeshapes, default.shape="ELLIPSE", style.name = visual.style.name)
  # map node.type with this list of molecule types to different widths
  RCy3::setNodeBorderWidthMapping("node.type", c("acetyltransferase", "methyltransferase", "membrane protein", "receptor tyrosine kinase", "G protein-coupled receptor", "SRC-family kinase", "tyrosine kinase", "kinase", "phosphatase"),
                                  widths=c(12,12,8,16,16,12,12,12,14), mapping.type = 'd', default.width = 4, style.name = visual.style.name)

  # map the different molecule types to these different node border colors
  RCy3::setNodeBorderColorMapping(
    table.column = "node.type",
    table.column.values = c("deacetylase", "acetyltransferase", "demethylase", "methyltransferase", "membrane protein", "kinase", "tyrosine kinase", "SRC-family kinase", "phosphatase", "tyrosine phosphatase", "G protein-coupled receptor", "receptor tyrosine kinase"),
    colors = c("#FF8C00", "#FF8C00", "#005CE6", "#005CE6", "#6600CC", "#EE0000", "#EE0000", "#EE0000", "#FFEC8B", "#FFEC8B", "#BF3EFF", "#BF3EFF"),
    mapping.type = 'd',
    default.color = '#abb2b9',
    style.name = visual.style.name
  )
}

# Graph CoCluster Correlation Network
#
# Creates a cytoscape graph of the cocluster correlation network. Ensure that you have the cytoscape app open and the RCy3 package downloaded and libraried.
#
# If error occurs, run cytoscapePing() to ensure connection to the Cytoscape Interface and try again.
#
# @param ptm.cccn A matrix showing strength of relationships between post-translational modifications using common clusters between the three distance metrics
# @param ptmtable A dataset for post-translational modifications. Formatted with numbered rows, and the first column containing PTM names. The rest of the column names should be drugs. Values are numeric values that represent how much the PTM has reacted to the drug.
# @param funckey A table graphing gene names to type of protein; defaults to internal database at PTMsToPathways::ex.funckey
# @param Network.title Desired title for the created Cytoscape Network; defaults to "cfn"
# @param Network.collection Desired name for the collection created on Cytoscape in which the network will reside; defaults to "PTMsToPathways"
# @param visual.style.name Desired name for the visual style created on Cytoscape; defaults to "PTMsToPathways.style"
#
# @param background.color Hex code of background color of graph; defaults to '#fcf3cf'
# @param edge.label.color Hex code of edge label color of graph; defaults to '#17202a'
# @param node.label.color Hex code of node label color of graph; defaults to '#145a32'
#
# @param default.font Font style of edge and node names; defaults to "Times New Roman"
# @param node.font.size Font size of the node name; defaults to 12
# @param edge.font.size Font size of the edge name; defaults to 8
#
# @param edge.line.style Type of edge style; defaults to "SOLID"; options include: "PARALLEL_LINES", "MARQUEE_EQUAL", "DOT", "EQUAL_DASH", "LONG_DASH", "CONTIGUOUS_ARROW", "MARQUEE_DASH", "DASH_DOT", "BACKWARD_SLASH", "FORWARD_SLASH", "VERTICAL_SLASH", "SOLID", "SEPARATE_ARROW", "MARQUEE_DASH_DOT", "ZIGZAG", "SINEWAVE"
#
# @param node.size Size of the node; defaults to 50. PLEASE NOTE: width and height can be changed independently using RCy3 directly (first run lockNodeDimensions(FALSE) and then setNodeWidthDefault() and setNodeHeightDefault())
# @param edge.width Width of the edge line; defaults to 2
# @param border.width Width of the border of the node; defaults to 1
#
# @param edge.opacity Opacity of the edge line on a scale of 0 - 255 with 0 being transparent; defaults to 175
# @param edge.label.opacity Opacity of the edge label on a scale of 0 - 255 with 0 being transparent; defaults to 255
# @param border.opacity Opacity of the node border on a scale of 0 - 255 with 0 being transparent; defaults to 255
# @param node.label.opacity Opacity of the node label on a scale of 0 - 255 with 0 being transparent; defaults to 255
# @param node.fill.opacity Opacity of the node fill on a scale of 0 - 255 with 0 being transparent; defaults to 255
#
# @return A cytoscape graph of the cluster filtered network
# @export
#
# @examples
# # GraphCFN(ex.cfn)
# # See vignette for default graph
#GraphPTMCccn <- function(ptm.cccn, ptmtable, funckey = PTMsToPathways::ex.funckey, Network.title = "cfn", Network.collection = "PTMsToPathways", visual.style.name = "PTMsToPathways.style",
#                     background.color = "#949494", edge.label.color = '#17202a', node.label.color = '#000000',
#                     default.font = "Times New Roman", node.font.size = 20, edge.font.size = 8,
#                     edge.line.style = 'SOLID',
#                     edge.opacity = 175, edge.label.opacity = 255, border.opacity = 255, node.label.opacity = 255, node.fill.opacity = 255
#                     ){
#
#  if(!requireNamespace("RCy3", quietly = TRUE)){                                                                       # check RCy3 downloaded
#    stop("In order to use this function, please download RCy3 as described in the vignette, the readme, and the function documentation.")
#    }
#
#  RCy3::cytoscapePing()                                                                                                 # ensure connection?
#
#  # ACTUAL CODE AND DATA PROCESSING
#
#  ptms.list <- unique(c(rownames(ptm.cccn), colnames(ptm.cccn)))                       # get unique names of ptms
#  ptm.cccn[which(is.na(ptm.cccn))] <- 0                                                # remove NAs
#
#  ptmnew <- ptmtable[, c("PTM", "HCC4006_Erlotinib")]                                  # just take ptms and another col doesn't matter bc we replace
#  colnames(ptmnew) <- c("PTM", "score")                                                # rename cols
#
#  ptmnew$score <- sapply(1:length(rownames(ptmtable)), function(i) min(as.numeric(ptmtable[-1][i, ]), na.rm = TRUE))         # TAKE MINIMUM SCORE ACROSS PTM COLS
#
#  ptm.cccn.edges <- data.frame(matrix(data = 0, nrow = length(rownames(ptm.cccn))**2, ncol = 4), stringsAsFactors = FALSE)   # initialize empty edge df
#  ptm.cccn.nodes <- data.frame(matrix(data = 0, nrow = length(ptms.list), ncol = 3), stringsAsFactors = FALSE)                # initialize empty node df
#
#  colnames(ptm.cccn.edges) <- c("source", "target", "interaction", "weight")                                                 # name cols of edge and node tables
#  colnames(ptm.cccn.nodes) <- c("id", "node.type", "score")
#
#  edge.grid <- expand.grid(
#    row = rownames(ptm.cccn),
#    col = colnames(ptm.cccn),
#    stringsAsFactors = FALSE
#  )
#  values <- mapply(function(r, c) ptm.cccn[r, c], edge.grid$row, edge.grid$col)
#
#  ptm.cccn.edges$source <- edge.grid[, 1]
#  ptm.cccn.edges$target <- edge.grid[, 2]
#  ptm.cccn.edges$interaction <- sapply(values, function(x) if(x > 0){return("positive")} else {return("negative")})
#  ptm.cccn.edges$weight <- sapply(values, function(x)abs(x))
#
#  ptm.cccn.edges <- ptm.cccn.edges[which(!(ptm.cccn.edges$weight == 0)), ]
#  ptm.cccn.edges$weight <- format(as.numeric(ptm.cccn.edges$weight), scientific = FALSE, trim = TRUE)   # NOTE: formatting is very important for the edge line width
#
#  # enter vals for node table
#  ptm.cccn.nodes$id <- ptms.list
#  ptm.cccn.nodes$node.type <- as.character(sapply(ptm.cccn.nodes$id, function(x) funckey$nodeType[which(funckey$Gene.Name == strsplit(x, split = ' ')[[1]][1])]))   # steal node type from funckey
#  ptm.cccn.nodes$score <- as.numeric(sapply(ptm.cccn.nodes$id, function(x) sum(ptmnew$score[which(ptmnew$Gene == strsplit(x, split = ' ')[[1]][1])])))              # steal score from ptmnew
#
#  cyscape <- createNetworkFromDataFrames(ptm.cccn.nodes, ptm.cccn.edges, title = Network.title, collection = Network.collection)     # create network (not sure if storing it does anything?)
#
#  copyVisualStyle("default", visual.style.name)   # create visual style
#
#}
