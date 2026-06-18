# Combined PPIs

Combines all Protein to Protein interaction data and combines their
weights into one score from a range of 0 to 1

## Usage

``` r
ex_combined_ppi
```

## Format

Dataframe of 8849 rows and 4 columns

- source:

  First gene interacting

- target:

  Second gene interacting

- interaction:

  The type of interaction

- Weight:

  The normalized weight of the interaction between two genes from
  Genemania and StringDB

## Source

"Produced by BuildClusterFilteredNetwork"

## Examples

``` r
head("ex_combined_ppi")
#> [1] "ex_combined_ppi"
```
