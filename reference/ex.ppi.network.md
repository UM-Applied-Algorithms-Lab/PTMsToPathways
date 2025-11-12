# PPI Network Example

Network of relationships between genes based on PPI database STRINGdb.

## Usage

``` r
ex.ppi.network
```

## Format

Dataframe of 1 row and 4 columns:

- Gene.1:

  The gene interacting with Gene.2

- Gene.2:

  The gene interacting with Gene.1

- Weight:

  Strength of the interaction

- edgeType:

  Type of interaction between Gene.1 and Gene.2

## Source

"created by FindPPIEdges"

## Examples

``` r
head(ex.ppi.network)
#>     Gene.1 Gene.2                                     Interaction
#> 1     MYH9 PIK3R2 experimental_transferred, Physical Interactions
#> 11    MYH9 ABLIM1             experimental, Physical Interactions
#> 25   OXCT1 ZDHHC5                                    experimental
#> 27 SUPT16H ZDHHC5                                    experimental
#> 33   USP15 ZDHHC5                                    experimental
#> 35    MYH9 ATP5PO                                    experimental
#>    STRINGdb.combined_score   GM.weights
#> 1                0.1546170 0.0608428340
#> 11               0.1195419 0.0005854425
#> 25               0.2090193           NA
#> 27               0.2090193           NA
#> 33               0.2090193           NA
#> 35               0.1374374           NA
```
