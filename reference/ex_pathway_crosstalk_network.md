# Pathway Crosstalk Network

Specific genes from the bioplanet file that we found in Common Clusters
and their respective cell signaling pathway relationships

## Usage

``` r
ex_pathway_crosstalk_network
```

## Format

Dataframe of 37 rows and 4 columns

- source:

  The name of a pathway interacting

- target:

  The name of the pathway the source interacts with

- Weight:

  Weight from Combined PPI

- interaction:

  The type of interaction

## Source

"Produced by BuildPathwayCrosstalkNetwork"

## Examples

``` r
head("ex_pathway_crosstalk_network")
#> [1] "ex_pathway_crosstalk_network"
```
