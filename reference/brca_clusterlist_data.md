# BRCA Cluster List Data

Output of MakeClusterList on the BRCA data

## Usage

``` r
data(brca_clusterlist_data)
```

## Format

list containing the 3 outputs of MakeClusterList

- Common Clusters:

  231 lists of PTMs found to cluster, see Common Clusters

- Adjacency Matrix:

  4237 x 4237, see Adjacency Consensus Matrix

- PTM correlation matrix:

  4237 x 4237, see Correlation Matrix

## Source

"MakeClusterList on the BRCA data"

## Examples

``` r
head("brca_clusterlist_data[[1]]")
#> [1] "brca_clusterlist_data[[1]]"
head("brca_clusterlist_data[[2]]")
#> [1] "brca_clusterlist_data[[2]]"
head("brca_clusterlist_data[[3]]")
#> [1] "brca_clusterlist_data[[3]]"
```
