# PTM CCCN Edgelist

PTM Co-Cluster Correlation Network as an Edgelist

## Usage

``` r
ex_ptm_cccn_edges
```

## Format

Data Frame of 5710 rows and 4 columns

- source:

  A PTM

- target:

  A PTM

- Weight:

  Value from -1 to 1

- interaction:

  Either correlation, positive correlation, or negative correlation

## Source

"Produced by MakeCorrelationNetwork"

## Examples

``` r
head(ex_ptm_cccn_edges)
#>                                                                              source
#> 1                                                                       SHC1 p S426
#> 2                                                                        PXN p S119
#> 3                                                                      PRKCD p S304
#> 4                                                                       CTTN p S417
#> 5                                                                      SRSF9 p S178
#> 6 HSP90AA1 p S63; HSP90AA2P p S63; HSP90AB1 p S58; HSP90AB3P p S58; HSP90AB2P p S58
#>            target     Weight          interaction
#> 1      SYK p S295 -1.0000000 negative correlation
#> 2   ANXA11 p S480 -0.7642857 negative correlation
#> 3     CTTN p S447  0.7000000 positive correlation
#> 4     CTTN p S418  1.0000000 positive correlation
#> 5      SHB p S247 -1.0000000 negative correlation
#> 6 HSP90AB4P p S34  1.0000000 positive correlation
```
