# Jaccard Example

A matrix measuring the Jaccard similarity between pairs of pathways

## Usage

``` r
ex.Jaccard.Full
```

## Format

Matrix with 36 rows and 3 columns:

- V1:

  Pathway One

- V2:

  Pathway Two

- jaccard.values:

  Jaccard similarity between the two pathways

## Source

"created by PathwayCrosstalkNetwork"

## Examples

``` r
head(ex.Jaccard.Full)
#>                                                               
#> [1,] "Axon guidance" "Class A GPCRs (rhodopsin-like)"         
#> [2,] "Axon guidance" "ERBB signaling pathway"                 
#> [3,] "Axon guidance" "Lipid and lipoprotein metabolism"       
#> [4,] "Axon guidance" "Mitochondrial fatty acid beta-oxidation"
#> [5,] "Axon guidance" "RXR/VDR pathway"                        
#> [6,] "Axon guidance" "Selenium pathway"                       
#>      jaccard.values       
#> [1,] "0.00173310225303293"
#> [2,] "0.0716112531969309" 
#> [3,] "0.001230012300123"  
#> [4,] NA                   
#> [5,] NA                   
#> [6,] NA                   
```
