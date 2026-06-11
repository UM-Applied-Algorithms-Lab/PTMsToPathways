#' Standardize Gene Symbols
#'
#' @description
#' Standardize a vector of gene symbols to STRING preferred names for Homo sapiens.
#' This is intended as a one-time workflow helper so downstream network retrieval
#' functions can use a consistent symbol vocabulary across STRING, GeneMANIA,
#' and kinase-substrate resources.
#'
#' @param genes Character vector of gene symbols.
#' @param species NCBI taxonomy ID. Default is 9606 (Homo sapiens).
#' @param string.version STRING version. Default is "12.0".
#' @param keep.unmapped Logical. If TRUE, unmapped input symbols are retained as-is
#'   in the `standard_symbol` column. Default is TRUE.
#'
#' @return
#' A data frame with columns:
#' \describe{
#'   \item{input_symbol}{Original supplied symbol}
#'   \item{STRING_id}{Mapped STRING protein identifier, if available}
#'   \item{standard_symbol}{STRING preferred_name when mapped; otherwise input symbol if keep.unmapped = TRUE}
#'   \item{mapped}{Logical indicating whether a STRING mapping was found}
#' }
#'
#' @export
#'
#' @examples
#' # sym.map <- StandardizeGeneSymbols(c("EPRS", "QARS", "DDR1", "DDR2"))
#' # unique(sym.map$standard_symbol)
StandardizeGeneSymbols <- function(genes,
                                   species = 9606,
                                   string.version = "12.0",
                                   keep.unmapped = TRUE) {

  if (!requireNamespace("STRINGdb", quietly = TRUE)) {
    stop("Please install STRINGdb: BiocManager::install('STRINGdb')")
  }

  if (!is.character(genes) || length(genes) == 0) {
    stop("`genes` must be a non-empty character vector.")
  }

  genes <- unique(as.character(genes))
  input.df <- data.frame(Gene.Names = genes, stringsAsFactors = FALSE)

  string.db <- STRINGdb::STRINGdb$new(
    version = string.version,
    species = species,
    score_threshold = 0,
    network_type = "full",
    link_data = "full",
    input_directory = ""
  )

  mapped <- string.db$map(input.df, "Gene.Names", removeUnmappedRows = FALSE)

  out <- data.frame(
    input_symbol = mapped$Gene.Names,
    STRING_id = if ("STRING_id" %in% colnames(mapped)) mapped$STRING_id else NA_character_,
    standard_symbol = if ("preferred_name" %in% colnames(mapped)) mapped$preferred_name else NA_character_,
    mapped = !is.na(if ("STRING_id" %in% colnames(mapped)) mapped$STRING_id else NA_character_),
    stringsAsFactors = FALSE
  )

  if (keep.unmapped) {
    out$standard_symbol[is.na(out$standard_symbol)] <- out$input_symbol[is.na(out$standard_symbol)]
  }

  out
}


#' Map input nodes with a precomputed symbol map
#'
#' @description
#' Internal helper that converts a character vector of input node symbols to
#' standardized symbols using a data frame produced by
#' `StandardizeGeneSymbols()`. Unmapped symbols are retained as originally
#' supplied.
#'
#' @param gene.cccn.nodes Character vector of node symbols.
#' @param symbol.map Optional data frame containing at least the columns
#'   `input_symbol` and `standard_symbol`, typically produced by
#'   `StandardizeGeneSymbols()`. If `NULL`, `gene.cccn.nodes` is returned
#'   unchanged.
#'
#' @return Character vector of unique standardized node symbols.
#'
#' @keywords internal
.map_nodes_with_symbol_map <- function(gene.cccn.nodes, symbol.map = NULL) {
  nodes <- unique(as.character(gene.cccn.nodes))

  if (is.null(symbol.map)) {
    return(nodes)
  }

  required.map.cols <- c("input_symbol", "standard_symbol")
  missing.map.cols <- setdiff(required.map.cols, colnames(symbol.map))
  if (length(missing.map.cols) > 0) {
    stop(
      "`symbol.map` is missing required columns: ",
      paste(missing.map.cols, collapse = ", ")
    )
  }

  idx <- match(nodes, symbol.map$input_symbol)
  mapped.nodes <- symbol.map$standard_symbol[idx]
  mapped.nodes[is.na(mapped.nodes)] <- nodes[is.na(mapped.nodes)]

  unique(mapped.nodes)
}
#' Make Database Input File
#'
#' This function outputs a file consisting entirely of gene names, each produced on a new line. This data can be copy and pasted into
#' a database input in order to get protein-protein interaction data.
#'
#' @param gene.cccn.nodes A list of nodes that are in the Gene CoCluster Correlation Network derived from common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
#' @param file.path.name Path for the output file; defaults to db_nodes.txt
#'
#' @return A file with all of the gene names which can be copy and pasted into the GeneMania cytoscape app, data frame of the names of the genes
#' @export
#'
#' @examples
#' #MakeDBInput(ex.nodenames)
#' cat(ex.nodenames[[1]], sep = '\n')
MakeDBInput <- function(gene.cccn.nodes, file.path.name = "db_nodes.txt") {
  utils::write.table(unique(c(gene.cccn.nodes[[1]], gene.cccn.nodes[[2]])), file = file.path.name, row.names = FALSE, col.names = FALSE, quote = FALSE)
}
# Pulls nodenames from the gene.cccn
#
# This helper function pulls the gene names from the gene.cccn into a list 'nodenames'
#
# @param gene.cccn A matrix showing strength of relationships between proteins using the common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
# @return data frame of the names of the genes


#' Get STRINGdb PPI data from full local or live source
#'
#' @description
#' Retrieve STRINGdb protein-protein interaction edges for a supplied gene set,
#' either from a precomputed local file derived from protein.links.full.v12.0.txt.gz
#' or live via the STRINGdb R package.
#'
#' In local mode, this function performs no web/API queries. To avoid symbol
#' mismatches, users are encouraged to standardize their node list in advance
#' with `StandardizeGeneSymbols()`.
#'
#' @param gene.cccn.edges Data frame of CCCN edges (currently unused; retained
#'   for compatibility with older package API).
#' @param gene.cccn.nodes Character vector of gene symbols to retain.
#' @param local Logical. If TRUE, read only from a local precomputed file and do
#'   not query STRINGdb online. Default is FALSE.
#' @param string.local.path Path to local TSV produced from protein.links.full
#'   with transferred columns included. Default is "string_hs_hugo_full.tsv".
#' @param combined.score.threshold Integer (0-1000). Minimum combined_score to
#'   retain an edge. Default is 400.
#' @param include.transferred Logical. If TRUE, include *_transferred evidence
#'   channels. If FALSE, omit them. Default is TRUE.
#' @param symbol.map Optional data frame produced by `StandardizeGeneSymbols()`.
#'   If supplied, `gene.cccn.nodes` will be converted to `standard_symbol`
#'   before filtering. Useful for keeping local mode fully offline.
#'
#' @return Data frame with columns: source, target, interaction, Weight
#' @export
#'
#' @examples
#' # sym.map <- StandardizeGeneSymbols(ex.gene.cccn.nodes)
#' # x <- GetSTRINGdbEdgesFull(
#' #   ex.gene.cccn.edges,
#' #   ex.gene.cccn.nodes,
#' #   local = TRUE,
#' #   string.local.path = "string_hs_hugo_full.tsv",
#' #   combined.score.threshold = 400,
#' #   include.transferred = TRUE,
#' #   symbol.map = sym.map
#' # )
GetSTRINGdbEdgesFull <- function(gene.cccn.edges,
                                 gene.cccn.nodes,
                                 local = FALSE,
                                 string.local.path = "string_hs_hugo_full.tsv",
                                 combined.score.threshold = 400,
                                 include.transferred = TRUE,
                                 symbol.map = NULL) {

  if (!is.character(gene.cccn.nodes) || length(gene.cccn.nodes) == 0) {
    stop("`gene.cccn.nodes` must be a non-empty character vector.")
  }

  if (!is.numeric(combined.score.threshold) ||
      length(combined.score.threshold) != 1 ||
      is.na(combined.score.threshold) ||
      combined.score.threshold < 0 ||
      combined.score.threshold > 1000) {
    stop("`combined.score.threshold` must be a single number between 0 and 1000.")
  }

  # --------------------------------------------------------------------------
  # Standardize nodes if a symbol map is supplied
  # --------------------------------------------------------------------------
  nodes <- .map_nodes_with_symbol_map(gene.cccn.nodes, symbol.map)


  # --------------------------------------------------------------------------
  # Helper for empty returns
  # --------------------------------------------------------------------------
  .empty_edges <- function() {
    data.frame(
      source = character(0),
      target = character(0),
      interaction = character(0),
      Weight = numeric(0),
      stringsAsFactors = FALSE
    )
  }

  # --------------------------------------------------------------------------
  # Local mode: fully offline
  # --------------------------------------------------------------------------
  if (local) {
    if (!file.exists(string.local.path)) {
      stop("Local STRING file not found: ", string.local.path,
           "\nGenerate it from protein.links.full.v12.0.txt.gz first.")
    }

    message("Reading local STRING file: ", string.local.path)
    dt <- utils::read.delim(string.local.path, stringsAsFactors = FALSE)

    required.cols <- c(
      "source", "target",
      "experimental", "database",
      "combined_score"
    )

    if (include.transferred) {
      required.cols <- c(
        required.cols,
        "experimental_transferred",
        "database_transferred"
      )
    }

    missing.cols <- setdiff(required.cols, colnames(dt))
    if (length(missing.cols) > 0) {
      stop("Local STRING file is missing required columns: ",
           paste(missing.cols, collapse = ", "))
    }

    dt <- dt[
      dt$combined_score >= combined.score.threshold &
        dt$source %in% nodes &
        dt$target %in% nodes,
    ]

    if (nrow(dt) == 0) {
      warning("No local STRING edges passed the filters.")
      return(.empty_edges())
    }

    if (include.transferred) {
      keep <- dt$experimental > 0 |
        dt$experimental_transferred > 0 |
        dt$database > 0 |
        dt$database_transferred > 0
    } else {
      keep <- dt$experimental > 0 | dt$database > 0
    }

    dt <- dt[keep, ]

    if (nrow(dt) == 0) {
      warning("No local STRING edges with selected evidence types passed the filters.")
      return(.empty_edges())
    }

    dt$edgeType <- "STRINGdb"

    if (include.transferred) {
      dt[dt$database_transferred > 0, "edgeType"] <- "database_transferred"
      dt[dt$database > 0, "edgeType"] <- "database"
      dt[dt$experimental_transferred > 0, "edgeType"] <- "experimental_transferred"
      dt[dt$experimental > 0, "edgeType"] <- "experimental"
      dt$Weight <- rowSums(
        dt[, c("experimental", "experimental_transferred",
               "database", "database_transferred"), drop = FALSE]
      )
    } else {
      dt[dt$database > 0, "edgeType"] <- "database"
      dt[dt$experimental > 0, "edgeType"] <- "experimental"
      dt$Weight <- rowSums(
        dt[, c("experimental", "database"), drop = FALSE]
      )
    }

    stringdb.edges <- unique(dt[, c("source", "target", "edgeType", "Weight")])
    colnames(stringdb.edges) <- c("source", "target", "interaction", "Weight")
    rownames(stringdb.edges) <- NULL
    return(stringdb.edges)
  }

  # --------------------------------------------------------------------------
  # Live mode
  # --------------------------------------------------------------------------
  if (!requireNamespace("STRINGdb", quietly = TRUE)) {
    stop("Please install STRINGdb: BiocManager::install('STRINGdb')")
  }

  nodenames <- data.frame(Gene.Names = nodes, stringsAsFactors = FALSE)

  string.db <- STRINGdb::STRINGdb$new(
    version = "12.0",
    species = 9606,
    score_threshold = 0,
    network_type = "full",
    link_data = "full",
    input_directory = ""
  )

  message("Querying STRINGdb for interactions between ", length(nodes), " genes...")
  string.proteins <- string.db$get_proteins()

  message("Mapping genes to STRING IDs...")
  mapped.genes <- string.db$map(nodenames, "Gene.Names", removeUnmappedRows = TRUE)

  if (nrow(mapped.genes) == 0) {
    warning("No input genes could be mapped to STRING.")
    return(.empty_edges())
  }

  message("Retrieving interactions for mapped genes...")
  interactions <- string.db$get_interactions(mapped.genes$STRING_id)

  if (nrow(interactions) == 0) {
    warning("STRINGdb returned no interactions.")
    return(.empty_edges())
  }

  message("Formatting...")
  interactions$Gene.1 <- sapply(interactions$from, function(x) {
    string.proteins[match(x, string.proteins$protein_external_id), "preferred_name"]
  })
  interactions$Gene.2 <- sapply(interactions$to, function(x) {
    string.proteins[match(x, string.proteins$protein_external_id), "preferred_name"]
  })

  if (!"combined_score" %in% colnames(interactions)) {
    stop("Live STRINGdb interactions did not include a `combined_score` column.")
  }

  interactions <- interactions[
    interactions$combined_score >= combined.score.threshold &
      interactions$Gene.1 %in% nodes &
      interactions$Gene.2 %in% nodes,
  ]

  if (nrow(interactions) == 0) {
    warning("No live STRING edges passed the filters.")
    return(.empty_edges())
  }

  if (include.transferred) {
    str.e  <- interactions[interactions$experiments > 0, ]
    str.et <- interactions[interactions$experiments_transferred > 0, ]
    str.d  <- interactions[interactions$database > 0, ]
    str.dt <- interactions[interactions$database_transferred > 0, ]
    combined_interactions <- unique(rbind(str.e, str.et, str.d, str.dt))
  } else {
    str.e <- interactions[interactions$experiments > 0, ]
    str.d <- interactions[interactions$database > 0, ]
    combined_interactions <- unique(rbind(str.e, str.d))
  }

  if (nrow(combined_interactions) == 0) {
    warning("No live STRING edges with selected evidence types passed the filters.")
    return(.empty_edges())
  }

  combined_interactions$edgeType <- "STRINGdb"

  if (include.transferred) {
    combined_interactions[combined_interactions$database_transferred > 0, "edgeType"] <- "database_transferred"
    combined_interactions[combined_interactions$database > 0, "edgeType"] <- "database"
    combined_interactions[combined_interactions$experiments_transferred > 0, "edgeType"] <- "experimental_transferred"
    combined_interactions[combined_interactions$experiments > 0, "edgeType"] <- "experimental"

    combined_interactions$Weight <- rowSums(
      combined_interactions[, c("experiments", "experiments_transferred",
                                "database", "database_transferred"), drop = FALSE]
    )
  } else {
    combined_interactions[combined_interactions$database > 0, "edgeType"] <- "database"
    combined_interactions[combined_interactions$experiments > 0, "edgeType"] <- "experimental"

    combined_interactions$Weight <- rowSums(
      combined_interactions[, c("experiments", "database"), drop = FALSE]
    )
  }

  stringdb.edges <- unique(combined_interactions[, c("Gene.1", "Gene.2", "edgeType", "Weight")])
  colnames(stringdb.edges) <- c("source", "target", "interaction", "Weight")
  rownames(stringdb.edges) <- NULL

  stringdb.edges
}


#' Get GeneMANIA Edges
#'
#' @description
#' Return a filtered GeneMANIA edge list, either by parsing a GeneMANIA
#' Cytoscape export file (original behaviour) or by reading a pre-downloaded
#' full Homo sapiens network (local mode). Optionally standardizes the node list
#' using a precomputed symbol map.
#'
#' @param gm.results.path Path to GeneMANIA results text file (used when local = FALSE).
#' @param gene.cccn.nodes Character vector of CCCN node symbols.
#' @param local Logical. If TRUE, reads from a pre-downloaded local file instead
#'   of a Cytoscape export. Default is FALSE.
#' @param genemania.local.path Path to the pre-processed local GeneMANIA file
#'   (hs_interactions_hugo.tsv produced by scripts/genemania_hs_download.r).
#'   Only used when local = TRUE. Default is "hs_interactions_hugo.tsv".
#' @param gm.interaction.types Character vector of interaction group names to retain.
#'   Default retains Pathway and Physical Interactions.
#' @param symbol.map Optional data frame produced by `StandardizeGeneSymbols()`.
#'   If supplied, `gene.cccn.nodes` will be converted to `standard_symbol`
#'   before filtering.
#'
#' @return Data frame with columns: source, target, interaction, Weight
#' @export
#' @examples
#' # sym.map <- StandardizeGeneSymbols(ex.gene.cccn.nodes)
#' # gm.edges <- GetGeneMANIA.edges(
#' #   gm.results.path = ex.gm.results.path,
#' #   gene.cccn.nodes = ex.gene.cccn.nodes,
#' #   symbol.map = sym.map
#' # )
GetGeneMANIA.edges <- function(gm.results.path,
                               gene.cccn.nodes,
                               local = FALSE,
                               genemania.local.path = "hs_interactions_hugo.tsv",
                               gm.interaction.types = c("Pathway", "Physical Interactions"),
                               symbol.map = NULL) {

  nodes <- .map_nodes_with_symbol_map(gene.cccn.nodes, symbol.map)

  if (local) {
    if (!file.exists(genemania.local.path)) {
      stop("Local GeneMANIA file not found: ", genemania.local.path,
           "\nGenerate it with scripts/genemania_hs_download.r or set local = FALSE.")
    }

    message("Reading local GeneMANIA file: ", genemania.local.path)
    dt <- utils::read.delim(genemania.local.path, stringsAsFactors = FALSE)

    required.cols <- c("Gene1", "Gene2", "Group", "Weight")
    missing.cols <- setdiff(required.cols, colnames(dt))
    if (length(missing.cols) > 0) {
      stop("Local GeneMANIA file is missing required columns: ",
           paste(missing.cols, collapse = ", "))
    }

    dt <- dt[dt$Group %in% gm.interaction.types, ]
    dt <- dt[dt$Gene1 %in% nodes & dt$Gene2 %in% nodes, ]

    if (nrow(dt) == 0) {
      warning("No local GeneMANIA edges passed the filters.")
      return(data.frame(
        source = character(0),
        target = character(0),
        interaction = character(0),
        Weight = numeric(0),
        stringsAsFactors = FALSE
      ))
    }

    dt <- unique(dt[, c("Gene1", "Gene2", "Group", "Weight")])
    colnames(dt) <- c("source", "target", "interaction", "Weight")
    rownames(dt) <- NULL
    return(dt)
  }

  # ---- Live mode: original Cytoscape export behaviour ----

  all_lines <- readLines(gm.results.path)

  start_line <- grep("Weight\\tType", all_lines)
  end_line <- grep("^Gene\\s+GO ids", all_lines)
  if (length(end_line) == 0) end_line <- length(all_lines) + 1

  network_lines <- all_lines[start_line[1]:(end_line[1] - 1)]

  edgetable <- read.table(
    text = network_lines,
    header = TRUE,
    stringsAsFactors = FALSE,
    sep = "\t",
    comment.char = "#",
    na.strings = "",
    quote = "",
    fill = TRUE
  )

  keeper <- edgetable$Type %in% gm.interaction.types
  edgetable <- edgetable[keeper, ]
  edgetable <- edgetable[, c("Gene.1", "Gene.2", "Type", "Weight")]
  colnames(edgetable) <- c("source", "target", "interaction", "Weight")

  keep <- edgetable$source %in% nodes & edgetable$target %in% nodes
  genemania.edges <- unique(edgetable[keep, ])

  if (nrow(genemania.edges) == 0) {
    warning("No GeneMANIA edges passed the filters.")
  }

  rownames(genemania.edges) <- NULL
  return(genemania.edges)
}

#' Get Kinase-Substrate Edges
#'
#' @description
#' Read a kinase-substrate dataset from PhosphoSitePlus and return an edge list
#' filtered to the supplied node set. Optionally standardizes the node list using
#' a precomputed symbol map.
#'
#' @param kinasesubstrate.filename Path to the kinase substrate database file.
#' @param gene.cccn.nodes Character vector of CCCN node symbols.
#' @param symbol.map Optional data frame produced by `StandardizeGeneSymbols()`.
#'   If supplied, `gene.cccn.nodes` will be converted to `standard_symbol`
#'   before filtering.
#'
#' @return Data frame with columns: source, target, interaction, Weight
#' @export
#' @examples
#' # sym.map <- StandardizeGeneSymbols(ex.gene.cccn.nodes)
#' # ks.edges <- GetKinsub.edges(
#' #   kinasesubstrate.filename = "Kinase_Substrate_Dataset.txt",
#' #   gene.cccn.nodes = ex.gene.cccn.nodes,
#' #   symbol.map = sym.map
#' # )
GetKinsub.edges <- function(kinasesubstrate.filename = "Kinase_Substrate_Dataset.txt",
                            gene.cccn.nodes,
                            symbol.map = NULL) {

  nodes <- toupper(.map_nodes_with_symbol_map(gene.cccn.nodes, symbol.map))

  kinasesubstrateraw <- read.table(
    kinasesubstrate.filename,
    header = TRUE,
    skip = 3,
    stringsAsFactors = FALSE,
    sep = "\t",
    na.strings = "",
    fill = TRUE
  )

  kinsub <- kinasesubstrateraw

  if (any(is.na(kinsub$GENE))) {
    kinsub[which(is.na(kinsub$GENE)), "GENE"] <-
      as.character(kinsub[which(is.na(kinsub$GENE)), "KINASE"])
  }

  if (any(is.na(kinsub$SUB_GENE))) {
    kinsub[which(is.na(kinsub$SUB_GENE)), "SUB_GENE"] <-
      as.character(kinsub[which(is.na(kinsub$SUB_GENE)), "SUBSTRATE"])
  }

  kinase <- toupper(kinsub$GENE)
  substrate <- toupper(kinsub$SUB_GENE)

  kinsub <- unique(data.frame(
    source = kinase,
    target = substrate,
    stringsAsFactors = FALSE
  ))

  kinsub.edges <- kinsub[kinsub$source %in% nodes & kinsub$target %in% nodes, ]
  kinsub.edges$interaction <- "pp"
  kinsub.edges$Weight <- 1

  kinsub.edges <- remove.autophos(kinsub.edges)

  if (nrow(kinsub.edges) == 0) {
    warning("No kinase-substrate edges passed the filters.")
  }

  rownames(kinsub.edges) <- NULL
  return(kinsub.edges)
}
