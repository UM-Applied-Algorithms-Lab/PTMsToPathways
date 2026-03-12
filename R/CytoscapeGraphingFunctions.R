# ---------- NOTES TO SELF ----------



# VERY IMPORTANT TODO
# fix all of the documentation. No roxygen skeleton actually has anything
# slightly less important: helper functions should not be exported.



# ---------- QUESTION FUNCTIONS ----------



# MADDIE'S NOTE: Not mentioned in vignette, but I think it should be
# also probably needs documentation
# Function to Import Function Key
getFuncKey <- function(funckey.filename = "FunctionKey.txt") {
  if (is.character(funckey.filename)) {
    if (!file.exists(funckey.filename)) {
      stop(paste(funckey.filename, "not found. Please check your working directory."))
    }
    funckey <- utils::read.table(
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

# MADDIE'S NOTE: there's a .0 version that is used, but this is not referenced
# Unneccessary?
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

# MADDIE'S NOTE: DO WE REALLY NEED THIS?
# Temporarily removed roxygen skeleton -- Needs a name if reinstated and do we need to export?
# This function names the edges the way Cytoscape does so they can be selected:
# @param edgefile
#
# @export
getCyEdgeNames <- function(edgefile) {
  cyedges <- mapply(paste, edgefile$source, " (", edgefile$interaction, ") ", edgefile$target, sep="")
  return(cyedges)
}

# MADDIE'S NOTE: DO WE NEED THIS WHAT IS IT FOR
# Temporarily removed roxygen skeleton -- Needs a name if reinstated and do we need to export?
# Function to extract node names from, e.g.:
#	"ValidatedObjectAndEditString: validatedObject=ERBB3, editString=null"
# @param test
#
# @export
strip.cy.goo <- function(test) {
  t1 <- unlist(strsplit(test, "Object="))
  t2 <- sapply(t1[2:length(t1)], function (x) (strsplit(x, ", ")))
  return(plyr::ldply(t2)$V1)
}

# MADDIE'S NOTE: Not used anywhere, not mentioned in vignette
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

# MADDIE'S NOTE: NEED THIS? NOT USED ANYWHERE NOR MENTIONED IN THE VIGNETTE
# This function works well with node data that are normalized by row z-scores
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
  RCy3::setNodeColorMapping (names(cf[plotcol]), color.control.points, ratio.colors, 'c')
  RCy3::lockNodeDimensions('TRUE')
  RCy3::setNodeSizeMapping (names(cf[plotcol]), size.control.points, node.sizes, 'c')
  RCy3::setNodeSelectionColorDefault ( "#CC00FF")
}

# MADDIE'S NOTE: not used anywhere, very simple function, seems unneccessary
# Temporarily removed roxygen skeleton -- Needs a name if reinstated and do we need to export?
# Set difference for vectors using custom infix operator
#
# Returns the elements in vector x that are not in vector y.
#
# @param x A vector.
# @param y A vector to compare.
# @return Elements of x that are not in y.
# @export
# @examples
# 1:5 %w/o% c(2, 4)
# letters[1:5] %w/o% c("b", "d")
"%w/o%" <- function(x, y) {
  x[!x %in% y] # x without y
}

# MADDIE'S NOTE: again not used: what is it for? do we need? simple func
outersect <- function(x, y) {
  sort(c(setdiff(x, y),
         setdiff(y, x)))
}



# ---------- USER FUNCTIONS ----------



#' Filter Edges Inbetween
#'
#' This function narrows the search only for edges between two sets of nodes
#' @param nodes1 PLACEHOLDER PARAMETER DESCRIPTION
#' @param nodes2 PLACEHOLDER PARAMETER DESCRIPTION
#' @param edge.file PLACEHOLDER PARAMETER DESCRIPTION
#' @param convert PLACEHOLDER PARAMETER DESCRIPTION
#'
#' @export
filter.edges.between <- function(nodes1, nodes2, edge.file, convert=FALSE) {
  sel.edges1 <- edge.file[edge.file[,1] %in% nodes1 & edge.file[,2]%in% nodes2,]
  sel.edges2 <- edge.file[edge.file[,1] %in% nodes2 & edge.file[,2]%in% nodes1,]
  sel.edges <- rbind(sel.edges1, sel.edges2)
  if(dim(sel.edges)[1] == 0) {return(NA)} else return(sel.edges)
}

#' Connect All Nodes
#'
#' Use all_shortest_paths and returns just the edge file
#'
#' @param nodepair PLACEHOLDER PARAMETER DESCRIPTION
#' @param ig.graph PLACEHOLDER PARAMETER DESCRIPTION
#' @param edgefile PLACEHOLDER PARAMETER DESCRIPTION
#' @param newgraph PLACEHOLDER PARAMETER DESCRIPTION
#'
#' @export
connectNodes.all <- function(nodepair, ig.graph=NULL, edgefile, newgraph=FALSE)	{
  if (newgraph==TRUE) {
    ig.graph <- igraph::graph_from_data_frame(edgefile, directed=FALSE) }
  sp <- igraph::all_shortest_paths(graph= ig.graph, from=nodepair[1], to=nodepair[2], mode="all")
  path.nodeslist <-  unique(lapply(sp[[1]], names))
  edges.list <- lapply(path.nodeslist, filter.edges.0, edge.file=edgefile)
  path.edges <- unique(plyr::ldply(edges.list))
  return(path.edges)
}


#' Graph Cytoscape PCN Pathways
#'
#' For graphing Pathway Crosstalk Networks (PCNs) in Cytoscape
#' @param PCN PLACEHOLDER PARAMETER DESCRIPTION
#' @param net.name PLACEHOLDER PARAMETER DESCRIPTION
#' @param Jaccard.edges PLACEHOLDER PARAMETER DESCRIPTION
#'
#' @export
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

#' Make Cytoscape Node File
#'
#' Makes a nodefile to be entered into Cytoscape
#'
#' @param edge.file PLACEHOLDER PARAMETER DESCRIPTION
#' @param funckey PLACEHOLDER PARAMETER DESCRIPTION
#' @param ptmtable PLACEHOLDER PARAMETER DESCRIPTION
#' @param include.gene.data PLACEHOLDER PARAMETER DESCRIPTION
#' @param include.coclustered.PTMs PLACEHOLDER PARAMETER DESCRIPTION
#'
#' @export
make.cytoscape.node.file <- function(edge.file, funckey, ptmtable, include.gene.data = FALSE, include.coclustered.PTMs = FALSE) {
  # Step 1: get unique nodes from edge file
  edge_nodes <- unique(c(as.character(edge.file[, 1]), as.character(edge.file[, 2])))
  # check if there are PTMs in edgefile
  peptides <- edge.file[which(edge.file$interaction == "peptide"), "target"]
  if(length (peptides) > 0)  {
    edge_nodes <- edge_nodes %w/o% peptides
  }


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
  # For un-annotated genes:
  node_file[is.na(node_file)] <- ""

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
  if (include.coclustered.PTMs == TRUE) {
    edge.file.with.ptms <- get.co.clustered.ptms(edge.file)
    if(length (peptides) > 0)  {
      edge.file.with.ptms <- unique(rbind(edge.file.with.ptms, edge.file[which(edge.file$interaction == "peptide"), ]))
    }
    node_file <- harmonize_cfs(edge.file.with.ptms, genecf = node_file, ptmtable = ptmtable)
  }
  return(unique(node_file))
}

#' Get CoClustered PTMs
#'
#' This function takes an edge file, retrieves only co-clustered PTM CCCN edges and links them to their gene nodes, returning an edge file
#'
#' @param edge.file PLACEHOLDER PARAMETER DESCRIPTION
#'
#' @export
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

#' Merge Edges
#'
#' Function to merge edges and declutter the Cytoscape network
#' @param edgefile PLACEHOLDER PARAMETER DESCRIPTION
#'
#' @export
mergeEdges <- function(edgefile) {
  # Define edge type priorities for directed edges
  directed_priority <- c("psp", "controls-phosphorylation-of", "controls-expression-of",
                         "controls-transport-of", "controls-state-change-of",
                         "PHOSPHORYLATION", "METHYLATION", "ACETYLATION", "catalysis-precedes")
  undirected <- c("Physical interactions", "BioPlex", "in-complex-with",  'experiments',
                  'database',   "Pathway", "Predicted", "Genetic interactions",
                  "correlation", "negative correlation", "positive correlation",
                  'combined_score', "merged", "intersect", "peptide", 'homology',
                  "Shared protein domains", "interacts-with")

  # --- UNDIRECTED EDGES ---
  undir.edges <- edgefile[!(edgefile$interaction %in% directed_priority), ]
  # Sort node pairs for undirected edges
  undir.edges[, 1:2] <- t(apply(undir.edges[, 1:2], 1, function(x) sort(x)))

  # Merge by source/target and make informative label
  undir.merged <- plyr::ddply(undir.edges, c("source", "target"), function(x) {
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
  dir.merged <- plyr::ddply(dir.edges, c("source", "target"), function(x) {
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

#' Extracts co-clustered PTM and gene network from a cluster filtered network object.
#'
#' This function takes a list of PTM (post-translational modification) site IDs and a cluster-filtered network,
#' extracts the genes from unambiguous and ambiguous PTM entries, then returns the co-clustered subnetwork.
#'
#' @param ptms Character vector of PTM site strings (e.g., \"TP53 p S15\")
#' @param cfn List or data frame representing the cluster filtered network (default: global cfn.merged)
#' @param pepsep Character used to split ambiguous PTM entries (default: \";\")
#'
#' @return Subnetwork object with co-clustered PTMs and genes
#' @export
#' @examples
#' # Example input objects
#' ptms <- c("TP53 p S15", "BRCA1 p S123; BRCA1 p T124", "MDM2 p S200")
#' # Example network
#' # edge list with 'source', 'target', and cluster info, could be data.frame or igraph
#' cfn.merged <- data.frame(source = c("TP53", "BRCA1", "BRCA1", "MDM2"),
#'                          target = c("BRCA1", "MDM2", "TP53", "TP53"),
#'                          cluster = c(1,1,2,1))
#' # Suppose filter.edges.0 and get.co.clustered.ptms are also defined and loaded
#' # The following returns the gene/PTM subnetwork
#' res <- ptms_to_cfn(ptms, cfn = cfn.merged, pepsep = ";")
#' print(res)
ptms_to_cfn <- function(ptms, cfn = cfn.merged, pepsep = ";") {
  ambig.ptms <- ptms[grep(";", ptms)]
  if (length(ambig.ptms) > 0) {

    sub.ptms <- ptms %w/o% ambig.ptms
    all_genes <- unique(sapply(sub.ptms,  function (x) unlist(strsplit(x, " ",  fixed=TRUE))[1]))

    for (i in 1:length(ambig.ptms) ) {
      # Normalize spacing
      ptm_entry <- gsub("[;,]\\s*", ";", ambig.ptms)
      # Split ambiguous entry
      ptm_parts <- strsplit(ptm_entry, pepsep, fixed = TRUE)[[1]]
      # Extract gene names (string before first space)
      ambig.genes <- sapply(ptm_parts, function(part) strsplit(part, " ", fixed = TRUE)[[1]][1])

      all_genes <- unique(c(all_genes, ambig.genes))
    }
  } else {
    all_genes  <- unique(sapply(ptms,  function (x) unlist(strsplit(x, " ",  fixed=TRUE))[1]))
  }

  sub.cfn <- filter.edges.0(all_genes, cfn.merged)
  sub.cfn.cccn <- get.co.clustered.ptms(sub.cfn)
  return(sub.cfn.cccn)
}

#' Graph Cluster Filtered Network
#' This function wraps RCy3 graphing in Cytoscape and sets node and edge visual properties
#' @param cfn.edges PLACEHOLDER PARAMETER DESCRIPTION
#' @param cfn.nodes PLACEHOLDER PARAMETER DESCRIPTION
#' @param Network.title PLACEHOLDER PARAMETER DESCRIPTION
#' @param Network.collection PLACEHOLDER PARAMETER DESCRIPTION
#' @param visual.style.name PLACEHOLDER PARAMETER DESCRIPTION
#'
#' @export
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

#' Set Edge Widths
#'
#' This helper function will make wider edges if they are two thin or narrow if to thick
#'
#' @param ffactor PLACEHOLDER PARAMETER DESCRIPTION
#' @param log PLACEHOLDER PARAMETER DESCRIPTION
#'
#' @export
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

#' NodeEdgeKey
#'
#' Cytoscape legend for styles
#'
#' @param visual.style.name Name of the visual style that will be saved in the Cytoscape Interface
#'
#' @export
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
    "PHOSPHORYLATION", "psp", "controls-phosphorylation-of", "controls-expression-of", "controls-transport-of",
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
    if(et == "PHOSPHORYLATION" || et == "psp") {
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



# ---------- HELPER FUNCTIONS ----------



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

# Helper function to generate node file for Cytoscape:
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

# Helper function to remove self-loops
remove.autophos <- function(edgefile)	{
  auto <- which (as.character(edgefile$source) == as.character(edgefile$target))
  if (length(auto) > 0) {
    newedgefile <- edgefile[-auto,] } else newedgefile <- edgefile
    return (newedgefile)
}

# Helper function for connecting PTMs
# (called "peptides" with their parent protein nodes (called Gene.Name))
make.genepep.edges <- function(peptide.edgefile) {
  peptides <- unique(c(peptide.edgefile$source, peptide.edgefile$target))
  genenames <- sapply(peptides,  function (x) unlist(strsplit(x, " ",  fixed=TRUE))[1])
  net.gpe <- data.frame(source=genenames, target=peptides, Weight=0.25, interaction="peptide")
  net.gpe <- remove.autophos(net.gpe)
  return(net.gpe)
}

# Helper function to harmonize gene and peptide data for networks
#  - for graphing combined CFN/CCCN graphs
# Ensures that for Cytoscape, "id" is used for node name columns
harmonize_cfs <- function(edge.file.with.ptms, genecf, ptmtable) {
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
  # Add annotation from function key
  annotation_cols <- c(
    "Gene.Name", "Approved.Name", "Hugo.Gene.Family", "HPRD.Function",
    "nodeType", "Domains", "Compartment", "Compartment.Overview"
  )

  pepcf.funcs <- merge(
    pepcf,
    funckey[, annotation_cols, drop = FALSE],
    by = "Gene.Name",
    all.x = TRUE
  )
  # For un-annotated genes:
  pepcf.funcs[is.na(pepcf.funcs)] <- ""
  # Harmonize
  cf <- merge(genecf.new, pepcf.funcs, all=TRUE)
  if(any(grepl("Gene.Name.1", names(cf)))) {cf <- cf[,-which(names(cf)=="Gene.Name.1")]}
  if(any(is.na(cf))) {cf[is.na(cf)] <- 0}
  # Make sure "id" is in the first column
  cf <- cf[,c("id", "Gene.Name", "Node.ID", "parent", names(cf) %w/o% c("id", "Gene.Name", "Node.ID", "parent"))]
  return(cf)
}

# Vizprops helper functions:
# Function to set shape and border color according to node type
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

# Helper function to set edge appearance
# Use: setCorrEdgeAppearance() to change Cytoscape front window
# This is now modified to handle merged edges and match colors correctly
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
  edgeTypes <- c("PHOSPHORYLATION", "psp", "controls-phosphorylation-of", "controls-expression-of", "controls-transport-of",  "controls-state-change-of", "ACETYLATION", "Physical Interactions", "BioPlex", "in-complex-with",  'experimental', 'experimental_transferred',  'database', 'database_transferred',   "Pathway", "Predicted", "Genetic interactions", "correlation", "negative correlation", "positive correlation",  'combined_score', "merged" , "intersect", "peptide", 'homology', "Shared protein domains")
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
