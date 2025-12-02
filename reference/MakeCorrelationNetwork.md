# Make Correlation Network

Make Correlation Network filters a correlation matrix of PTMs by
specific PTMs. It groups the PTM correlation matrix based on the Genes
of PTMs. By summing these submatrices, it also produces a gene by gene
cocluster correlation network shows strength of relationships between
proteins using the common clusters between the three distance metrics.

## Usage

``` r
MakeCorrelationNetwork(adj.consensus.matrix, ptm.correlation.matrix)
```

## Arguments

- adj.consensus.matrix:

  Adjacency matrix showing PTM co-cluster relationships from all three
  t-SNE embeddings

- ptm.correlation.matrix:

  A data frame showing the correlation between ptms (as the rows and the
  columns). NAs are placed along the diagonal.

- common.clusters:

  A list of clusters. Ideally the ones found by MakeClusterList in
  common_clusters

## Value

A list containing the following data structures at the given index:

1.  The PTM CoCluster Correlation Network as an edgelist.

2.  The Gene CoCluster Correlation Network as an edgelist.

3.  A list of nodes that are in the Gene CoCluster Correlation Network.

## Examples

``` r
Example_Output <- MakeCorrelationNetwork(ex_adj_consensus, ex.ptm.correlation.matrix)
#> Making PTM CCCN
#> Error in ptm.cccn[active_ptms, active_ptms, drop = FALSE]: incorrect number of dimensions
Example_Output[[1]][1:5, 1:5]
#> Error: object 'Example_Output' not found
Example_Output[[2]][1:5, 1:5]
#> Error: object 'Example_Output' not found
```
