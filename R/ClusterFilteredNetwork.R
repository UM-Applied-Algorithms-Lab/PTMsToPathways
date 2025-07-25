#' Filter PPI Network by Known Clusters
#'
#' All edges in the PPI network are checked against the cocluster correlation network to ensure existence and a non-zero weight.
#' If either of these conditions are not met, then it will be removed from the list of PPI edges.
#' This new, cluster filtered network is then assigned to the global namespace.
#'
#' @param gene.cccn A matrix showing strength of relationships between proteins using the common clusters between the three distance metrics (Euclidean, Spearman, and Combined (SED))
#' @param ppi.network A dataframe representing how strongly proteins are known to interact based on previous research contained within provided database networks
#' @param cfn.name Desired name of the output cluster filtered network
#'
#' @return A version of ppi.network with only the edges that exist in gene.cccn and have non-zero weights
#'
#' @export
#' @examples
#' ClusterFilteredNetwork(ex.gene.cccn, ex.ppi.network, cfn.name = "ex.cfn")
#' utils::head(ex.cfn)
ClusterFilteredNetwork <- function(gene.cccn, ppi.network, cfn.name = "cfn") {

  cfn <- data.frame(matrix(0,ncol = 4, nrow = 0))                      # initiate an empty dataframe
  colnames(cfn) <- c("Gene.1", "Gene.2", "Interaction", "PPI.weight")  # name the columns
  len <- length(rownames(cfn)) + 1                                     # length of assignment

  for(row.num in 1:length(rownames(ppi.network))){    # iterate through the rows of ppi

    Gene1 <- ppi.network$Gene.1[row.num]         # grab gene1
    Gene2 <- ppi.network$Gene.2[row.num]         # grab gene2
    Int.type <- ppi.network$Interaction[row.num] # grab the interaction type
    weights <- ppi.network[row.num, ]            # make a list of the row
    weights <- weights[c(-1, -2, -3)]            # remove the gene names and the interaction, left with the weights
    weight <- sum(weights[1, ], na.rm = TRUE)    # sum them up to get the total weight


    if(Gene1 %in% rownames(gene.cccn) & Gene2 %in% colnames(gene.cccn)) {  # check existence in gene.cccn
      if(!(gene.cccn[Gene1,Gene2] == 0)){                                    # check nonzero weight

        cfn[len, ] <- c(Gene1, Gene2, Int.type, weight)  # assign the info to a new row in cfn
        len <- len + 1                                   # increment rows

      }
    } else if(Gene1 %in% colnames(gene.cccn) & Gene2 %in% rownames(gene.cccn)) {  # This is so very overkill
      if(!(gene.cccn[Gene2,Gene1] == 0)){                                           # but we were experiencing some errors before

        cfn[len, ] <- c(Gene1, Gene2, Int.type, weight)                               # so wanted to check both rownames and colnames incasekies
        len <- len + 1

      }
    }

    assign(cfn.name, cfn, envir = .GlobalEnv)    # assign :)

  }
}

