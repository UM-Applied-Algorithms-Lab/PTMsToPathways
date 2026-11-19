## ----setup, echo = FALSE------------------------------------------------------

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = ">>",
  fig.align = "center",
  fig.path = "plots/",
  fig.width = 8,
  fig.height = 6,
  out.width = "100%",
  results = "hold"
)

## ----label=library, eval = TRUE-----------------------------------------------
library(PTMsToPathways)

## ----label=readFile, eval = TRUE----------------------------------------------
# file_path <- "path/to/your/file.txt"
file_path <- system.file("extdata", "phospho_cleaned_mapped.txt",
                         package = "PTMsToPathways")

newphos <- utils::read.table(file_path, sep = "\t", skip = 0, header = TRUE,
                             blank.lines.skip = T, fill = T, quote = "\"",
                             dec = ".", comment.char = "", stringsAsFactors = F)
dim(newphos)

## ----label=removeInternalNA, eval = TRUE--------------------------------------
newphos <- newphos[!is.na(newphos$AllGeneSymbols),]
dim(newphos)

## ----label=dateConversion, eval = TRUE----------------------------------------
newphos$AllGeneSymbols <- sapply(newphos$AllGeneSymbols, fix.excel)

## ----label=identifyCols, eval = TRUE------------------------------------------
newphos.header <- newphos[,c("AllGeneSymbols", "Amino.Acid",
                "Positions.Within.Proteins", "Modification.Type")]

head(newphos.header)

## ----label=handleAmbig, eval = TRUE-------------------------------------------
newphos.header$Peptide.Name <- mapply(
  name.peptide, genes = newphos$AllGeneSymbols,
  sites =  newphos$Positions.Within.Proteins, aa = newphos$Amino.Acid)
head(newphos.header)

## ----label=intensity1, eval = TRUE--------------------------------------------
names(newphos)[grep("Intensity", names(newphos))][1]

## ----label=intensity2, eval = TRUE--------------------------------------------
names(newphos)[grep("Intensity", names(newphos))][2]

## ----label=intensity3, eval = TRUE--------------------------------------------
names(newphos)[grep("Intensity", names(newphos))][3]

## ----label=intensity4, eval = TRUE--------------------------------------------
names(newphos)[grep("Intensity", names(newphos))][4]

## ----label=findIntensity, eval = TRUE-----------------------------------------
data.cols <- newphos[,grep("Intensity", names(newphos))]
dim(data.cols)

## ----label=findPTyr, eval = TRUE----------------------------------------------
data.cols <- newphos[,grep("pTyr", names(newphos))]
dim(data.cols)

## ----label=simplify, eval = TRUE----------------------------------------------
names(data.cols) <- sapply(names(data.cols), function(x){
  unlist(strsplit(x, "Intensity."))[2]
  })
head(names(data.cols))

## ----label=zeroToNA, eval = TRUE----------------------------------------------
zer0 <- which(data.cols==0, arr.ind = TRUE)
data.cols <- replace (data.cols, zer0, NA)
sum(is.na(data.cols))

## ----label=technicalReplicates, eval = TRUE-----------------------------------
tr1.opt <- names(data.cols)[grep(".1", names(data.cols), fixed=TRUE)]
tr2.opt <- names(data.cols)[grep(".2", names(data.cols), fixed=TRUE)]
tr1.opt[1]
tr2.opt[1]

## ----label=mergeToCols, eval = TRUE-------------------------------------------
phosdata.merged <- data.frame(matrix(nrow = nrow(data.cols), ncol = length(tr1.opt)))
for (i in seq_along(tr1.opt)) {
phosdata.merged[, i] <- merge2cols(
data.cols[, tr1.opt[i]],
data.cols[, tr2.opt[i]]
)}
dim(phosdata.merged)


## ----label=fixNames, eval = TRUE----------------------------------------------
names(phosdata.merged) <- sapply(tr1.opt, function(x){
  substr(x, start=1, stop=nchar(x)-2)
  })
names(phosdata.merged)[1]

## ----label=mergeHeader, eval = TRUE-------------------------------------------
phosdatafile <- cbind(newphos.header, phosdata.merged)
dim(phosdatafile)

## ----label=sabeFile, eval = FALSE---------------------------------------------
# write.table(phosdatafile, file = "phosdatafile.txt",
#             row.names = FALSE, sep = "\t")

## ----label=rowNamePeptideName, eval = TRUE------------------------------------
phosdata.df <- phosdata.merged
rownames(phosdata.df) <- phosdatafile$Peptide.Name

## ----label=setNames, eval = TRUE----------------------------------------------
all.equal(setNames(phosdata.df, NULL), setNames(ex_small_ptm_table, NULL))

## ----label=log2, eval = TRUE--------------------------------------------------
log2phosdata <- log2(phosdata.merged)

## ----label=savePtmTable, eval = FALSE-----------------------------------------
# ptmtable <- log2phosdata

## ----Example ratio calculations, eval = TRUE----------------------------------
names(phosdata.df) <- sapply(names(phosdata.df), function(x){
  paste(unlist(strsplit(x, "SEPTM_pTyr"))[1],
        unlist(strsplit(x, "SEPTM_pTyr"))[2], sep = "")
  })

## ----label=ratioControl, eval = TRUE------------------------------------------
H3122control <- rowMeans(phosdata.df[, names(phosdata.df)
                                     [grep("H3122.D", names(phosdata.df))]],
                         na.rm=TRUE)

## ----label=NaNtoNA, eval = TRUE-----------------------------------------------
H3122control[is.nan(H3122control)] <- NA

PC9control <- rowMeans(phosdata.df[, names(phosdata.df)
                                   [grep("PC9.D", names(phosdata.df))]],
                       na.rm=TRUE)

PC9control[is.nan(PC9control)] <- NA

## ----label=calcTreatmentControl, eval = TRUE----------------------------------
# H3122 cells
H3122.C1.ratio <- phosdata.df$H3122.C1/H3122control
H3122.C2.ratio <- phosdata.df$H3122.C2/H3122control
H3122.C3.ratio <- phosdata.df$H3122.C3/H3122control
H3122.PR1.ratio <- phosdata.df$H3122.PR1/H3122control
H3122.PR2.ratio <- phosdata.df$H3122.PR2/H3122control
H3122.PR3.ratio <- phosdata.df$H3122.PR3/H3122control

# PC9 cells
PC9.E1.ratio <- phosdata.df$PC9.E1/PC9control
PC9.E2.ratio <- phosdata.df$PC9.E2/PC9control
PC9.E3.ratio <- phosdata.df$PC9.E3/PC9control
PC9.PR1.ratio <- phosdata.df$PC9.PR1/PC9control
PC9.PR2.ratio <- phosdata.df$PC9.PR2/PC9control
PC9.PR3.ratio <- phosdata.df$PC9.PR3/PC9control

## ----label=colName, eval = TRUE-----------------------------------------------
phos_ratios <- data.frame(H3122.C1.ratio, H3122.C2.ratio, H3122.C3.ratio,
                          H3122.PR1.ratio, H3122.PR2.ratio, H3122.PR3.ratio,
                          PC9.E1.ratio, PC9.E2.ratio, PC9.E3.ratio,
                          PC9.PR1.ratio, PC9.PR2.ratio, PC9.PR3.ratio)

## ----label=colCheck, eval = TRUE----------------------------------------------
identical(rownames(phosdata.df), rownames(phos_ratios))

## ----label=makeLimits, eval = TRUE--------------------------------------------
hi.ratio <- which(phos_ratios >= 100, arr.ind = TRUE)
low.ratio <- which(phos_ratios <= 1/100, arr.ind = TRUE)
phos_ratios.lim <- replace (phos_ratios, hi.ratio, 100) 
phos_ratios.lim <- replace (phos_ratios.lim, low.ratio, 1/100) 

## ----label=log2Transform, eval = TRUE-----------------------------------------
phos_ratios.lim.log2 <- log2(phos_ratios.lim)
phosdata_plus_ratios <- cbind(log2phosdata, phos_ratios.lim.log2)

## ----label=plotLog2T, eval = TRUE---------------------------------------------
boxplot(phosdata_plus_ratios)

## ----label=checkLog2T, eval = TRUE--------------------------------------------
identical(rownames(phos_ratios.lim.log2), rownames(log2phosdata)) 

## ----label=useData, eval = FALSE----------------------------------------------
# ptmtable <- phosdata_plus_ratios

## ----label=sameColNames, eval = FALSE-----------------------------------------
# kgp <- phosdata.df
# kga <- ackdata.df
# kgu <- ubidata.df
# 
# names(kgp) <- sapply(names(kgp), function(x){
#   paste(unlist(strsplit(x, "_pTyr"))[1], unlist(strsplit(x, "_pTyr"))[2],
#         sep = "")
#   })
# 
# names(kga) <- sapply(names(kga), function(x){
#   paste(unlist(strsplit(x, "_AcK"))[1], unlist(strsplit(x, "_AcK"))[2],
#         sep = "")
#   })
# 
# names(kgu) <- sapply(names(kgu), function(x){
#   paste(unlist(strsplit(x, "_Ubi"))[1], unlist(strsplit(x, "_Ubi"))[2],
#         sep = "")
#   })
# 
# identical(names(kgp), names(kga)) # Check TRUE

## ----label=rbind, eval = FALSE------------------------------------------------
# ptmdata <- rbind (kgp, kga, kgu)

## ----label=reorder, eval = FALSE----------------------------------------------
# ptmdata <- ptmdata[order(rownames(ptmdata)),]

## ----label=improveClustering, eval = FALSE------------------------------------
# log2ptmdata <- log2(ptmdata)

## ----label=useDF, eval = FALSE------------------------------------------------
# ptmtable <- log2ptmdata

## ----label=sessionInfo, eval = TRUE-------------------------------------------
sessionInfo()

