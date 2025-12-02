# PTP edgelist Example

An edgelist filtered from the combination of every pathway based on
nonzero Jaccard & PTP score

## Usage

``` r
ex.PTPedgelist
```

## Format

Dataframe of 19 rows and 4 columns:

- V1:

  A pathway

- V2:

  A pathway

- jaccard.values:

  The jaccard similarity of the two pathways sets of genes

- PTPscore:

  The sum of all CPEs for every cluster where both pathways have a
  nonzero score

## Source

"Created in PathwayCrosstalkNetwork"

## Examples

``` r
head(ex.PTPedgelist)
#>                              
#> [1,] "Axon guidance"         
#> [2,] "Axon guidance"         
#> [3,] "Axon guidance"         
#> [4,] "Axon guidance"         
#> [5,] "ERBB signaling pathway"
#> [6,] "ERBB signaling pathway"
#>                                                          jaccard.values       
#> [1,] "Class A GPCRs (rhodopsin-like)"                    "0.00173310225303293"
#> [2,] "ERBB signaling pathway"                            "0.0716112531969309" 
#> [3,] "Lipid and lipoprotein metabolism"                  "0.001230012300123"  
#> [4,] "Validated nuclear estrogen receptor alpha network" NA                   
#> [5,] "Lipid and lipoprotein metabolism"                  "0.0139130434782609" 
#> [6,] "RXR/VDR pathway"                                   "0.00840336134453781"
#>      PTPscore           
#> [1,] NA                 
#> [2,] "0.3"              
#> [3,] "1.85125281274707" 
#> [4,] "0.137931034482759"
#> [5,] "0.266666666666667"
#> [6,] NA                 
```
