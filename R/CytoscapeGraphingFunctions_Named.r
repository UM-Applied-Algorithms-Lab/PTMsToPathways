#' @title Graphing and Manipulating Cluster Filtered Network
#'
#' @description Creates a cytoscape graph of the cluster filtered network. Ensure that you have the Cytoscape app open and the RCy3 package downloaded.
#' The package RCy3 is required for many of the functions in this script. To download, run:
#' - if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")
#' - BiocManager::install("RCy3")
#' It is also recommended (but not required) that users load RCy3 with library(RCy3) to access its functions directly.
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
getFuncKey <- function(funckey.filename = "FunctionKey.txt") {
  if (is.character(funckey.filename)) {
    if (!file.exists(funckey.filename)) {
      stop(paste(funckey.filename, "not found. Please check your working directory."))
    }
    funckey <- read.table(
      file = funckey.filename,
      header = TRUE,
      sep = "\t",
      comment.char = "#",
      na.strings = "",
      quote = "",
      stringsAsFactors = FALSE,
      fill = TRUE
    )
    return(funckey)
  }
}

# ... (other helper functions unchanged)

setNodeMapping <- function(cf=RCy3::getTableColumns('node')) {
  # require(RCy3)
  RCy3::setBackgroundColorDefault("#949494") # grey 58
  RCy3::setNodeShapeDefault("ELLIPSE")
  RCy3::setNodeColorDefault("#F0FFFF") # azure1
  RCy3::setNodeSizeDefault(100) # for grey non-data nodes
  RCy3::setNodeFontSizeDefault(22)
  RCy3::setNodeLabelColorDefault("#000000")  # black
  RCy3::setNodeBorderWidthDefault(1.8)
  RCy3::setNodeBorderColorDefault("#888888")  # gray
  RCy3::setNodeSelectionColorDefault("#CC00FF")
  molclasses <- c("acetyltransferase", "deacetylase", "demethylase", "G protein-coupled receptor", "kinase", "membrane protein", "methyltransferase", "phosphatase", "receptor tyrosine kinase", "RNA binding and processing protein", "RNA binding and splicing protein", "RNA binding protein", "RNA processing and splicing protein", "RNA processing protein", "RNA splicing protein", "SH2 protein", "SH2-SH3 protein", "SH3 protein", "SRC-family kinase", "transcription factor", "transcription regulator", "tyrosine kinase", "tyrosine phosphatase", "undefined")
  nodeshapes <- c("ELLIPSE", "ELLIPSE", "ELLIPSE", "ROUND_RECTANGLE", "OCTAGON", "ROUND_RECTANGLE", "ELLIPSE", "OCTAGON", "ROUND_RECTANGLE", "RECTANGLE", "RECTANGLE", "RECTANGLE", "RECTANGLE", "RECTANGLE", "RECTANGLE", "VEE", "VEE", "TRIANGLE", "DIAMOND", "PARALLELOGRAM", "PARALLELOGRAM", "HEXAGON", "HEXAGON", "ELLIPSE")
  nodebordercolors <- gplots::col2hex(c("darkorange", "darkorange3", "blue3", "darkorchid1", "red3", "purple", "blue", "lightgoldenrod1", "violetred", "darkgoldenrod", "burlywood4", "darkgoldenrod3", "burlywood3","darkgoldenrod4", "burlywood3", "deeppink", "hotpink", "rosybrown1", "red2", "springgreen4", "steelblue4", "red2", "yellow", "gray"))
  RCy3::setNodeShapeMapping("nodeType", molclasses, nodeshapes, default.shape="ELLIPSE")
  RCy3::setNodeBorderColorMapping("nodeType", molclasses, nodebordercolors, mapping.type = "d", default.color=gplots::col2hex("gray"))
  nodeborderwidths <- c(12,5,5,16,12,8,12,12,16,6,6,6,6,6,6,12,6,12,16,10,10,12,12,4)
  RCy3::setNodeBorderWidthMapping(table.column="nodeType", table.column.values=molclasses, widths=nodeborderwidths, mapping.type = "d", default.width=2)
}

setCorrEdgeAppearance <- function() {
  # require(RCy3)
  RCy3::setEdgeLineWidthDefault(3)
  RCy3::setEdgeColorDefault("#FFFFFF")  # white
  edgevalues <- RCy3::getTableColumns('edge',c('Weight'))
  edgevalues['Weight']<-abs(edgevalues['Weight'])
  edgevalues['Weight']<-lapply(edgevalues['Weight'], function(x) log2(x * 10) + 2)
  names(edgevalues)<-c('Width')
  RCy3::loadTableData(edgevalues, table = 'edge', table.key.column = 'SUID')
  RCy3::setEdgeLineWidthMapping('Width', mapping.type = 'p', style.name = 'default')
  RCy3::setEdgeSelectionColorDefault("#FF69B4")  # hotpink
  edgecolors <- gplots::col2hex(c("red", "red", "red", "magenta", "violet", "purple", "darkorange1", "green", "green2", "green3", "aquamarine2", "aquamarine2", "cyan","cyan",  "turquoise2", "cyan2", "lightseagreen", "gold",  "blue", "yellow", "slategrey", "darkslategrey", "grey", "black", "orange", "orange2"))
  edgeTypes <- c("PHOSPHORYLATION", "pp", "controls-phosphorylation-of", "controls-expression-of", "controls-transport-of",  "controls-state-change-of", "ACETYLATION", "Physical Interactions", "BioPlex", "in-complex-with",  'experimental', 'experimental_transferred',  'database', 'database_transferred',   "Pathway", "Predicted", "Genetic interactions", "correlation", "negative correlation", "positive correlation",  'combined_score', "merged" , "intersect", "peptide", 'homology', "Shared protein domains")
  myarrows <- c ('Arrow', 'Arrow', 'Arrow', 'Arrow', 'Arrow', 'Arrow', "Arrow", 'None', 'None', 'None', 'None','None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None')
  edgevalues2 <- RCy3::getTableColumns('edge',c('interaction','SUID'))
  get_main_interaction <- function(intchar) {
    components <- unlist(strsplit(as.character(intchar), split = "[|]", fixed = FALSE))
    components <- trimws(components)
    found <- edgeTypes[edgeTypes %in% components]
    if (length(found)) {
      return(found[1])
    } else {
      return(components[1])
    }
  }
  edgevalues2$main_interaction <- sapply(edgevalues2$interaction, get_main_interaction)
  RCy3::loadTableData(edgevalues2, table = 'edge', table.key.column = 'SUID')
  RCy3::setEdgeTargetArrowMapping('main_interaction', edgeTypes, myarrows, default.shape='None')
  RCy3::matchArrowColorToEdge('TRUE')
  RCy3::setEdgeColorMapping('main_interaction', edgeTypes, edgecolors, 'd', default.color="#FFFFFF")
}

# ... (other helper/utility and data formatting functions unchanged)

GraphCfn <- function(cfn.edges, cfn.nodes,  Network.title = "CFN", Network.collection = "PTMsToPathways", visual.style.name = "PTMsToPathways.style"){
  if(!requireNamespace("RCy3", quietly = TRUE)){
    stop("In order to use this function, please download RCy3 as described in the vignette, the readme, and the function documentation.")
  }
  tryCatch({
    RCy3::cytoscapePing()
  }, error = function(e){
    stop("Could not connect to Cytoscape. Please ensure the Cytoscape app is open and running. Wait until fully loaded, then run RCy3::cytoscapePing() to verify connection.")
  })
  cyscape <- RCy3::createNetworkFromDataFrames(cfn.nodes, cfn.edges, title = Network.title, collection = Network.collection)
  RCy3::copyVisualStyle("default", visual.style.name)
  setNodeMapping()
  setCorrEdgeAppearance()
  RCy3::setVisualStyle(visual.style.name)
}

# ... (rest of your script and documentation remains unchanged)

NodeEdgeKey <- function(visual.style.name = "PTMsToPathways.style") {
  # require(RCy3)
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
  kinase_node <- "kinase"
  non_kinase_targets <- node_types[node_types != kinase_node]
  edge_sources <- character(n_edges)
  edge_targets <- character(n_edges)
  for(i in seq_along(edge_types)) {
    et <- edge_types[i]
    if(et == "PHOSPHORYLATION" || et == "pp") {
      edge_sources[i] <- kinase_node
      edge_targets[i] <- non_kinase_targets[i]
    } else {
      edge_sources[i] <- node_types[(i-1) %% n_nodes + 1]
      edge_targets[i] <- node_types[i %% n_nodes + 1]
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
  stopifnot(all(edge_table$source %in% demo_nodes$id))
  stopifnot(all(edge_table$target %in% demo_nodes$id))
  cy_net <- RCy3::createNetworkFromDataFrames(
    nodes = demo_nodes,
    edges = edge_table,
    title = "Node & Edge Key",
    collection = "PTMsToPathways"
  )
  RCy3::setEdgeFontSizeDefault(20)
  RCy3::setEdgeLabelMapping("label")
  setNodeMapping()
  setCorrEdgeAppearance()
  RCy3::copyVisualStyle("default", visual.style.name)
  RCy3::setVisualStyle(visual.style.name)
  message("Check the 'Node & Edge Key' network in Cytoscape: kinase sources PHOSPHORYLATION/pp, all edges labelled, all node-edge types illustrated.")
}
