# Get STRINGdb PPI data

This function finds protein-protein interaction weights by consulting
utilizing the STRINGdb database. The package STRINGdb is required for
this function. To download, run:

- if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

- BiocManager::install("STRINGdb")

## Usage

``` r
GetSTRINGdb(gene.cccn.edges, gene.cccn.nodes)
```

## Arguments

- gene.cccn.edges:

  A dataframe showing interactions relationships between proteins using
  common PTM clusters derived from three distance metrics (Euclidean,
  Spearman, and Combined (SED))

- gene.cccn.nodes:

  A list of nodes that are in the Gene CoCluster Correlation Network
  derived from common clusters between the three distance metrics
  (Euclidean, Spearman, and Combined (SED))

## Value

Data frame of consisting of the network of interactions from the genes
of study pulled from the STRINGdb database and a list of gene names

## Details

The full example takes ~10 minutes to load, so it has been commented out
and the results are displayed.

## Examples

``` r
# GetSTRINGdb(ex.gene.cccn)
utils::head(ex.stringdb.edges)
#>     Gene.1 Gene.2              Interaction STRINGdb.combined_score
#> 1     MYH9 PIK3R2 experimental_transferred                     216
#> 11    MYH9 ABLIM1             experimental                     167
#> 25   OXCT1 ZDHHC5             experimental                     292
#> 27 SUPT16H ZDHHC5             experimental                     292
#> 33   USP15 ZDHHC5             experimental                     292
#> 35    MYH9 ATP5PO             experimental                     192
utils::head(ex.nodenames)
#>   Gene.Names
#> 1     ABLIM1
#> 2        MET
#> 3       PKP4
#> 4       MYH9
#> 5     SEC16A
#> 6     ZDHHC5
```
