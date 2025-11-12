# CPE matrix example

Scores that represents how likely it is that a pathway interacts with a
given cluster. Matrix of Clusters x Pathways.

## Usage

``` r
ex.CPE.matrix
```

## Format

Matrix of 40 rows and 9 columns

- rows:

  Clusters

- columns:

  Pathways

- values:

  Cluster Pathway Evidence

## Source

"Made in PathwayCrosstalkNetwork"

## Examples

``` r
ex.CPE.matrix[c(1,2) , c(1,2)]
#>      Axon guidance Class A GPCRs (rhodopsin-like)
#> [1,]     0.7500000                             NA
#> [2,]     0.6666667                             NA
```
