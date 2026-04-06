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


#' @title Get STRINGdb PPI data
#'
#' @description This function finds protein-protein interaction weights by consulting the STRINGdb database,
#' either live via the STRINGdb R package or from a locally pre-downloaded flat file.
#' The package STRINGdb is required for the live mode. To download, run:
#' - if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")
#' - BiocManager::install("STRINGdb")
#'
#' For the local mode, download the full detailed network file for Homo sapiens from:
#' https://stringdb-downloads.org/download/protein.links.detailed.v12.0/9606.protein.links.detailed.v12.0.txt.gz
#' and pre-process it to HUGO symbols using the companion script string_to_hugo.R.
#' The resulting file (string_hs_hugo.tsv) is the expected input for local mode.
#'
#' @details The full example takes ~10 minutes to load in live mode, so it has been commented out and the results are displayed.
#'
#' @param gene.cccn.edges A dataframe showing interaction relationships between proteins using common PTM clusters derived from three distance metrics (Euclidean, Spearman, and Combined (SED))
#' @param gene.cccn.nodes A list of nodes that are in the Gene CoCluster Correlation Network derived from common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
#' @param local Logical. If TRUE, reads from a pre-downloaded local file instead of querying the live STRINGdb API. Default is FALSE.
#' @param string.local.path Path to the pre-processed local STRING file (string_hs_hugo.tsv produced by string_to_hugo.R).
#'   Only used when local = TRUE. Default is "string_hs_hugo.tsv".
#' @param combined.score.threshold Integer (0–1000). Minimum combined_score to retain an edge when reading from the
#'   local file. STRING thresholds: low = 150, medium = 400, high = 700, highest = 900. Default is 400.
#'
#' @return Data frame of consisting of the network of interactions from the genes of study pulled from the STRINGdb database and a list of gene names
#' @export
#'
#' @examples
#' # Live mode (original behaviour):
#' # GetSTRINGdb.edges(ex.gene.cccn.edges, ex.gene.cccn.nodes)
#'
#' # Local mode (future-proof, no internet required):
#' # GetSTRINGdb.edges(ex.gene.cccn.edges, ex.gene.cccn.nodes,
#' #                   local = TRUE, string.local.path = "string_hs_hugo.tsv")
#'
#' utils::head(ex.stringdb.edges)
#' utils::head(ex.nodenames)
GetSTRINGdb.edges <- function(gene.cccn.edges,
                               gene.cccn.nodes,
                               local                  = FALSE,
                               string.local.path      = "string_hs_hugo.tsv") {

  if (local) {
    # ---- Local mode: read pre-downloaded HUGO-mapped file ----
    if (!file.exists(string.local.path))
      stop("Local STRING file not found: ", string.local.path,
           "\nGenerate it with string_to_hugo.R or set local = FALSE to use the live API.")

    if (!requireNamespace("data.table", quietly = TRUE))
      stop("Please install data.table: install.packages('data.table')")

    message("Reading local STRING file: ", string.local.path)
    dt <- data.table::fread(string.local.path, sep = "\t")
    # Expected columns: source target interaction Weight neighborhood fusion
    #                   cooccurence coexpression experimental database
    #                   textmining combined_score

    # Filter to nodes present in gene.cccn.nodes (both ends must be in the set)
    dt <- dt[source %in% gene.cccn.nodes & target %in% gene.cccn.nodes]
    # note experimental not experiments and no "transferred" in this file
    str.e <- dt[dt$experimental > 0, ]
    #str.et <- interactions[interactions$experiments_transferred >  0, ]
    str.d <- dt[dt$database > 0, ]
    # str.dt <- interactions[interactions$database_transferred >  0, ]
    combined_interactions <- unique(rbind(str.e, str.d))
    combined_interactions$edgeType <- "STRINGdb"
    combined_interactions[combined_interactions$experimental >
                            0, "edgeType"] <- "experimental"

    combined_interactions[combined_interactions$database > 0,
                          "edgeType"] <- "database"

    combined_interactions$Weight <- rowSums(combined_interactions[, c("experimental", "database")])
    stringdb.edges <- combined_interactions[, c("source", "target", "edgeType", "Weight")]
    colnames(stringdb.edges) <- c("source", "target", "interaction", "Weight")
    # Return columns matching the live-mode output
    stringdb.edges <- as.data.frame(dt[, .(source, target, interaction, Weight)])

  } else {
    # ---- Live mode: original STRINGdb API behaviour ----------
    nodenames <- data.frame(Gene.Names = gene.cccn.nodes)

    if (!requireNamespace("STRINGdb", quietly = TRUE))
      stop("In order to use this function, please download STRINGdb as described in the vignette, the readme, and the function documentation.")

    # Initialize the STRING database object
    string.db <- STRINGdb::STRINGdb$new(version = "12.0", species = 9606,
                                        score_threshold = 0, network_type = "full",
                                        link_data = 'full', input_directory = "")

    # Retrieve the proteins from the STRING database
    string.proteins <- string.db$get_proteins()

    # Map the genes to STRING IDs
    mapped.genes <- string.db$map(nodenames, "Gene.Names", removeUnmappedRows = TRUE)

    # Retrieve the interactions for the mapped genes
    interactions <- string.db$get_interactions(mapped.genes$STRING_id)

    # Convert protein IDs to gene names
    interactions$Gene.1 <- sapply(interactions$from, function(x)
      string.proteins[match(x, string.proteins$protein_external_id), "preferred_name"])
    interactions$Gene.2 <- sapply(interactions$to, function(x)
      string.proteins[match(x, string.proteins$protein_external_id), "preferred_name"])

    # Filter interactions based on evidence types
    str.e  <- interactions[interactions$experiments > 0, ]
    str.et <- interactions[interactions$experiments_transferred > 0, ]
    str.d  <- interactions[interactions$database > 0, ]
    str.dt <- interactions[interactions$database_transferred > 0, ]

    # Combine filtered interactions
    combined_interactions <- unique(rbind(str.e, str.et, str.d, str.dt))

    # Assign edge types
    combined_interactions$edgeType <- "STRINGdb"
    combined_interactions[combined_interactions$experiments > 0,             "edgeType"] <- "experimental"
    combined_interactions[combined_interactions$experiments_transferred > 0, "edgeType"] <- "experimental_transferred"
    combined_interactions[combined_interactions$database > 0,                "edgeType"] <- "database"
    combined_interactions[combined_interactions$database_transferred > 0,    "edgeType"] <- "database_transferred"

    # Calculate weights
    combined_interactions$Weight <- rowSums(combined_interactions[,
      c("experiments", "experiments_transferred", "database", "database_transferred")])

    # Create the final edges dataframe from STRINGdb
    stringdb.edges <- combined_interactions[, c("Gene.1", "Gene.2", "edgeType", "Weight")]
    colnames(stringdb.edges) <- c("source", "target", "interaction", "Weight")
  }

  return(stringdb.edges)
}


#' Get GeneMANIA Edges
#'
#' This function returns a filtered GeneMANIA edge list, either by parsing a
#' GeneMANIA Cytoscape export file (original behaviour) or by reading a
#' pre-downloaded full Homo sapiens network (local mode).
#'
#' @param gm.results.path Path to GeneMANIA results text file (used when local = FALSE).
#' @param gene.cccn.nodes A list of nodes that are in the Gene CoCluster Correlation Network derived from common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
#' @param local Logical. If TRUE, reads from a pre-downloaded local file instead of a Cytoscape export. Default is FALSE.
#' @param genemania.local.path Path to the pre-processed local GeneMANIA file (hs_interactions_hugo.tsv produced by genemania_hs_download.R).
#'   Only used when local = TRUE. Default is "hs_interactions_hugo.tsv".
#' @param gm.interaction.types Character vector of interaction group names to retain.
#'   Only used when local = TRUE. Default retains Pathway and Physical Interactions,
#'   matching the filter applied in the original live mode.
#'
#' @return Data frame of consisting of the network of interactions from the genes of study
#'
#' @details
#' Live mode: To get the GeneMANIA results text file, click on the three lines in the upper
#' right corner of the GeneMANIA side window beside the species. Click "Export Results".
#' The path to this file is the gm.results.path.
#'
#' Local mode: Download and process the full GeneMANIA Homo sapiens network using the
#' companion script genemania_hs_download.R, which produces hs_interactions_hugo.tsv.
#'
#' @export
#'
#' @examples
#' # Live mode (original behaviour):
#' ex.gm.results.path <- system.file("extdata/ex_gm_edgetable.csv", package = "PTMsToPathways")
#' example.GeneMANIA.edges <- GetGeneMANIA.edges(ex.gm.results.path, ex.gene.cccn.nodes)
#'
#' # Local mode (future-proof, no internet required):
#' # example.GeneMANIA.edges <- GetGeneMANIA.edges(
#' #   gm.results.path    = NULL,
#' #   gene.cccn.nodes    = ex.gene.cccn.nodes,
#' #   local              = TRUE,
#' #   genemania.local.path = "hs_interactions_hugo.tsv"
#' # )
#'
#' utils::head(example.GeneMANIA.edges)
GetGeneMANIA.edges <- function(gm.results.path,
                                gene.cccn.nodes,
                                local                = FALSE,
                                genemania.local.path = "hs_interactions_hugo.tsv",
                                gm.interaction.types = c("Pathway", "Physical Interactions")) {

  if (local) {
    # ---- Local mode: read pre-downloaded full network --------
    if (!file.exists(genemania.local.path))
      stop("Local GeneMANIA file not found: ", genemania.local.path,
           "\nGenerate it with genemania_hs_download.R or set local = FALSE to use Cytoscape export.")

    if (!requireNamespace("data.table", quietly = TRUE))
      stop("Please install data.table: install.packages('data.table')")

    message("Reading local GeneMANIA file: ", genemania.local.path)
    dt <- data.table::fread(genemania.local.path, sep = "\t")
    # Expected columns: Gene1 Gene2 Weight Network Source Group
    # 'Group' is the interaction category (e.g. "Pathway", "Physical Interactions")

    # Filter to requested interaction types
    dt <- dt[Group %in% gm.interaction.types]

    # Filter to nodes present in gene.cccn.nodes (both ends must be in the set)
    dt <- dt[Gene1 %in% gene.cccn.nodes & Gene2 %in% gene.cccn.nodes]

    # Return columns matching the live-mode output
    genemania.edges <- as.data.frame(dt[, .(
      source      = Gene1,
      target      = Gene2,
      interaction = Group,
      Weight
    )])

  } else {
    # ---- Live mode: original Cytoscape export behaviour ------

    # Note: The column names may change in future releases of GeneMANIA.

    # Read all lines
    all_lines <- readLines(gm.results.path)

    # Locate start: line exactly matching the header for your network section
    start_line <- grep("Weight\tType", all_lines)
    # Locate end: first occurrence of the footer/different table (e.g., GO ids table)
    end_line <- grep("^Gene\\s+GO ids", all_lines)

    # Defensive: Stop at the last line if there is no footer
    if (length(end_line) == 0) end_line <- length(all_lines) + 1

    # Extract: lines containing just the table (from header through end of last row)
    network_lines <- all_lines[start_line[1]:(end_line[1] - 1)]

    # Read network into a data frame, tab-delimited
    edgetable <- read.table(
      text = network_lines,
      header = TRUE,
      stringsAsFactors = FALSE,
      sep = "\t",
      comment.char = "#", na.strings = '', quote = "", fill = TRUE
    )

    keeper <- edgetable$Type %in% gm.interaction.types
    edgetable <- edgetable[keeper, ]
    edgetable <- edgetable[, c("Gene.1", "Gene.2", "Type", "Weight")]
    colnames(edgetable) <- c("source", "target", "interaction", "Weight")
    keep <- edgetable$source %in% gene.cccn.nodes & edgetable$target %in% gene.cccn.nodes
    genemania.edges <- edgetable[keep, ]
  }

  return(genemania.edges)
}

#' Format Kinsub Table
#'
#' Include kinase substrate dataset from PhosphoSitePlus https://www.phosphosite.org/staticDownloads
#'
#' @param kinasesubstrate.filename The path to the kinase substrate database file from https://www.phosphosite.org/staticDownloads
#' @param gene.cccn.nodes A list of nodes that are in the Gene CoCluster Correlation Network derived from common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
#'
#' @return An edgelist filtered by the gene cccn and nodenames
#' @export
GetKinsub.edges <- function (kinasesubstrate.filename = "Kinase_Substrate_Dataset.txt", gene.cccn.nodes) {
  kinasesubstrateraw <- read.table(kinasesubstrate.filename, header=TRUE, skip=3, stringsAsFactors =FALSE, sep = "\t", na.strings='', fill=TRUE)
  #  make this generic: assume if there is a relationship in one species, it is conserved in humans.
  kinasesubstrateraw -> kinsub
  if (any(is.na(kinsub$GENE))) {
    kinsub[which(is.na(kinsub$GENE)),"GENE"] <- as.character(kinsub[which(is.na(kinsub$GENE)),"KINASE"]) }
  if (any(is.na(kinsub$SUB_GENE))) {
    kinsub[which(is.na(kinsub$SUB_GENE)),"SUB_GENE"] <- as.character(kinsub[which(is.na(kinsub$SUB_GENE)),"SUBSTRATE"])	}
  kinase <- toupper(kinsub$GENE)
  substrate <- toupper(kinsub$SUB_GENE)
  kinsub <- data.frame(kinase,substrate)
  kinsub <- unique(kinsub)
  names(kinsub) <- c("source", "target")
  # Prune kinase-substrate to genes in data

  nodenames <- gene.cccn.nodes

  kinsub.edges <- kinsub[kinsub$source %in% nodenames & kinsub$target %in% nodenames, ]
  kinsub.edges$interaction <- "pp"
  kinsub.edges$Weight <- 1
  # We all know that many kinases can phosphorylate themselves, but this clutters the graph, so
  kinsub.edges <- remove.autophos(kinsub.edges)
  return(kinsub.edges)
}


# NOTE: Other PPI network sources are:
  # Pathway Commons: www.pathwaycommons.org
  # BioPlex: https://bioplex.hms.harvard.edu
