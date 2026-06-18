# PCN Edge List

The Pathway Crosstalk Network but with direct values for both weight
types

## Usage

``` r
ex_PCNedgelist
```

## Format

Dataframe of 19 rows and 4 columns

- source:

  The name of a pathway interacting

- target:

  The name of the pathway the source interacts with

- pathway_Jaccard_similarity:

  A weight

- PTM_cluster_evidence:

  A weight

## Source

"Produced by BuildPathwayCrosstalkNetwork"

## Examples

``` r
head("ex_PCNedgelist")
#> [1] "ex_PCNedgelist"
```
