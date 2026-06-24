# @title Graphing and Manipulating Cluster Filtered Network
#
# @description Creates a cytoscape graph of the cluster filtered network. Ensure
# that you have the Cytoscape app open and the RCy3 package downloaded.
#
# @details Graph Key
# - Node Size
#   - Greater the node size, larger the absolute value of the score
# - Blue Node
#   - Negative score
# - Yellow Node
#   - Positive score
# - Green Node
#   - Approximately zero score
# Node Shapes:
# - "ELLIPSE"
#   - unknown
# - "ROUND_RECTANGLE"
#   - receptor tyrosine kinase
# - "VEE"
#   - SH2 protein
#   or
#   - SH2-SH3 protein
# - "TRIANGLE"
#   - SH3 protein
# - "HEXAGON"
#   - tyrosine kinase
# - "DIAMOND"
#   - SRC-family kinase
# - "OCTAGON"
#   - kinase
#   or
#   - phosphatase
# - "PARALLELOGRAM"
#   - transcription factor
# - "RECTANGLE"
#   - RNA binding protein
# Node Border Colors:
# - Orange
#   - deacetylase
#   or
#   - acetyltransferase
# - Blue
#   - demethylase
#   or
#   - methyltransferase
# - Royal Purple
#   - membrane protein
# - Red
#   - kinase
#   or
#   - tyrosine kinase
#   or
#   - SRC-family kinase
# - Yellow
#   - phosphatase
#   or
#   - tyrosine phosphatase
# - Lilac
#   - G protein-coupled receptor
#   or
#   - receptor tyrosine kinase
# - Grey
#   - default
# - Edge Thickness
#   - Stronger correlation
#Edge Colors:
# - Red
#   - Phosphorylation
#   or
#   - pp
#   or
#   - controls-phosphorylation-of
# - Bright Magenta
#   - controls-expression-of
# - Dull Magenta
#   - controls-transport-of
# - Purple
#   - controls-state-change-of
# - Blood Orange
#   - Acetylation
# - Lime Green
#   - Phystical interactions
# - Green
#   - BioPlex
# - Dull Green
#   - in-complex-with
# - Seafoam Green
#   - experiments
#   or
#   - experiments_transferred
# - Cyan
#   - database
#   or
#   - database_transferred
# - Teal
#   - Pathway
#   or
#   - Predicted
# - Dark Turquoise
#   - Genetic interactions
# - Yellow-Orange
#   - correlation
# - Royal Blue
#   - negative correlation
# - Bright Yellow
#   - positive correlation
# - Grey
#   - combined_score
# - Dark Grey
#   - merged
# - Light Grey
#   - intersect
# - Black
#   - peptide
# - Orange
#   - homology
# - Dull Orange
#   - Shared protein domains
# - White
#   - Default
# Arrow Types:
# - Arrow
#   - Phosphorylation
#   or
#   - pp
#   or
#   - controls-phosphorylation-of
#   or
#   - controls-expression-of
#   or
#   - controls-transport-of
#   or
#   - controls-state-change-of
#   or
#   - Acetylation
# - No Arrow
#   - Default
#
# @param cfn A version of ppi.network with only the edges that exist in cccn.matrix and have non-zero weights
# @param ptmtable A dataset for post-translational modifications. Formatted with numbered rows, and the first column containing PTM names. The rest of the column names should be drugs. Values are numeric values that represent how much the PTM has reacted to the drug.
# @param funckey A table graphing gene names to type of protein; defaults to the internal dataset `PTMsToPathways::function_key`
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
#
#

# helper functions for networks in R:

# function to filter networks to include only selected nodes and those with edges to them
#' Filter an edge file to edges between a specified set of nodes
#'
#' Returns only edges where both endpoints are in \code{nodenames}.
#'
#' @param nodenames Character vector of node names to retain.
#' @param edge.file A data frame edge list with node names in columns 1 and 2.
#'
#' @return A data frame of filtered edges, or \code{NA} if no edges remain.
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
#' Filter an edge file to include first-order neighbours of specified nodes
#'
#' Returns all edges where at least one endpoint is in \code{nodenames},
#' effectively including the nodes themselves and all directly connected neighbours.
#'
#' @param nodenames Character vector of seed node names.
#' @param edge.file A data frame edge list with node names in columns 1 and 2.
#'
#' @return A data frame of edges involving at least one node in \code{nodenames},
#'   or \code{NA} if no edges remain.
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
#' Filter an edge file to edges between two sets of nodes
#'
#' Returns edges where one endpoint is in \code{nodes1} and the other is in
#' \code{nodes2}, in either direction.
#'
#' @param nodes1 Character vector of the first set of node names.
#' @param nodes2 Character vector of the second set of node names.
#' @param edge.file A data frame edge list with node names in columns 1 and 2.
#' @param convert Logical; currently unused, reserved for future type conversion.
#'
#' @return A data frame of edges connecting \code{nodes1} to \code{nodes2},
#'   or \code{NA} if no such edges exist.
#' @export
filter.edges.between <- function(nodes1, nodes2, edge.file, convert=FALSE) {
  sel.edges1 <- edge.file[edge.file[,1] %in% nodes1 & edge.file[,2]%in% nodes2,]
  sel.edges2 <- edge.file[edge.file[,1] %in% nodes2 & edge.file[,2]%in% nodes1,]
  sel.edges <- rbind(sel.edges1, sel.edges2)
  if(dim(sel.edges)[1] == 0) {return(NA)} else return(sel.edges)
}

# connectNodes.all  uses all_shortest_paths and returns just the edge file
#' Connect a pair of nodes via all shortest paths
#'
#' Uses \code{igraph::all_shortest_paths} to find all shortest paths between
#' two nodes and returns the union of edges along those paths.
#'
#' @param nodepair Character vector of length 2 giving the source and target node names.
#' @param ig.graph An \code{igraph} graph object. If \code{NULL} and
#'   \code{newgraph = TRUE}, one is built from \code{edgefile}.
#' @param edgefile A data frame edge list used to construct the graph when
#'   \code{newgraph = TRUE} and to extract edge attributes.
#' @param newgraph Logical; if \code{TRUE}, build a new \code{igraph} object
#'   from \code{edgefile} before computing paths.
#'
#' @return A data frame of edges along all shortest paths between the two nodes.
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
#' Get Cytoscape-formatted edge names
#'
#' Constructs edge name strings in the format Cytoscape uses internally
#' (\code{source (interaction) target}), suitable for use with
#' \code{RCy3::selectEdges}.
#'
#' @param edgefile A data frame with columns \code{source}, \code{interaction},
#'   and \code{target}.
#'
#' @return A character vector of edge name strings.
#' @export
getCyEdgeNames <- function(edgefile) {
  cyedges <- mapply(paste, edgefile $source, " (", edgefile $interaction, ") ", edgefile $target, sep="")
  return(cyedges)
}
# Function to extract node names from, e.g.:
#	"ValidatedObjectAndEditString: validatedObject=ERBB3, editString=null"
#' Strip Cytoscape metadata strings to extract node names
#'
#' Parses verbose Cytoscape node identifier strings of the form
#' \code{"...Object=NODENAME, ..."}  and returns just the node name portion.
#'
#' @param test Character vector of raw Cytoscape node identifier strings.
#'
#' @return A character vector of extracted node names.
#' @export
strip.cy.goo <- function(test) {
  t1 <- unlist(strsplit(test, "Object="))
  t2 <- sapply(t1[2:length(t1)], function (x) (strsplit(x, ", ")))
  return(plyr::ldply(t2)$V1)
}


# For graphing Pathway Crosstalk Networks (PCNs) in cytoscape
#' Graph a Pathway Crosstalk Network in Cytoscape
#'
#' Creates a Cytoscape network from a Pathway Crosstalk Network (PCN) data frame,
#' applying edge color and width mappings. Requires Cytoscape to be open and
#' \code{RCy3} to be installed.
#'
#' @param PCN A data frame representing the pathway crosstalk network with columns
#'   \code{source}, \code{target}, \code{interaction}, and \code{Weight}.
#' @param net.name A character string used as the base network title in Cytoscape.
#' @param Jaccard.edges Logical; if \code{FALSE}, pathway Jaccard similarity edges
#'   are removed before plotting. Defaults to \code{TRUE}.
#'
#' @return Called for its side effects; creates a network in Cytoscape.
#' @export
cytoscape.graph.PCN.pathways <- function(PCN, net.name, Jaccard.edges=TRUE) {
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
  edgeTypes <- c("PTM_cluster_weights", "Protein_cluster_evidence", "pathway_Jaccard_similarity")
  RCy3::setEdgeColorMapping( 'interaction', edgeTypes, edgeColors, 'd', default.color="#FFFFFF")
  setEdgeWidths(ffactor = -1.2, log=TRUE) # Finally works!
  style.name <- paste("PCN style", (1+no.windows), sep=" ")
  RCy3::copyVisualStyle('default', style.name)
  RCy3::setVisualStyle(style.name)
}

# Two linked functions to generate node file for Cytoscape:
#' Summarise PTM table data to gene level
#'
#' Subsets a PTM table to genes of interest and collapses PTM-level numeric
#' values to gene-level sums, suitable for loading into Cytoscape node attributes.
#'
#' @param genes Character vector of gene names to retain.
#' @param ptmtable A PTM data frame with PTM identifiers (\code{"GENE site"}) as
#'   row names and numeric drug/condition columns.
#'
#' @return A data frame with one row per gene and summed numeric columns.
#' @export
make.gene.data.from.ptmtable <- function(genes, ptmtable) {
  ptmtable.temp <- ptmtable
  ptmtable.temp$Gene.Name <- sapply(rownames(ptmtable.temp), function (x) strsplit(x, " ", fixed = TRUE)[[1]][1])
  subset.ptmtable <- ptmtable.temp[ptmtable.temp$Gene.Name %in% unique(genes), ]
  gene.data <- subset.ptmtable |>
    dplyr::group_by(.data$Gene.Name) |>
    dplyr::summarise(
      dplyr::across(dplyr::where(is.numeric), ~sum(.x, na.rm = TRUE)),
      .groups = "drop"
    )

  return(as.data.frame(gene.data))  # Ensure base R class
}
#' Build a Cytoscape node attribute table from an edge file
#'
#' Extracts unique gene nodes from an edge file, annotates them using the
#' function key, and optionally appends gene-level PTM data and co-clustered
#' PTM nodes.
#'
#' @param edge.file A data frame edge list with node names in columns 1 and 2
#'   and an \code{interaction} column.
#' @param funckey A data frame mapping gene names to protein annotations
#'   (e.g., \code{PTMsToPathways::function_key}).
#' @param ptmtable A PTM data frame with PTM identifiers as row names and
#'   numeric condition columns.
#' @param include.gene.data Logical; if \code{TRUE}, append gene-level
#'   summarised PTM values to the node table. Defaults to \code{FALSE}.
#' @param include.coclustered.PTMs Logical; if \code{TRUE}, add co-clustered
#'   PTM nodes and their edges to the output. Defaults to \code{FALSE}.
#' @param ptm.cccn.edges A data frame of PTM co-expression correlation network
#'  edges with PTM identifiers as node names, required if \code{include.coclustered.PTMs = TRUE}.
#'
#' @return A data frame of node attributes with an \code{id} column suitable
#'   for \code{RCy3::createNetworkFromDataFrames}.
#' @export
make.cytoscape.node.file <- function(edge.file, funckey = PTMsToPathways::function_key, ptmtable, include.gene.data = FALSE, include.coclustered.PTMs = FALSE, ptm.cccn.edges = NULL) {
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
    edge.file.with.ptms <- get.co.clustered.ptms(edge.file, ptm.cccn.edges, ptmtable)
    if(length (peptides) > 0)  {
      edge.file.with.ptms <- unique(rbind(edge.file.with.ptms, edge.file[which(edge.file$interaction == "peptide"), ]))
    }
    node_file <- harmonize_cfs(edge.file.with.ptms, genecf = node_file, ptmtable = ptmtable)
  }
  return(unique(node_file))
}
# To remove self-loops
#' Remove self-loop edges from an edge file
#'
#' Drops any rows where the source and target node are identical.
#'
#' @param edgefile A data frame edge list with \code{source} and \code{target}
#'   columns.
#'
#' @return The edge file with self-loop rows removed.
#' @export
remove.autophos <-    function(edgefile)	{
  auto <- which (as.character(edgefile$source) == as.character(edgefile$target))
  if (length(auto) > 0) {
    newedgefile <- edgefile[-auto,] } else newedgefile <- edgefile
    return (newedgefile)
}
# Helper functions for connecting PTMs (called "peptides" with their parent protein nodes (called Gene.Name))
#' Create gene-to-peptide edges from a PTM edge file
#'
#' Generates a new edge data frame linking each PTM node (\code{"GENE site"})
#' to its parent gene node, for use in combined gene/PTM Cytoscape networks.
#'
#' @param peptide.edgefile A data frame edge list whose node names follow the
#'   \code{"GENE site"} PTM naming convention.
#'
#' @return A data frame with columns \code{source}, \code{target},
#'   \code{Weight}, and \code{interaction} (\code{"peptide"}).
#' @export
make.genepep.edges <- function(peptide.edgefile) {
  peptides <- unique(c(peptide.edgefile$source, peptide.edgefile$target))
  genenames <- sapply(peptides,  function (x) unlist(strsplit(x, " ",  fixed=TRUE))[1])
  net.gpe <- data.frame(source=genenames, target=peptides, Weight=0.25, interaction="peptide")
  net.gpe <- remove.autophos(net.gpe)
  return(net.gpe)
}

# This function takes an edge file, retrieves only co-clustered PTM CCCN edges and links them to their gene nodes, returning an edge file
#' Retrieve co-clustered PTM CCCN edges for genes in an edge file
#'
#' Subsets the PTM CCCN to the PTMs belonging to genes present in
#' \code{edge.file}, then appends gene-to-peptide edges so the result
#' can be directly used as an extended edge list in Cytoscape.
#'
#' @param edge.file A data frame edge list whose nodes are gene names.
#' @param ptm.cccn.edges A data frame of PTM co-expression correlation network
#'   edges with PTM identifiers as node names.
#' @param ptmtable A PTM data frame with PTM identifiers as row names and numeric condition columns.
#'
#' @return An edge data frame combining the original gene edges, co-clustered
#'   PTM edges, and gene-to-peptide linking edges.
#' @export
get.co.clustered.ptms <- function (edge.file, ptm.cccn.edges, ptmtable) {
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


#' Symmetric set difference of two vectors
#'
#' Returns elements that are in either \code{x} or \code{y} but not in both
#' (i.e., the outer- or exclusive union).
#'
#' @param x A vector.
#' @param y A vector.
#'
#' @return A sorted vector of elements present in exactly one of \code{x} or \code{y}.
#' @export
outersect <- function(x, y) {
  sort(c(setdiff(x, y),
         setdiff(y, x)))
}

# Function to harmonize gene and peptide data for networks
#  - for graphing combined CFN/CCCN graphs
#  Ensures that for Cytoscape, "id" is used for node name columns
#' Harmonize gene and PTM node tables for a combined CFN/CCCN network
#'
#' Merges a gene-level node attribute table with PTM-level rows derived from
#' the PTM table, ensuring the \code{id} column is present and used as the
#' Cytoscape node key. PTM nodes are annotated from the function key and
#' linked to their parent genes via a \code{parent} column.
#'
#' @param edge.file.with.ptms A data frame edge list containing both gene and
#'   PTM (\code{interaction == "peptide"}) edges.
#' @param genecf A gene-level node attribute data frame, typically produced by
#'   \code{make.cytoscape.node.file}.
#' @param ptmtable A PTM data frame with PTM identifiers as row names and
#'   numeric condition columns.
#'
#' @return A merged data frame of gene and PTM node attributes with \code{id}
#'   as the first column, suitable for \code{RCy3::createNetworkFromDataFrames}.
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
    function_key[, annotation_cols, drop = FALSE],
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

#' Merge duplicate edges in an edge file
#'
#' Consolidates an edge file by collapsing parallel edges (same source/target)
#' into a single row. For directed edge types, the highest-priority interaction
#' is kept; for undirected edges, all interaction types are concatenated with
#' \code{" | "}. Self-loops are removed from the result.
#'
#' @param edgefile A data frame edge list with columns \code{source},
#'   \code{target}, \code{interaction}, and \code{Weight}.
#'
#' @return A deduplicated data frame edge list.
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
#' @param ptm.cccn.edges A data frame of PTM co-expression correlation network
#'  edges with PTM identifiers as node names
#' @param ptmtable A data frame containing PTM identifiers as row names and numeric condition columns
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
#' \dontrun{
#' res <- ptms_to_cfn(ptms, cfn = cfn.merged,
#'   ptm.cccn.edges = ptm.cccn.edges, ptmtable = ptmtable, pepsep = ";")
#' print(res)
#' }
ptms_to_cfn <- function(ptms, cfn, ptm.cccn.edges, ptmtable, pepsep = ";") {
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

  sub.cfn <- filter.edges.0(all_genes, cfn)
  sub.cfn.cccn <- get.co.clustered.ptms(sub.cfn, ptm.cccn.edges, ptmtable)
  return(sub.cfn.cccn)
}

#_____________________________________________________________________________
# Vizprops helper functions:
# Function to set shape and border color according to node type
#' Apply node visual mappings in the active Cytoscape network
#'
#' Sets default node appearance (shape, color, size, border) and applies
#' discrete visual mappings for node shape and border color based on the
#' \code{nodeType} column from the function key.
#'
#' @param cf A data frame of node attributes from the active Cytoscape network;
#'   defaults to the full node table retrieved via \code{RCy3::getTableColumns}.
#'
#' @return Called for its side effects in Cytoscape.
#' @export
setNodeMapping <- function(cf=RCy3::getTableColumns('node')) {
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
#' Apply edge visual mappings in the active Cytoscape network
#'
#' Sets edge line widths (log-scaled from correlation weights), colors, and
#' arrow types based on the \code{interaction} column. Handles merged edge
#' labels by extracting the primary interaction type before applying mappings.
#'
#' @return Called for its side effects in Cytoscape.
#' @export
setCorrEdgeAppearance <- function() {
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

# Function to set node size and color to match ratio data in the Cytoscape node table.
#' Map node size and color to ratio-scale data in Cytoscape
#'
#' Applies continuous node size and color mappings to the active Cytoscape
#' network using fixed log2-based control points suited for ratio or
#' fold-change data centered on zero.
#'
#' @param plotcol A character string naming the node table column to map to
#'   both node size and node color.
#'
#' @return Called for its side effects in Cytoscape.
#' @export
setNodeColorToRatios <- function(plotcol){
  cf <- RCy3::getTableColumns('node')
  if(!(plotcol %in% RCy3::getTableColumnNames('node'))){
    print (RCy3::getTableColumnNames('node'))
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
  RCy3::setNodeColorMapping (names(cf[plotcol]), color.control.points, ratio.colors, 'c')
  RCy3::lockNodeDimensions('TRUE')
  RCy3::setNodeSizeMapping (names(cf[plotcol]), size.control.points, node.sizes, 'c')
  RCy3::setNodeSelectionColorDefault ( "#CC00FF")
}

# This function works well with node data that are normalized by row z-scores
#' Map node size and color to row z-score data in Cytoscape
#'
#' Applies continuous node size and color mappings to the active Cytoscape
#' network using log2-based control points suited for row z-score normalised data.
#'
#' @param plotcol A character string naming the node table column to map to
#'   both node size and node color.
#'
#' @return Called for its side effects in Cytoscape.
#' @export
setNodeColorToRowz <- function(plotcol){
  cf <- RCy3::getTableColumns('node')
  if(!(plotcol %in% RCy3::getTableColumnNames('node'))){
    print (RCy3::getTableColumnNames('node'))
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

#' Set node size and color from independent Cytoscape node attributes
#'
#' Apply independent continuous visual mappings for node size and node color
#' in the active Cytoscape network using columns from the node table.
#' This helper is intended for PTMsToPathways-style networks where one node
#' attribute controls size and a different attribute controls color.
#'
#' If either requested column is not present in the Cytoscape node table, the
#' user is prompted to choose a valid column name interactively. For non-ratio
#' data, color and size control points are derived from the observed ranges of
#' the selected columns. For ratio-style data, fixed log2-based control points
#' are used.
#'
#' @param sizeplotcol A character string naming the node table column to use
#'   for node size mapping.
#' @param colorplotcol A character string naming the node table column to use
#'   for node color mapping.
#' @param ratio Logical; if `TRUE`, use predefined log2 ratio control points
#'   and ratio color palette. If `FALSE`, compute control points from the
#'   observed ranges of `sizeplotcol` and `colorplotcol`.
#'
#' @details
#' For `ratio = FALSE`, this function builds separate continuous mappings for
#' node color and node size based on the minimum and maximum values observed
#' in the selected Cytoscape node table columns. Blue-to-white-to-yellow color
#' gradients are used for color mapping.
#'
#' For `ratio = TRUE`, the function assumes ratio-like values centered on zero
#' and applies fixed log2-scaled control points for both node size and node
#' color. In this mode, a blue-to-green-to-yellow palette is used.
#'
#' The function also locks node width and height and sets the default node
#' selection color to magenta.
#'
#' @return
#' This function is called for its side effects in Cytoscape and returns
#' `NULL` invisibly.
#'
#' @seealso
#' [RCy3::setNodeColorMapping()], [RCy3::setNodeSizeMapping()],
#' [RCy3::lockNodeDimensions()], [RCy3::getTableColumns()]
#'
#' @examples
#' \dontrun{
#' setNodeSizeColorIndependently(
#'   sizeplotcol = "mean_expression",
#'   colorplotcol = "logFC",
#'   ratio = FALSE
#' )
#'
#' setNodeSizeColorIndependently(
#'   sizeplotcol = "abundance_ratio",
#'   colorplotcol = "abundance_ratio",
#'   ratio = TRUE
#' )
#' }
#'
#' @export
setNodeSizeColorIndependently <- function(sizeplotcol, colorplotcol, ratio=FALSE){
  cf <- RCy3::getTableColumns('node')
  if(!(sizeplotcol %in% RCy3::getTableColumnNames('node'))){
    print (RCy3::getTableColumnNames('node'))
    cat("\n","\n","\t", "Which attribute will set node size?")
    sizeplotcol <- as.character(readLines(con = stdin(), n = 1))
  }
  if(!(colorplotcol %in% RCy3::getTableColumnNames('node'))){
    print (RCy3::getTableColumnNames('node'))
    cat("\n","\n","\t", "Which attribute will set node color?")
    colorplotcol <- as.character(readLines(con = stdin(), n = 1))
  }
  limits <- range(cf[, sizeplotcol])
  node.sizes     = c (135, 130, 108, 75, 35, 75, 108, 130, 135)
  if (ratio == FALSE) {
    Intensity.Values.Color <- cf[, colorplotcol]  # set to intensity or normalized intensity
    maxint.col <- max(Intensity.Values.Color, na.rm=TRUE)
    minint.col <- min(Intensity.Values.Color, na.rm=TRUE)
    Intensity.Values.Size <- cf[, sizeplotcol]  # set to intensity or normalized intensity
    maxint.size <- max(Intensity.Values.Size, na.rm=TRUE)
    minint.size <- min(Intensity.Values.Size, na.rm=TRUE)
    icolors <- c('#0099FF', '#007FFF','#00BFFF', '#00CCFF', '#00FFFF', '#FFFFFF', '#FFFF7E', '#FFFF00', '#FFE600', '#FFD700', '#FFCC00')
    if (maxint.col>=abs(minint.col)) {
      color.control.points <- c(-(maxint.col+1), -(maxint.col/5), -(maxint.col/10), -(maxint.col/15), 0.0, (maxint.col/15), (maxint.col/10), (maxint.col/5), (maxint.col+1))
      RCy3::setNodeColorMapping (names(cf[colorplotcol]),  color.control.points, icolors)
    }
    if (maxint.col<abs(minint.col)) {
      color.control.points <- c((minint.col-1), (minint.col/5), (minint.col/10), (minint.col/15), 0.0, -(minint.col/15), -(minint.col/10), -(minint.col/5), -(minint.col-1))
      RCy3::setNodeColorMapping (names(cf[colorplotcol]), color.control.points, icolors)
    }
    if (maxint.size>=abs(minint.size)) {
      size.control.points = c (-(maxint.size+1), -(maxint.size*0.3), -(maxint.size/10), 0.0, (maxint.size/10), (maxint.size*0.3), (maxint.size+1))
      RCy3::setNodeSizeMapping (names(cf[sizeplotcol]), size.control.points, node.sizes, 'c')
    }
    if (maxint.size<abs(minint.size)) {
      size.control.points = c ((minint.size-1), (minint.size*0.3), (minint.size/10), 0.0, -(minint.size/10), -(minint.size*0.3), abs(minint.size-1))
      RCy3::setNodeSizeMapping (names(cf[sizeplotcol]), size.control.points, node.sizes, 'c')
    }
  }
  if (ratio == TRUE) {
    ratio.colors = c ('#0099FF', '#007FFF','#00BFFF', '#00CCFF', '#00FFFF', '#00EE00', '#FFFF7E', '#FFFF00', '#FFE600', '#FFD700', '#FFCC00')
    size.control.points = c (-log2(100.0), -log2(15.0), -log2(5.0), 0.0, log2(5.0), log2(15.0), log2(100.0))
    color.control.points = c (-log2(100.0), -log2(10.0), -log2(5.0), -log2(2.25), 0.0, log2(2.25), log2(5.0), log2(10.0), log2(100.0))
    RCy3::setNodeColorMapping (names(cf[colorplotcol]), color.control.points, ratio.colors, 'c')
    RCy3::setNodeSizeMapping (names(cf[sizeplotcol]), size.control.points, node.sizes, 'c')
  }
  RCy3::lockNodeDimensions('TRUE')
  RCy3::setNodeSelectionColorDefault ( "#CC00FF")
}

# This function wraps RCy3 graphing in Cytoscape and sets node and edge visual properties
#' Graph a Cluster Filtered Network in Cytoscape
#'
#' Creates a Cytoscape network from CFN edge and node tables, then applies the
#' PTMsToPathways node shape/color and edge color/width visual mappings.
#' Requires Cytoscape to be open and \code{RCy3} to be installed.
#'
#' @param cfn.edges A data frame of CFN edges (\code{source}, \code{target},
#'   \code{interaction}, \code{Weight}).
#' @param cfn.nodes A data frame of CFN node attributes with an \code{id} column.
#' @param Network.title Character string title for the new Cytoscape network;
#'   defaults to \code{"CFN"}.
#' @param Network.collection Character string name for the Cytoscape collection;
#'   defaults to \code{"PTMsToPathways"}.
#' @param visual.style.name Character string name for the visual style to create;
#'   defaults to \code{"PTMsToPathways.style"}.
#'
#' @return Called for its side effects; creates a styled network in Cytoscape.
#' @export
GraphCfn <- function(cfn.edges, cfn.nodes,  Network.title = "CFN", Network.collection = "PTMsToPathways", visual.style.name = "PTMsToPathways.style"){
  tryCatch({
    RCy3::cytoscapePing()
  }, error = function(e){
    stop("Could not connect to Cytoscape. Please ensure the Cytoscape app is open and running. Wait until fully loaded, then run RCy3::cytoscapePing() to verify connection.")
  })
  cyscape <- RCy3::createNetworkFromDataFrames(cfn.nodes, cfn.edges, title = Network.title, collection = Network.collection)
  setNodeMapping()
  setCorrEdgeAppearance()
  RCy3::copyVisualStyle("default", visual.style.name)
  # RCy3::setVisualStyle(visual.style.name)
}

# # This helper function will make wider edges if they are too thin or too thick
#' Adjust edge line widths in the active Cytoscape network
#'
#' Computes edge widths from the \code{Weight} column of the Cytoscape edge
#' table, optionally log-transforming the values, and loads them back as a
#' continuous edge width mapping.
#'
#' @param ffactor Numeric offset applied to all computed widths; a negative value
#'   shifts widths down (narrower). Defaults to \code{-1.2}.
#' @param log Logical; if \code{TRUE} (default), widths are computed as
#'   \code{log(|Weight|) + ffactor - min(log(|Weight|))}. If \code{FALSE},
#'   widths are \code{ffactor * |Weight|}.
#'
#' @return Called for its side effects in Cytoscape.
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
#' Create a node and edge legend network in Cytoscape
#'
#' Builds a demo network in Cytoscape that illustrates all node shapes, border
#' colors, and edge colors used by the PTMsToPathways visual style, serving as
#' an interactive legend.
#'
#' @param visual.style.name Character string name of the visual style to apply;
#'   defaults to \code{"PTMsToPathways.style"}.
#'
#' @return Called for its side effects; creates a legend network in Cytoscape.
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