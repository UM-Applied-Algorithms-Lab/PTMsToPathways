# Build Pathway Crosstalk Network

Converts Bioplanet pathways from (<https://tripod.nih.gov/bioplanet/>)
into a list of pathways whose elements are the genes in each pathway.
Edge weights are either the PTM Cluster Weight or according to the
Jaccard Similarity.

## Usage

``` r
BuildPathwayCrosstalkNetwork(
  common.clusters,
  bioplanet.file = "bioplanet.csv",
  createfile = getwd(),
  PCN.edgelist.name = "PCN_file"
)
```

## Arguments

- common.clusters:

  The list of common clusters between all three distance metrics
  (Euclidean, Spearman, and SED). Can be made in MakeCorrelationNetwork

- bioplanet.file:

  Either the path to a delimited Bioplanet file, or a named list of
  pathways where each list element is a character vector of gene
  symbols.

- createfile:

  The path of where to create the edgelist file. Defaults to the working
  directory, if FALSE is provided, a file will not be created.

- PCN.edgelist.name:

  Name of the PCN edgelist file to be created

## Value

A list with these data structures at the given index:

1.  Contains pathway source-target columns, along with the interaction
    type.

2.  Contains pathway source-target columns, with edge weights of their
    jaccard similarity and their Pathway-Pathway Evidence score.

3.  All pathways in the bioplanet database as a named list containing
    string vectors. Each vector is a pathway with strings associated
    with the genes in that pathway.

## Examples

``` r
Example_Output <- BuildPathwayCrosstalkNetwork(ex_common_clusters, ex_pathways_list, createfile = FALSE)
#> Making PCN
#> 2026-06-10 22:17:32.459164
#> 2026-06-10 22:17:32.587047
#> Total time: 0.127882957458496
Example_Output[[1]][[3,]]
#> Error in `[[.data.frame`(Example_Output[[1]], 3, ): argument "..2" is missing, with no default
Example_Output[[3]][[1:3]]
#> Error in Example_Output[[3]][[1:3]]: recursive indexing failed at level 2
```
