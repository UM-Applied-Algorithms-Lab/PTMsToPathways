# Pathway Crosstalk Network Edgelist Example

Similar to the Pathway Crosstalk Network but uses different weights.

## Usage

``` r
ex_PCNedgelist
```

## Format

Matrix with 19 rows and 4 columns:

- V1:

  Pathway One

- V2:

  Pathway Two

- Jaccard Weight:

  Jaccard Similarity between two pathways

- PTM cluster evidence:

  Similarity score based on clusters PTMs share

## Source

"created by PathwayCrosstalkNetwork"

## Examples

``` r
head(ex_PCNedgelist)
#>                              source
#> 4                     Axon guidance
#> 2                     Axon guidance
#> 3                     Axon guidance
#> 5            ERBB signaling pathway
#> 18                 Selenium pathway
#> 10 Lipid and lipoprotein metabolism
#>                                               target pathway_Jaccard_similarity
#> 4  Validated nuclear estrogen receptor alpha network                0.000000000
#> 2                             ERBB signaling pathway                0.071611253
#> 3                   Lipid and lipoprotein metabolism                0.001230012
#> 5                   Lipid and lipoprotein metabolism                0.013913043
#> 18                            Vitamin B12 metabolism                0.534246575
#> 10                                  Selenium pathway                0.011049724
#>    PTM_cluster_evidence
#> 4             1.2789855
#> 2             9.0408249
#> 3             4.5195032
#> 5             2.4944314
#> 18            0.7333333
#> 10            0.3000000
```
