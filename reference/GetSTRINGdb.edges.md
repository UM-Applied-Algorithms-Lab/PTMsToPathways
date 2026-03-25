# Get STRINGdb PPI data

This function finds protein-protein interaction weights by consulting
utilizing the STRINGdb database.

## Usage

``` r
GetSTRINGdb.edges(gene.cccn.edges, gene.cccn.nodes)
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
#> Error: object 'ex.stringdb.edges' not found
utils::head(ex.nodenames)
#> Error: object 'ex.nodenames' not found
```
