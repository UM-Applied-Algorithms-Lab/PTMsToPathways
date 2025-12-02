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

  Either the name of the bioplanet pathway .csv file OR a dataframe.
  Lines of bioplanet should possess 4 values in the order
  "PATHWAY_ID","PATHWAY_NAME","GENE_ID","GENE_SYMBOL". Users not well
  versed in R should only pass in "yourfilename.csv"

- createfile:

  The path of where to create the edgelist file. Defaults to the working
  directory, if FALSE is provided, a file will not be created.

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
Example_Output <- BuildPathwayCrosstalkNetwork(ex.common.clusters, ex.bioplanet, createfile = FALSE)
#> [1] "Making PCN"
#> [1] "2025-12-02 23:11:56 UTC"
#> [1] "2025-12-02 23:11:56 UTC"
#> [1] Total time: 0.138285398483276
Example_Output[[1]][[3,]]
#> Error in `[[.data.frame`(Example_Output[[1]], 3, ): argument "..2" is missing, with no default
Example_Output[[3]][[1:3]]
#> Error in Example_Output[[3]][[1:3]]: recursive indexing failed at level 2
```
