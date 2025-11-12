# Make Database Input File

This function outputs a file consisting entirely of gene names, each
produced on a new line. This data can be copy and pasted into a database
input in order to get protein-protein interaction data.

## Usage

``` r
MakeDBInput(gene.cccn.nodes, file.path.name = "db_nodes.txt")
```

## Arguments

- gene.cccn.nodes:

  A list of nodes that are in the Gene CoCluster Correlation Network
  derived from common clusters between the three distance metrics
  (Euclidean, Spearman, and Combined (SED))

- file.path.name:

  Path for the output file; defaults to db_nodes.txt

## Value

A file with all of the gene names which can be copy and pasted into the
GeneMania cytoscape app, data frame of the names of the genes

## Examples

``` r
#MakeDBInput(ex.nodenames)
cat(ex.nodenames[[1]], sep = '\n')
#> ABLIM1
#> MET
#> PKP4
#> MYH9
#> SEC16A
#> ZDHHC5
#> HNRNPF
#> PHLDB2
#> EZR
#> HNRNPU
#> HSPA1B
#> PSMC1
#> SLC12A4
#> ATP5PO
#> CTNNA2
#> CTTN
#> DCBLD1
#> FRS2
#> OAT
#> PARD3
#> PLEKHA6
#> PTPRH
#> RBM14
#> ACOX1
#> ACTR5
#> DNM2
#> EEF1A1
#> EMC7
#> HNRNPH2
#> HSPA9
#> LCK
#> MYO18A
#> NFS1
#> OXCT1
#> PHB2
#> PI4K2A
#> RASSF8
#> RMC1
#> RNASEH2B
#> RPRD2
#> SF3B2
#> SUPT16H
#> APH1A
#> NSFL1C
#> PTPRK
#> TUBA1B
#> WEE1
#> APP
#> ATG3
#> ATP6V0D1
#> MERTK
#> SMAGP
#> SYAP1
#> TMEM106B
#> SLC38A2
#> ARAP2
#> PTPN11
#> ZNF185
#> SPRED1
#> USP15
#> PRRC2A
#> SLC9A1
#> CTNNAL1
#> LARP1
#> RBM4
#> TNK2
#> PTTG1IP
#> PIK3R2
#> FKBP4
#> SGMS2
#> TMEM192
#> TJP3
#> SCRIB
```
