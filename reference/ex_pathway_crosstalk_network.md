# Pathway Crosstalk Network Example

Contains pathway source-target columns and weight, along with the
interaction type.

## Usage

``` r
ex_pathway_crosstalk_network
```

## Format

Matrix with 37 rows and 4 columns:

- V1:

  Pathway One

- V2:

  Pathway Two

- Weight:

- Interaction:

  Jaccard similarity between the two pathways

## Source

"created by PathwayCrosstalkNetwork"

## Examples

``` r
head(ex_pathway_crosstalk_network)
#>                              source
#> 4                     Axon guidance
#> 2                     Axon guidance
#> 3                     Axon guidance
#> 5            ERBB signaling pathway
#> 18                 Selenium pathway
#> 10 Lipid and lipoprotein metabolism
#>                                               target            Weight
#> 4  Validated nuclear estrogen receptor alpha network  1.27898550724638
#> 2                             ERBB signaling pathway  9.04082494558581
#> 3                   Lipid and lipoprotein metabolism   4.5195031520412
#> 5                   Lipid and lipoprotein metabolism  2.49443143149121
#> 18                            Vitamin B12 metabolism 0.733333333333333
#> 10                                  Selenium pathway               0.3
#>             interaction
#> 4  PTM_cluster_evidence
#> 2  PTM_cluster_evidence
#> 3  PTM_cluster_evidence
#> 5  PTM_cluster_evidence
#> 18 PTM_cluster_evidence
#> 10 PTM_cluster_evidence
```
