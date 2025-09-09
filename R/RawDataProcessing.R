###==================================================================================================================
# Functions and suggested workflow to help process mass spectrometry data files
###==================================================================================================================

## We use the following shorthand conventions when describing PTMs. This can be modified if different modification types are under investigation
# The HUGO Gene Name is used to identify the protein/gene
# Phosphorylation = "p"
# Lysine acetylation = "ack"
# Lysine methylation = "kme"
# Arginine methylation  = "rme"
# ubiquitination = "ubi"


# Helper functions
# Function to change dates back into gene names - Excel changes many genes into dates and this can't be turned off!
fix.excel <- function(cell) {
  fixgenes = c("CDC2", "1-Sep", "2-Sep", "3-Sep", "4-Sep", "5-Sep", "7-Sep", "8-Sep", "9-Sep", "10-Sep", "11-Sep", "15-Sep", "6-Sep", "1-Oct", "2-Oct", "3-Oct", "4-Oct", "6-Oct", "7-Oct", "11-Oct", "1-Mar", "2-Mar", "3-Mar", "4-Mar", "5-Mar", "6-Mar", "7-Mar", "8-Mar", "9-Mar", "10-Mar", "11-Mar", "C11orf58", 'C17orf57', 'C3orf10',  'C7orf51', "C11orf59", "C4orf16", "1-Dec", "14-Sep")
  corrects = c("CDK1", "SEPT1", "SEPT2", "SEPT3", "SEPT4", "SEPT5", "SEPT7", "SEPT8", "SEPT9", "SEPT10", "SEPT11", "SEPT15", "SEPT6", "POU2F1", "POU2F2", "POU5F1", "POU5F1", "POU3F1", "POU3F2", "POU2F3", "MARCH1", "MARCH2", "MARCH3", "MARCH4", "MARCH5", "MARCH6", "MARCH7", "MARCH8", "MARCH9", "MARCH10", "MARCH11", "SMAP", "EFCAB13", "BRK1", "NYAP1", "LAMTOR1", 'AP1AR', "DEC1", "SEPT14")
  cellv <- unlist(strsplit(as.character(cell), "; "))
  if (any(fixgenes %in% cellv)) {
    cellv.new <- gsub(fixgenes[fixgenes %in% cellv], corrects[fixgenes %in% cellv], cellv)
    return (paste(cellv.new, collapse="; "))
  } else return(cell)    }
# This function will handle ambiguous modification sites (a modification site whose peptide sequence is the same in more than one protein) separated by ";" or another separator
# Make peptide names using this function:
name.peptide <- function (genes, modification="p", sites, aa, pepsep=";")	{
  genes.v <- unlist(strsplit(genes, pepsep, fixed = TRUE))
  genes.v[which(genes.v == "NA")] <- NA
  genes.v <- genes.v[!is.na(genes.v)]
  sites.v <- unlist(strsplit(sites, pepsep, fixed = TRUE))
  sites.v[which(sites.v == "NA")] <- NA
  sites.v <- sites.v[!is.na(sites.v)]
  sites.v <- sapply(sites.v, function (x) paste (aa, x, sep=""))
  Peptide.v <- as.character(noquote(paste(genes.v[1:length(genes.v)], modification, sites.v[1:length(sites.v)], sep=" ")))
  Peptide <- paste(unique(Peptide.v), collapse="; ")
  return(Peptide)
}
# Use this function to average technical replciates. This function ignores NA values in either column and takes the average in the case where there are two values.
merge2cols <- function (colv1, colv2) {
  newcolv=NA
  if (is.na(colv1) & is.na(colv2)) {
    newcolv=NA
    return(newcolv)} else
      if (is.na(colv1) | is.na(colv2)) {
        newcolv <- sum(colv1, colv2, na.rm=TRUE)
        return(newcolv) } else
          newcolv <- (colv1 + colv2)/2
        return(newcolv) }

# _________________________________________________________________________________
# Example data file /Users/markgrimes/Library/CloudStorage/Dropbox/_Work/R_/_LINCS/_KarenGuolin/unnormalized_separate_septm/phospho_cleaned_mapped.txt
datafilepath <- "/Users/markgrimes/Library/CloudStorage/Dropbox/_Work/R_/_LINCS/_KarenGuolin/unnormalized_separate_septm/phospho_cleaned_mapped.txt"
newphos <- read.table(datafilepath, sep = "\t", skip = 0, header=TRUE, blank.lines.skip=T, fill=T, quote="\"", dec=".", comment.char = "", stringsAsFactors=F)
# "Amino Acid" has the modsite, e.g. S,T, etc.;
# "Position" has the sequence postion; "Positions" and "Positions Within Proteins" have multiple possible postions separated by ";". Assume singular value in Position is for the first gene name. "Modification Type" has Phosphorylation" etc.
# In our data table, which includes ambigous PTM IDs, the relevant column names are
# genes =  "AllGeneSymbols"
# positions = "Positions.Within.Proteins"
# aa = "Amino.Acid"
# modification = "Modification.Type"
#### Workflow
# First remove internal control rows (reverse sequences)
newphos <- newphos[!is.na(newphos$AllGeneSymbols),]
# If there are dates in the AllGeneSymbols column, use:
newphos$AllGeneSymbols <- sapply(newphos$AllGeneSymbols, fix.excel)
headercols <- c("AllGeneSymbols", "Amino.Acid", "Positions.Within.Proteins", "Modification.Type")
newphos.head <- newphos[,headercols]

newphos.head$Peptide.Name <- mapply(name.peptide, genes=newphos.head$AllGeneSymbols, sites= newphos.head$Positions.Within.Proteins, aa=newphos.head$Amino.Acid)
#
# Define Data columns
phosdata <- newphos[,grep("Intensity", names(newphos))]
names(phosdata) <- sapply(names(phosdata), function (x) unlist(strsplit(x, "Intensity."))[2])
# make zero into NA, which it is.
zer0 <- which(phosdata==0, arr.ind = TRUE)
phosdata <- replace (phosdata, zer0, NA)
# Define technical replicates
tr1 <- names(phosdata)[grep(".1", names(phosdata), fixed=TRUE)]
tr2 <- names(phosdata)[grep(".2", names(phosdata), fixed=TRUE)]
phosdata <- newphos[,grep("Intensity", names(newphos))]
names(phosdata) <- sapply(names(phosdata), function (x) unlist(strsplit(x, "Intensity."))[2])
# make zero into NA, which it is.
zer0 <- which(phosdata==0, arr.ind = TRUE)
phosdata <- replace (phosdata, zer0, NA)
# Define technical replicates
tr1 <- names(phosdata)[grep(".1", names(phosdata), fixed=TRUE)]
tr2 <- names(phosdata)[grep(".2", names(phosdata), fixed=TRUE)]
# The optimal pulldown columns are straightforward to identify by the pulldown strings present in the sample names (they are also identifiable by zooming out and looking at the patterns of missing data, the optimal pulldowns, as a group, have the least missing data).
tr1.opt <- tr1[grep("pTyr", tr1)]
tr2.opt <- tr2[grep("pTyr", tr2)]


# Use merge2cols() function to average technical replciates:
phosdata.merged <- data.frame(matrix(nrow=nrow(phosdata), ncol=18))
for(i in 1:length(tr1.opt)) {
  phosdata.merged[,i] <- mapply(merge2cols, colv1=as.numeric(phosdata[, tr1.opt[i]]), colv2=as.numeric(phosdata[,tr2.opt[i]]))
}
names(phosdata.merged) <- sapply(tr1.opt, function(x) substr(x, start=1, stop=nchar(x)-2))


# Merge with header
phosdatafile <- cbind(newphos.head, phosdata.merged)
# This file could be safed for reference using write.table()
# For subsequent steps
rownames(phosdatafile) <- phosdatafile$Peptide.Name
phosdata.df <- phosdatafile[,6:23]
# This contains just the data with individual PTMs as rownames
######################
# Workflow: Repeat with aceltylation or other PTM data
# ...
# Then, to put them together:
# Make column names common. For example:
kgp <- phosdata.df
kga <- ackdata.df
kgu <- ubidata.df
names(kgp) <- sapply(names(kgp), function (x) paste(unlist(strsplit(x, "_pTyr"))[1], unlist(strsplit(x, "_pTyr"))[2], sep=""))
names(kga) <- sapply(names(kga), function (x) paste(unlist(strsplit(x, "_AcK"))[1], unlist(strsplit(x, "_AcK"))[2], sep=""))
names(kgu) <- sapply(names(kgu), function (x) paste(unlist(strsplit(x, "_Ubi"))[1], unlist(strsplit(x, "_Ubi"))[2], sep=""))
identical(names(kgp), names(kga)) # Check TRUE
#
ptmdata <- rbind (kgp, kga, kgu) # 3159   18
# Reorder here
ptmdata <- ptmdata[order(rownames(ptmdata)),]
# This optional step improves clustering in our hands:
log2ptmdata <- log2(ptmdata)
# This is now ready to use as the ptmtable.
