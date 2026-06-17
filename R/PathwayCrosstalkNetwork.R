#' Read Bioplanet File
#'
#' Reads a Bioplanet CSV file and converts it into a named list of pathways,
#' where each list element is a character vector of gene symbols.
#'
#' @param bioplanet.file Path to a delimited Bioplanet text file.
#'   Common delimiters such as comma, tab, semicolon, and pipe are supported.
#'
#' @return A named list of pathways and associated gene symbols.
#' @export
ReadBioplanetFile <- function(bioplanet.file = "bioplanet.csv") {
  required.cols <- c("PATHWAY_ID", "PATHWAY_NAME", "GENE_ID", "GENE_SYMBOL")

  if (!is.character(bioplanet.file) || length(bioplanet.file) != 1L || is.na(bioplanet.file) || !nzchar(bioplanet.file)) {
    stop("bioplanet.file must be a single non-empty file path string.")
  }
  if (!file.exists(bioplanet.file)) {
    stop(paste(bioplanet.file, "not found. Please check your working directory."))
  }

  read_attempts <- list(
    function(path) utils::read.csv(path, stringsAsFactors = FALSE),
    function(path) utils::read.delim(path, stringsAsFactors = FALSE),
    function(path) utils::read.table(path, sep = ";", header = TRUE, stringsAsFactors = FALSE),
    function(path) utils::read.table(path, sep = "|", header = TRUE, stringsAsFactors = FALSE)
  )

  bioplanet <- NULL
  for (reader in read_attempts) {
    parsed <- tryCatch(reader(bioplanet.file), error = function(e) NULL)
    if (!is.null(parsed) && is.data.frame(parsed)) {
      missing.cols <- setdiff(required.cols, names(parsed))
      if (length(missing.cols) == 0) {
        bioplanet <- parsed
        break
      }
    }
  }

  if (is.null(bioplanet)) {
    stop("Could not parse bioplanet.file with a supported delimiter or required columns are missing.")
  }

  # Correct errors from Excel
  bioplanet[, "GENE_SYMBOL"] <- sapply(bioplanet$GENE_SYMBOL, fix.excel)

  # Turn Bioplanet table into list of pathways (character vectors of gene symbols)
  PATHWAY_NAME <- NULL
  pathways.list <- plyr::dlply(bioplanet, plyr::.(PATHWAY_NAME))
  pathways.list <- lapply(pathways.list, `[`, "GENE_SYMBOL")
  pathways.list <- lapply(pathways.list, unlist, use.names = FALSE)

  pathways.list
}

#' Build Pathway Crosstalk Network
#'
#' Converts Bioplanet pathways from (<https://tripod.nih.gov/bioplanet/>)  into a list of pathways whose elements are the genes in each pathway. Edge weights are either the PTM Cluster Weight or according to the Jaccard Similarity.
#'
#' @param common.clusters The list of common clusters between all three distance metrics (Euclidean, Spearman, and SED). Can be made in MakeCorrelationNetwork
#' @param bioplanet.file Either the path to a delimited Bioplanet file, or a named list of pathways where each list element is a character vector of gene symbols.
#' @param createfile The path of where to create the edgelist file. Defaults to the working directory, if FALSE is provided, a file will not be created.
#' @param PCN.edgelist.name Name of the PCN edgelist file to be created
#' @return A list with these data structures at the given index: \enumerate{
#' \item{Contains pathway source-target columns, along with the interaction type.}
#' \item{Contains pathway source-target columns, with edge weights of their jaccard similarity and their Pathway-Pathway Evidence score.}
#' \item{All pathways in the bioplanet database as a named list containing string vectors. Each vector is a pathway with strings associated with the genes in that pathway.}
#' }
#' @export
#'
#' @examples
#' Example_Output <- BuildPathwayCrosstalkNetwork(ex_common_clusters, ex_pathways_list, createfile = FALSE)
#' Example_Output[[1]][[3,]]
#' Example_Output[[3]][[1:3]]
BuildPathwayCrosstalkNetwork <- function(common.clusters, bioplanet.file = "bioplanet.csv", createfile = getwd(), PCN.edgelist.name = "PCN_file"){
  message("Making PCN")
  start_time <- Sys.time()
  message(start_time)
  if(is.character(createfile) && !dir.exists(createfile)) stop(paste("Could not find directory", createfile)) #If createfile is a path but an incorrect one

  # Accept either a file path or pre-built pathways.list
  if (is.character(bioplanet.file)) {
    pathways.list <- ReadBioplanetFile(bioplanet.file)
  } else if (is.list(bioplanet.file) && !is.data.frame(bioplanet.file)) {
    pathways.list <- bioplanet.file
  } else {
    stop(paste(class(bioplanet.file), "is not a supported file type. Please provide a file path or a named list of pathways."))
  }

  if (is.null(names(pathways.list)) || any(names(pathways.list) == "")) {
    stop("pathways.list must be a named list with pathway names.")
  }
  pathways.list <- lapply(pathways.list, as.character)


  ### Functions to help caluclate the jaccard similarity ###
  find.jaccard.val <- function(charvectorrow){ #Helper function to pass into an "apply" function for a matrix that contains character vectors. Matrix dimensions should be 2 columns x any number of rows
    p.intersect <- length(intersect(charvectorrow[[1]], charvectorrow[[2]])) #Length of Intersect
    p.union     <- length(charvectorrow[[1]]) + length(charvectorrow[[2]]) - p.intersect #Length of Union
    jaccard.value <- p.intersect/p.union
    if(jaccard.value == 0) return(NA) #Return NA if 0 for igraph
    return(jaccard.value) #Return the jaccard value
  }

  combinations <- utils::combn #Mask the utils::combn with a more descriptive term


  ### Create the main data structure and add Jaccard Values ###
  PCNedgelist <- t(combinations(names(pathways.list), 2)) #Creating the edgelist. First two columns of the data frame like PATHWAY | PATHWAY; Found by finding all pairs pathway names
  combn.vector <- combinations(pathways.list, 2)  #The values of the above vector, performs the same operation to get pairs of string vectors containing gene names instead of pathway names. Prepares data for analysis
  jaccard.values <- apply(combn.vector, 2, find.jaccard.val) #Find the jaccard value for every pair of string vectors in combn.svector
  PCNedgelist <- cbind(PCNedgelist, jaccard.values) #Attach the JACCARD VALUE column to PATHWAY | PATHWAY
  bioplanetjaccardedges <- as.data.frame(PCNedgelist)
  bioplanetjaccardedges <- bioplanetjaccardedges[!is.na(bioplanetjaccardedges$jaccard.values),]
  bioplanetjaccardedges$interaction <- "pathway_Jaccard_similarity"
  names(bioplanetjaccardedges)[1:2] <- c("source", "target") # For Cytoscape graphing

  ### Pathway Cluster Evidence ###
  CPE.matrix <- matrix(NA, nrow = length(common.clusters), ncol = length(pathways.list)) #Initilize empty data structure, Clusters x Pathways
  rownames(CPE.matrix) <- names(common.clusters) #Names
  colnames(CPE.matrix) <- names(pathways.list)

  #pathways.temp <- as.data.frame(table(bioplanet$GENE_SYMBOL)) #Create table for how many times each gene appears in the pathways list. Needs to be converted into a named vector for efficent runtime.
  pathways.temp <- as.data.frame(table(unlist(pathways.list))) #Create table for how many times each gene appears in the pathways list. Needs to be converted into a named vector for efficent runtime.
  pathgene.count <- pathways.temp$Freq #Transform into a named vector
  names(pathgene.count) <- pathways.temp$Var1 #Now any string vector of genes like pathways.hash[[c("AARS", "ABCA1")]] will return the frequency of how many times those genes appear in the pathway list *in constant time*. Sum() to return the total
  get_weighted_gene_counts <- function(ptm_vec, pepsep = ";") {
    all_genes <- character()
    all_weights <- numeric()

    for (ptm_entry in ptm_vec) {
      # Normalize spacing
      ptm_entry <- gsub("[;,]\\s*", ";", ptm_entry)

      # Split ambiguous entry
      ptm_parts <- strsplit(ptm_entry, pepsep, fixed = TRUE)[[1]]

      # Extract gene names (string before first space)
      genes <- sapply(ptm_parts, function(part) strsplit(part, " ", fixed = TRUE)[[1]][1])

      weight <- 1 / length(genes)

      all_genes <- c(all_genes, genes)
      all_weights <- c(all_weights, rep(weight, length(genes)))
    }

    # Aggregate weights for duplicated gene names
    gene_weights <- tapply(all_weights, all_genes, sum)

    return(gene_weights)
  }


  for (a in 1:nrow(CPE.matrix)) {

    # Step 1: Get weighted gene counts for cluster a
    gene.count <- get_weighted_gene_counts(common.clusters[[a]])  #

    cluster.length <- length(common.clusters[[a]])

    for (b in 1:ncol(CPE.matrix)) {

      # Get genes in this pathway
      pathway.genes <- pathways.list[[b]]

      # Numerator: weighted sum of pathway genes in this cluster
      num <- gene.count[pathway.genes]

      # Denominator: total frequency across all pathways
      den <- pathgene.count[pathway.genes]

      value <- sum(num / den, na.rm = TRUE) / cluster.length

      if (!is.na(value) && value != 0) {
        CPE.matrix[a, b] <- value
      }
    }
  }

  ### Generate PCN network ###
  # Get a vector of all the PTP weights for every pair of pathways using the CPE weights to filter. For a PTP weight to be non-NA, the PTP weight will be the sum of all clusters both pathways have nonzero CPEs in.

  PTPscore <- apply(PCNedgelist[,1:2], 1, function(x) {
    rows <- rowSums(!is.na(CPE.matrix[, x])) == 2
    if (any(rows)) {
      sum(CPE.matrix[rows, x], na.rm = TRUE)
    } else {
      NA
    }})


  PTPscore[PTPscore== 0] <- NA # Safety check: Turn all 0s created in above line into NAs

  PCNedgelist <- cbind(PCNedgelist, PTPscore) #Bind all the columns together. Now Data structure is PATHWAY | PATHWAY | Jaccard | CPE
  PCNedgelist <- PCNedgelist[rowSums(is.na(PCNedgelist)) != 2, ] #Remove all rows that only have NA values for the jaccard and CPE values
  PCNedgelist <- as.data.frame(PCNedgelist)
  names(PCNedgelist) <- c("source", "target", "pathway_Jaccard_similarity", "PTM_cluster_evidence")
  # Sort by the highest PTM cluster evidence
  # PCNedgelist <- PCNedgelist[order(PCNedgelist$PTM_cluster_evidence, decreasing = TRUE),]
  PCNedgelist$pathway_Jaccard_similarity <- as.numeric(PCNedgelist$pathway_Jaccard_similarity)
  PCNedgelist$PTM_cluster_evidence <- as.numeric(PCNedgelist$PTM_cluster_evidence)
  # Convert NA to 0
  PCNedgelist[is.na(PCNedgelist)] <- 0
  # Subset data frames
  zero_jaccard <- PCNedgelist[PCNedgelist$pathway_Jaccard_similarity == 0, ]
  nonzero_jaccard <- PCNedgelist[PCNedgelist$pathway_Jaccard_similarity > 0, ]

  # Sort both by PTM_cluster_evidence in decreasing order
  zero_jaccard <- zero_jaccard[order(zero_jaccard$PTM_cluster_evidence, decreasing=TRUE), ]
  nonzero_jaccard <- nonzero_jaccard[order(nonzero_jaccard$PTM_cluster_evidence, decreasing=TRUE), ]

  # Combine results: zero-jaccard block on top, then nonzero-jaccard block
  PCNedgelist <- rbind(zero_jaccard, nonzero_jaccard)

  # For Cytoscape graphing
  #Remove all rows that only have NA values for  CPE values
  bioplanetCPEedges <- PCNedgelist[!is.na(PCNedgelist[,"PTM_cluster_evidence"]), c("source", "target", "PTM_cluster_evidence")]
  # For Cytoscape it's useful to have both types of edges for plotting in different colors

  # Assign interaction, required for Cytoscape
  bioplanetCPEedges$interaction <- "PTM_cluster_evidence"
  # Create pathway crosstalk network with individual cluster and bioplanet edges
  jaccard.net <- bioplanetjaccardedges
  names(jaccard.net) <- c("source", "target", "Weight", "interaction")
  CPE.net <- bioplanetCPEedges
  names(CPE.net) <- c("source", "target", "Weight", "interaction")
  pathway.crosstalk.network <- rbind(CPE.net, jaccard.net)

  ### Save edgefile for cytoscape plotting ###

  if(is.character(createfile)){ #Don't need to check if directory exists since was done above
    saved.dir <- getwd()
    setwd(createfile)
    filename <- paste(PCN.edgelist.name, ".csv", sep="") #Name of the file created with .csv appended
    utils::write.csv(pathway.crosstalk.network, file = filename, row.names = FALSE) #Save to files for cytoscape...

    cat(filename, "made in directory:", getwd()) #Tell the user where their files got put
    setwd(saved.dir)
  }
  end_time <- Sys.time()
  message(end_time)
  #calculate difference between start and end time
  total_time <- end_time - start_time
  message(noquote(paste("Total time: ", total_time, sep="")))
  return(list(pathway.crosstalk.network, PCNedgelist, pathways.list))
}



