#' Pathway Crosstalk Network
#'
#' Converts Bioplanet pathways from (<https://tripod.nih.gov/bioplanet/>)  into a list of pathways whose elements are the genes in each pathway. Edge weights are either the PTM Cluster Weight or according to the Jaccard Similarity.
#'
#' @param common.clusters The list of common clusters between all three distance metrics (Euclidean, Spearman, and SED). Can be made in MakeCorrelationNetwork
#' @param bioplanet.file Either the name of the bioplanet pathway .csv file OR a dataframe. Lines of bioplanet should possess 4 values in the order "PATHWAY_ID","PATHWAY_NAME","GENE_ID","GENE_SYMBOL". Users not well versed in R should only pass in "yourfilename.csv"
#' @param pathwayslist.name bioplanet pathways in list format
#' @param edgelist.name The desired name of the Pathway to Pathway edgelist file created ('.csv' will automatically be added to the end for you); defaults to edgelist. Intended for use in Cytoscape.
#' @param jaccard.edgelist.name The desired name of the pathway_Jaccard_similarity edges
#' @param CPE.edgelist.name The desired name of the Pathway PTM_cluster_evidence edges
#' @param PCN.edgelist.name The desired name of the PCN containg both CPE and Jaccard edges for Cytoscape
#' @param createfile The path of where to create the edgelist file. Defaults to the working directory, if FALSE is provided, a file will not be created.
#' @return An edgelist file that is created in the working directory. Contains pathway source-target columns, with edge weights of their jaccard similarity and their Pathway-Pathway Evidence score
#' @export
#'
#' @examples
#' PathwayCrosstalkNetwork(ex.common.clusters, ex.bioplanet, "ex.edgelist", createfile = FALSE)
#'
PathwayCrosstalkNetwork <- function(common.clusters, bioplanet.file = "bioplanet.csv", pathwayslist.name = "pathways.list", edgelist.name = "PCNedgelist", jaccard.edgelist.name = "jaccard.net", CPE.edgelist.name = "CPE.net", PCN.edgelist.name = "pathway.crosstalk.network", createfile = getwd(), returndata=TRUE){
  # Function to change dates back into gene names - Excel changes many genes into dates and this can't be turned off!
  fix.excel <- function(cell) {
    fixgenes = c("CDC2", "1-Sep", "2-Sep", "3-Sep", "4-Sep", "5-Sep", "7-Sep", "8-Sep", "9-Sep", "10-Sep", "11-Sep", "15-Sep", "6-Sep", "1-Oct", "2-Oct", "3-Oct", "4-Oct", "6-Oct", "7-Oct", "11-Oct", "1-Mar", "2-Mar", "3-Mar", "4-Mar", "5-Mar", "6-Mar", "7-Mar", "8-Mar", "9-Mar", "10-Mar", "11-Mar", "C11orf58", 'C17orf57', 'C3orf10',  'C7orf51', "C11orf59", "C4orf16", "1-Dec", "14-Sep")
    corrects = c("CDK1", "SEPT1", "SEPT2", "SEPT3", "SEPT4", "SEPT5", "SEPT7", "SEPT8", "SEPT9", "SEPT10", "SEPT11", "SEPT15", "SEPT6", "POU2F1", "POU2F2", "POU5F1", "POU5F1", "POU3F1", "POU3F2", "POU2F3", "MARCH1", "MARCH2", "MARCH3", "MARCH4", "MARCH5", "MARCH6", "MARCH7", "MARCH8", "MARCH9", "MARCH10", "MARCH11", "SMAP", "EFCAB13", "BRK1", "NYAP1", "LAMTOR1", 'AP1AR', "DEC1", "SEPT14")
    cellv <- unlist(strsplit(as.character(cell), "; "))
    if (any(fixgenes %in% cellv)) {
      cellv.new <- gsub(fixgenes[fixgenes %in% cellv], corrects[fixgenes %in% cellv], cellv)
      return (paste(cellv.new, collapse="; "))
    } else return(cell)    }
  print("Making PCN")
  start_time <- Sys.time()
  print(start_time)
  if(is.character(createfile) && !dir.exists(createfile)) stop(paste("Could not find directory", createfile)) #If createfile is a path but an incorrect one

  #### Read file in, converts to dataframe like with rows like: PATHWAY_ID | PATHWAY_NAME | GENE_ID | GENE_SYMBOL ###
  if(is.character(bioplanet.file)){ #If Path to a .csv file (string input)
    if(!file.exists(bioplanet.file)) stop(paste(bioplanet.file, "not found. Plese check your working directory."))
    bioplanet <- utils::read.csv(bioplanet.file, stringsAsFactors = F) #Reads the file and turns it into a dataframe

  }else if(is.data.frame(bioplanet.file)){ bioplanet <- bioplanet.file #If data frame input

  }else {stop(paste(class(bioplanet.file), "is not a supported file type. Please make sure you input a path to a .csv file or a data frame"))} #If unsupported

  # Correct errors from Excel
  bioplanet[, "GENE_SYMBOL"] <- sapply(bioplanet$GENE_SYMBOL, fix.excel)
  ### Turn bioplanet into a list of pathways. Pathways are character vectors comprised of gene names ###
  PATHWAY_NAME <- NULL #Gets rid of no binding note
  pathways.list <- plyr::dlply(bioplanet, plyr::.(PATHWAY_NAME)) #Turn the bioplanet .csv into a list of data frames. Each data frame stores genes with the same PATHWAY_ID
  pathways.list <- lapply(pathways.list, `[`, 4) #Modifies all data frames in the list to only have the GENE_SYMBOL column. Uses [] as a function, which I did not know you could do in R. Very cool.
  pathways.list <- lapply(pathways.list, unlist, use.names = FALSE) #Since data frames are 1 row, turn data frames into character vectors


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
  assign("Jaccard.Full", bioplanetjaccardedges, envir = .GlobalEnv) #DEBUG - For viewing the full jaccard edgelist

  ### Pathway Cluster Evidence ###
  CPE.matrix <- matrix(NA, nrow = length(common.clusters), ncol = length(pathways.list)) #Initilize empty data structure, Clusters x Pathways
  rownames(CPE.matrix) <- names(common.clusters) #Names
  colnames(CPE.matrix) <- names(pathways.list)

  pathways.temp <- as.data.frame(table(bioplanet$GENE_SYMBOL)) #Create table for how many times each gene appears in the pathways list. Needs to be converted into a named vector for efficent runtime.
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

  assign(pathwayslist.name, pathways.list, envir = .GlobalEnv)   #Save for user viewing
  assign("CPE.matrix", CPE.matrix, envir = .GlobalEnv)   #Save for user viewing
  assign(edgelist.name, PCNedgelist, envir = .GlobalEnv)
  assign(jaccard.edgelist.name, jaccard.net, envir = .GlobalEnv)
  assign(CPE.edgelist.name, CPE.net, envir = .GlobalEnv)
  assign(PCN.edgelist.name, pathway.crosstalk.network, envir = .GlobalEnv)

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
  print(end_time)
  #calculate difference between start and end time
  total_time <- end_time - start_time
  print(noquote(paste("Total time: ", total_time, sep="")))
  if(returndata==TRUE) {return(list(pathway.crosstalk.network, PCNedgelist, pathways.list))}
}



