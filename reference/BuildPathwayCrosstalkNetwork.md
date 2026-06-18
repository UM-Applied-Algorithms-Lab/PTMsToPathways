# Build Pathway Crosstalk Network

Converts Bioplanet pathways from (<https://tripod.nih.gov/bioplanet/>)
into a list of pathways whose elements are the genes in each pathway.
Edge weights are either the PTM Cluster Weight or according to the
Jaccard Similarity.

## Usage

``` r
BuildPathwayCrosstalkNetwork(common.clusters, bioplanet.file = "bioplanet.csv")
```

## Arguments

- common.clusters:

  The list of common clusters between all three distance metrics
  (Euclidean, Spearman, and SED). Can be made in MakeCorrelationNetwork

- bioplanet.file:

  Either the path to a delimited Bioplanet file, or a named list of
  pathways where each list element is a character vector of gene
  symbols.

## Value

A list with these data structures at the given index:

1.  Contains pathway source-target columns, along with the interaction
    type.

2.  Contains pathway source-target columns, with edge weights of their
    jaccard similarity and their Pathway-Pathway Evidence score.

3.  All pathways in the bioplanet database as a named list containing
    string vectors. Each vector is a pathway with strings associated
    with the genes in that pathway.

4.  The cluster-by-pathway CPE matrix used to compute PTM cluster
    weights.

## Examples

``` r
Example_Output <- BuildPathwayCrosstalkNetwork(ex_common_clusters, ex_pathways_list)
#> Making PCN
#> 2026-06-18 21:00:42.992337
#> 2026-06-18 21:00:43.10042
#> Total time: 0.108083009719849
Example_Output[[1]][[3,]]
#> Error in `[[.data.frame`(Example_Output[[1]], 3, ): argument "..2" is missing, with no default
Example_Output[[3]][[1:3]]
#> Error in Example_Output[[3]][[1:3]]: recursive indexing failed at level 2
Example_Output[[4]][1:3, 1:3]
#>                   Axon guidance Class A GPCRs (rhodopsin-like)
#> ConsensusCluster1    0.18750000                             NA
#> ConsensusCluster2    0.07142857                             NA
#> ConsensusCluster3            NA                             NA
#>                   ERBB signaling pathway
#> ConsensusCluster1             0.06250000
#> ConsensusCluster2             0.07142857
#> ConsensusCluster3                     NA
```
