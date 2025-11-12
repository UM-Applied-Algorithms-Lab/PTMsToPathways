# Cluster Filtered Network Example

Subset of the PPI network in the cocluster correlation network.

## Usage

``` r
ex.cfn
```

## Format

Dataframe of 71 rows and 4 columns:

- Gene.1:

  First gene interacting

- Gene.2:

  Second gene interacting

- Interaction:

  The type of interaction

- PPI.weight:

  The weight of the interaction between these two genes as described by
  STRINGdb and GeneMANIA

## Source

"created by MakeDBInput"

## Examples

``` r
head(ex.cfn)
#>    Gene.1 Gene.2                                     Interaction
#> 1    MYH9 PIK3R2 experimental_transferred, Physical Interactions
#> 2    MYH9 ABLIM1             experimental, Physical Interactions
#> 3   OXCT1 ZDHHC5                                    experimental
#> 4 SUPT16H ZDHHC5                                    experimental
#> 5   USP15 ZDHHC5                                    experimental
#> 6    MYH9 ATP5PO                                    experimental
#>          PPI.weight
#> 1 0.215459870486844
#> 2 0.120127317943767
#> 3 0.209019327129563
#> 4 0.209019327129563
#> 5 0.209019327129563
#> 6 0.137437365783822
```
