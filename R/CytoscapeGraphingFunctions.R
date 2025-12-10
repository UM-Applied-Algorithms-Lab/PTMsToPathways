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

# helper functions for networks in R:

# function to filter networks to include only selected nodes and those with edges to them
#' @param nodenames
#'
#' @param edge.file
#'
#' @export
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
#' @param nodenames
#'
#' @param edge.file
#'
#' @export
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

# This function narrows the search only for edges between two sets of nodes
#' @param nodes1
#'
#' @param nodes2
#' @param edge.file
#' @param convert
#'
#' @export
filter.edges.between <- function(nodes1, nodes2, edge.file, convert=FALSE) {
  sel.edges1 <- edge.file[edge.file[,1] %in% nodes1 & edge.file[,2]%in% nodes2,]
  sel.edges2 <- edge.file[edge.file[,1] %in% nodes2 & edge.file[,2]%in% nodes1,]
  sel.edges <- rbind(sel.edges1, sel.edges2)
  if(dim(sel.edges)[1] == 0) {return(NA)} else return(sel.edges)
}

# connectNodes.all  uses all_shortest_paths and returns just the edge file
#' @param nodepair
#'
#' @param ig.graph
#' @param edgefile
#' @param newgraph
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
# This function names the edges the way Cytoscape does so they can be selected:
#' @param edgefile
#'
#' @export
getCyEdgeNames <- function(edgefile) {
  cyedges <- mapply(paste, edgefile $source, " (", edgefile $interaction, ") ", edgefile $target, sep="")
  return(cyedges)
}
# Function to extract node names from, e.g.:
#	"ValidatedObjectAndEditString: validatedObject=ERBB3, editString=null"
#' @param test
#'
#' @export
strip.cy.goo <- function(test) {
  t1 <- unlist(strsplit(test, "Object="))
  t2 <- sapply(t1[2:length(t1)], function (x) (strsplit(x, ", ")))
  return(plyr::ldply(t2)$V1)
}


# For graphing Pathway Crosstalk Networks (PCNs) in cytoscape
#' @param PCN
#'
#' @param net.name
#' @param Jaccard.edges
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

# Two linked functions to generate node file for Cytoscape:
#' @param genes
#'
#' @param ptmtable
#'
#' @export
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
#' @param edge.file
#'
#' @param funckey
#' @param ptmtable
#' @param include.gene.data
#' @param include.coclustered.PTMs
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
# To remove self-loops
#' Title
#'
#' @param edgefile
#'
#' @returns
#' @export
#'
#' @examples
remove.autophos <-    function(edgefile)	{
  auto <- which (as.character(edgefile$source) == as.character(edgefile$target))
  if (length(auto) > 0) {
    newedgefile <- edgefile[-auto,] } else newedgefile <- edgefile
    return (newedgefile)
}
# Helper functions for connecting PTMs (called "peptides" with their parent protein nodes (called Gene.Name))
#' Title
#'
#' @param peptide.edgefile
#'
#' @returns
#' @export
#'
#' @examples
make.genepep.edges <- function(peptide.edgefile) {
  peptides <- unique(c(peptide.edgefile$source, peptide.edgefile$target))
  genenames <- sapply(peptides,  function (x) unlist(strsplit(x, " ",  fixed=TRUE))[1])
  net.gpe <- data.frame(source=genenames, target=peptides, Weight=0.25, interaction="peptide")
  net.gpe <- remove.autophos(net.gpe)
  return(net.gpe)
}

# This function takes an edge file, retrieves only co-clustered PTM CCCN edges and links them to their gene nodes, returning an edge file
#' @param edge.file
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


#
# helper functions

#' Set difference for vectors using custom infix operator
#'
#' Returns the elements in vector x that are not in vector y.
#'
#' @param x A vector.
#' @param y A vector to compare.
#' @return Elements of x that are not in y.
#' @export
#' @examples
#' 1:5 %w/o% c(2, 4)
#' letters[1:5] %w/o% c("b", "d")
"%w/o%" <- function(x, y) {
  x[!x %in% y] # x without y
}


#' @param x
#'
#' @param y
#'
#' @export
outersect <- function(x, y) {
  sort(c(setdiff(x, y),
         setdiff(y, x)))
}

# Function to harmonize gene and peptide data for networks
#  - for graphing combined CFN/CCCN graphs
# Enusres that for Cytoscape, "id" is used for node name columns#' @param edge.file.with.ptms
#'
#' @param genecf
#' @param ptmtable
#'
#' @export
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

# Function to merge edges to declutter networks

#' @param edgefile
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
#' # Example network (edge list with 'source', 'target', and cluster info, could be data.frame or igraph)
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

#_____________________________________________________________________________
# Vizprops helper functions:
# Function to set shape and border color according to node type
#' @param cf
#'
#' @export
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

# Function to set edge appearance
# # Use:  setCorrEdgeAppearance()  to change cytoscape front window
#This is now modified to handle merged edges and match colors correctly
#' Title
#'
#' @returns
#' @export
#'
#' @examples
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

# This function works well with node data that are normalized by row z-scores
#' @param plotcol
#'
#' @export
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

# This function wraps RCy3 graphing in Cytoscape and sets node and edge visual properties
#' @param cfn.edges
#'
#' @param cfn.nodes
#' @param Network.title
#' @param Network.collection
#' @param visual.style.name
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

# # This helper function will make wider edges if they are two thin or narrow if to thick
#' @param ffactor
#'
#' @param log
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
#' @param visual.style.name
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


