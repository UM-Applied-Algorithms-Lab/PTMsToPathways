# Cfn

The Cluster Filtered Network is a filtered version of the Combined PPIs
but only for proteins found to interact via t-SNE clusters

## Usage

``` r
ex_cfn
```

## Format

Dataframe of 196 rows and 4 columns

- source:

  First gene interacting

- target:

  Second gene interacting

- interaction:

  The type of interaction

- Weight:

  Weight from Combined PPI

## Source

"Produced by BuildClusterFilteredNetwork"

## Examples

``` r
head("ex_cfn")
#> [1] "ex_cfn"
```
