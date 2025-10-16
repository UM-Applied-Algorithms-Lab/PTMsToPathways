#' Make Database Input File
#'
#' This function outputs a file consisting entirely of gene names, each produced on a new line. This data can be copy and pasted into
#' a database input in order to get protein-protein interaction data.
#'
#' @param gene.cccn A matrix showing strength of relationships between proteins using the common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
#' @param file.path.name Path for the output file; defaults to db_nodes.txt
#'
#' @return A file with all of the gene names which can be copy and pasted into the GeneMania cytoscape app, data frame of the names of the genes
#' @export
#'
#' @examples
#' #MakeDBInput(ex.nodenames)
#' cat(ex.nodenames[[1]], sep = '\n')
MakeDBInput <- function(gene.cccn, file.path.name = "db_nodes.txt") {
  utils::write.table(unique(gene.cccn.edges[, c("source", "target")]), file = file.path.name, row.names = FALSE, col.names = FALSE, quote = FALSE)
}


# Pulls nodenames from the gene.cccn
#
# This helper function pulls the gene names from the gene.cccn into a list 'nodenames'
#
# @param gene.cccn A matrix showing strength of relationships between proteins using the common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
# @return data frame of the names of the genes
cccn_to_nodenames <- function(gene.cccn.edges){

  gene.names <- unique(gene.cccn.edges[, c("source", "target")])

  nodenames <- data.frame(Gene.Names = gene.names, stringsAsFactors = FALSE)

  #return :)
  return(nodenames)
}


#' @title Get STRINGdb PPI data
#'
#' @description This function finds protein-protein interaction weights by consulting utilizing the STRINGdb database.
#' The package STRINGdb is required for this function. To download, run:
#' - if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")
#' - BiocManager::install("STRINGdb")
#'
#' @details The full example takes ~10 minutes to load, so it has been commented out and the results are displayed.
#'
#' @param gene.cccn A matrix showing strength of relationships between proteins using common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
#'
#' @return Data frame of consisting of the network of interactions from the genes of study pulled from the STRINGdb database and a list of gene names
#' @export
#'
#' @examples
#' # GetSTRINGdb(ex.gene.cccn)
#' utils::head(ex.stringdb.edges)
#' utils::head(ex.nodenames)
GetSTRINGdb <- function(gene.cccn) {
  nodenames <- cccn_to_nodenames(gene.cccn)

  if(!requireNamespace("STRINGdb", quietly = TRUE)){
    stop("In order to use this function, please download STRINGdb as described in the vignette, the readme, and the function documentation.")
  }

  # Initialize the STRING database object
  string.db <- STRINGdb::STRINGdb$new(version="12.0", species=9606, score_threshold=0, network_type="full", link_data='full', input_directory="")

  # Retrieve the proteins from the STRING database
  string.proteins <- string.db$get_proteins()

  # Map the genes to STRING IDs
  # please note that nodenames replaces the previous "input_dataset"; nodenames appears to work well :)
  # Gene.Names also replaces experimental
  mapped.genes <- string.db$map(nodenames, "Gene.Names", removeUnmappedRows = TRUE)

  # Retrieve the interactions for the mapped genes
  interactions <- string.db$get_interactions(mapped.genes$STRING_id)

  # Convert protein IDs to gene names
  interactions$Gene.1 <- sapply(interactions$from, function(x) string.proteins[match(x, string.proteins$protein_external_id), "preferred_name"])
  interactions$Gene.2 <- sapply(interactions$to, function(x) string.proteins[match(x, string.proteins$protein_external_id), "preferred_name"])

  # Filter interactions based on evidence types
  str.e <- interactions[interactions$experiments > 0, ]
  str.et <- interactions[interactions$experiments_transferred > 0, ]
  str.d <- interactions[interactions$database > 0, ]
  str.dt <- interactions[interactions$database_transferred > 0, ]

  # Combine filtered interactions
  combined_interactions <- unique(rbind(str.e, str.et, str.d, str.dt))

  # Assign edge types
  combined_interactions$edgeType <- "STRINGdb"
  combined_interactions[combined_interactions$experiments > 0, "edgeType"] <- "experimental"
  combined_interactions[combined_interactions$experiments_transferred > 0, "edgeType"] <- "experimental_transferred"
  combined_interactions[combined_interactions$database > 0, "edgeType"] <- "database"
  combined_interactions[combined_interactions$database_transferred > 0, "edgeType"] <- "database_transferred"

  # Calculate weights
  combined_interactions$Weight <- rowSums(combined_interactions[, c("experiments", "experiments_transferred", "database", "database_transferred")])

  # Create the final edges dataframe from STRINGdb
  stringdb.edges <- combined_interactions[, c("Gene.1", "Gene.2", "edgeType", "Weight")]
  # Cytoscape edge column names are c(source, target, interaction, Weight)
  colnames(stringdb.edges) <- c("source", "target", "interaction", "Weight")
  # Return
  return(stringdb.edges)
}


#' Process GM Edge File
#'
#' This function processes the GM edgefile and translates it back into gene names using the nodetable.
#'
#' @param gm.edgefile.path Path to GeneMANIA edgefile
#' @param gm.nodetable.path Path to GeneMANIA nodetable
#' @param db_nodes.path Path to the node file from MakeDBInput
#'
#' @return Data frame of consisting of the network of interactions from the genes of study
#' @export
#'
#' @examples
#' ex.edgefile <- system.file("extdata/ex_gm_edgetable.csv", package = "PTMsToPathways")
#' ex.nodefile <- system.file("extdata/ex_gm_nodetable.csv", package = "PTMsToPathways")
#' ex.db.nodes  <- system.file("extdata/ex_db_nodes.txt", package = "PTMsToPathways")
#' Example_Output <- ProcessGMEdgefile(ex.edgefile, ex.nodefile, ex.db.nodes)
#' utils::head(Example_Output)
# NOTE:
#  GeneMANIA Cytoscape app has the ability to export network as text in the Results panel. The initial approach to extract only the network of interactions is to manually duplcate the file and delete all but the PPIs for the following. However, we now add code to do this as part of the function.
# Note: The column names may change in future releases of GeneMANIA.
ProcessGMEdgefile <- function(gm.edgefile.path, gm.nodetable.path, db_nodes.path){
  # edgetable <- utils::read.table(gm.edgefile.path, header=TRUE, sep = "\t", comment.char = "#", na.strings='', quote = "", stringsAsFactors=FALSE, fill=TRUE)        # read the edgefile
  # nodetable <- utils::read.csv(gm.nodetable.path, header = TRUE)       # read the nodetable
  nodenames <- utils::read.table(db_nodes.path, header = FALSE)[[1]]   # read the nodenames file

  nodenames <- nodenames[!is.na(nodenames)]   # REMOVE   NAs. if present
  # Read all lines
  all_lines <- readLines(gm.edgefile.path)

  # Locate start: line exactly matching the header for your network section
  start_line <- grep("Weight\\tType", all_lines)
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
    comment.char = "#", na.strings='', quote = "",  fill=TRUE
  )

  keeper <- edgetable$Type == "Pathway" | edgetable$Type == "Physical Interactions"   # which rows have these data types
  edgetable <- edgetable[keeper,]                                                               # copy 'em over
  # Cytoscape edge column names are c(source, target, interaction, Weight), so re-order columns to match StringDB edges
  edgetable <- edgetable[, c("Gene.1", "Gene.2", "Type", "Weight")]
  colnames(edgetable) <- c("source", "target", "interaction", "Weight")
  keep <- edgetable$source %in% nodenames & edgetable$target %in% nodenames         # which rows are we keeping
  genemania.edges <- edgetable[keep,]                                                 # copy 'em over

  return(genemania.edges)
}

#' Format Kinsub Table
#'
#' Include kinase substrate dataset from PhosphoSitePlus https://www.phosphosite.org/staticDownloads
#'
#' @param kinasesubstrate.filename The path to the kinase substrate database file from https://www.phosphosite.org/staticDownloads
#'
#' @return An edgelist filtered by the gene cccn and nodenames
#' @export
formatKinsubTable <- function (kinasesubstrate.filename = "Kinase_Substrate_Dataset.txt") {
  # kinasesubstrate.filename <- "Kinase_Substrate_Dataset.txt"
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
  nodenames <- as.character(as.vector(unlist(cccn_to_nodenames(gene.cccn))))
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

