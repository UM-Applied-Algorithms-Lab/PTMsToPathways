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
#> 2026-06-24 05:32:57.057754
#> 2026-06-24 05:32:57.184746
#> Total time: 0.126992464065552
head(Example_Output[[1]])
#>                              source
#> 4                     Axon guidance
#> 2                     Axon guidance
#> 3                     Axon guidance
#> 5            ERBB signaling pathway
#> 18                 Selenium pathway
#> 10 Lipid and lipoprotein metabolism
#>                                               target            Weight
#> 4  Validated nuclear estrogen receptor alpha network  1.27898550724638
#> 2                             ERBB signaling pathway  9.50912807669002
#> 3                   Lipid and lipoprotein metabolism  4.63387820142684
#> 5                   Lipid and lipoprotein metabolism  2.96007824348337
#> 18                            Vitamin B12 metabolism 0.866666666666667
#> 10                                  Selenium pathway               0.3
#>            interaction
#> 4  PTM_cluster_weights
#> 2  PTM_cluster_weights
#> 3  PTM_cluster_weights
#> 5  PTM_cluster_weights
#> 18 PTM_cluster_weights
#> 10 PTM_cluster_weights
```
