# Adj Consensus

A matrix containing values of 0s and 1s depending on if the PTMs are
cocluster with other PTMs, rows and columns are unamed.

## Usage

``` r
ex_adj_consensus
```

## Format

Dataframe of 908 rows and columns:

- rows:

  PTMs

- columns:

  PTMs

- values:

  1 if PTMs are in the same cluster (pls confirm)

## Source

"Produced by MakeClusterList"

## Examples

``` r
head(ex_adj_consensus)
#>                                                                      ABI1 p Y213
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   1
#> HIPK3 p Y359                                                                   1
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           1
#> MAPK3 p T207                                                                   1
#>                                                                      ESD p Y202
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      FABP5 p Y131
#> ABI1 p Y213                                                                     1
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    1
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            1
#> MAPK3 p T207                                                                    1
#>                                                                      HIPK3 p Y359
#> ABI1 p Y213                                                                     1
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    1
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            1
#> MAPK3 p T207                                                                    1
#>                                                                      HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198
#> ABI1 p Y213                                                                                                                             1
#> ESD p Y202                                                                                                                              0
#> FABP5 p Y131                                                                                                                            1
#> HIPK3 p Y359                                                                                                                            1
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                                                    0
#> MAPK3 p T207                                                                                                                            1
#>                                                                      MAPK3 p T207
#> ABI1 p Y213                                                                     1
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    1
#> HIPK3 p Y359                                                                    1
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            1
#> MAPK3 p T207                                                                    0
#>                                                                      NAA10 p Y106; NAA11 p Y106
#> ABI1 p Y213                                                                                   1
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  1
#> HIPK3 p Y359                                                                                  1
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          1
#> MAPK3 p T207                                                                                  1
#>                                                                      S100A10 p Y25
#> ABI1 p Y213                                                                      1
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     1
#> HIPK3 p Y359                                                                     1
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             1
#> MAPK3 p T207                                                                     1
#>                                                                      TJP2 p S1006
#> ABI1 p Y213                                                                     1
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    1
#> HIPK3 p Y359                                                                    1
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            1
#> MAPK3 p T207                                                                    1
#>                                                                      ZC3H18 p S487
#> ABI1 p Y213                                                                      1
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     1
#> HIPK3 p Y359                                                                     1
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             1
#> MAPK3 p T207                                                                     1
#>                                                                      ABI2 p Y213
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CBLB p Y889
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      NIT1 p Y143
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TPD52L2 p Y106
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ABL1 p T392; ABL2 p T438
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      ABL1 p T394; ABL2 p T440
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      BCAR1 p Y128
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CDK1 p Y15; CDK2 p Y15; CDK3 p Y15
#> ABI1 p Y213                                                                                           0
#> ESD p Y202                                                                                            0
#> FABP5 p Y131                                                                                          0
#> HIPK3 p Y359                                                                                          0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                  0
#> MAPK3 p T207                                                                                          0
#>                                                                      CLDN7 p Y210
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EPHA1 p T780
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      S100A11 p Y30
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SCEL p Y58
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      TJP2 p Y265
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TNS1 p Y1254
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ABL1 p Y185
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      KRT18 p Y24
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ABL1 p Y393; ABL2 p Y439
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      ALK p Y1584
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ATIC p Y104
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      BCAR1 p S407
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      BCAR3 p Y117
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      DYRK4 p Y264; DYRK2 p Y382
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      EPHA2 p T771
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GLUL p Y180
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HIPK2 p T360; HIPK1 p T351
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      HNRNPA2B1 p Y174
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      ICK p S152
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      KRT18 p Y36
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      KRT7 p Y205; KRT7 p Y246
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      KRT7 p Y40
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      LYN p T398; HCK p T412
#> ABI1 p Y213                                                                               0
#> ESD p Y202                                                                                0
#> FABP5 p Y131                                                                              0
#> HIPK3 p Y359                                                                              0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                      0
#> MAPK3 p T207                                                                              0
#>                                                                      NIT2 p Y49
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PIK3R2 p Y505
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PIK3R3 p Y199
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PKP2 p Y659
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP4 p Y372
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PRAG1 p T407
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PTK2 p Y577
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PTTG1IP p Y174
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      RACK1 p Y52
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SDC4 p Y197
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SRSF1 p T187
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TRA2B p Y260
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      VCL p Y822
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      ZNF33B p Y595; ZNF33A p Y594
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      ACLY p Y682
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      AHNAK p Y160
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ARAP1 p Y504
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CNN2 p T186
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CTNND1 p Y335
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ACOT7 p Y194
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ACTBL2 p Y88
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CDK1 p T14; CDK2 p T14; CDK3 p T14
#> ABI1 p Y213                                                                                           0
#> ESD p Y202                                                                                            0
#> FABP5 p Y131                                                                                          0
#> HIPK3 p Y359                                                                                          0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                  0
#> MAPK3 p T207                                                                                          0
#>                                                                      CEACAM3 p Y230
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      CTNND1 p Y228
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      MAPK13 p Y182
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PIKFYVE p Y1041
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      PKP4 p Y1168
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      REPS2 p Y558
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ACP1 p T85
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      HNRNPA1 p S365
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      HNRNPA2B1 p Y347
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      HNRNPA3 p S358
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ACTG1 p T297; ACTB p T297
#> ABI1 p Y213                                                                                  0
#> ESD p Y202                                                                                   0
#> FABP5 p Y131                                                                                 0
#> HIPK3 p Y359                                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                         0
#> MAPK3 p T207                                                                                 0
#>                                                                      BCAR3 p Y266
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CTTN p S418
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CTTN p Y141
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DAPP1 p S141
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      DDX1 p Y628
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DOK1 p Y449
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DSP p Y56
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      DYNLL1 p Y65; DYNLL2 p Y65
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      EMD p Y161
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      EML4 p Y226
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EML4 p Y247
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ENSA p Y70; ARPP19 p Y65
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      EPHA2 p T593
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EPHA2 p Y575
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EPHA2 p Y772
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ERBB3 p Y1328
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ESYT1 p Y1009
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      FLOT1 p Y203
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GAREM1 p Y271
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GAREM1 p Y453
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GPRC5A p S301
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GRB2 p Y209
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HDAC1 p Y221
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      IL6ST p Y905
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      INPPL1 p Y886
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      IRS2 p Y576
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      IRS2 p Y632
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      IRS2 p Y803
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ITGB1 p Y783
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      KIRREL1 p Y721
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      LCK p T395; SRC p T420; FYN p T421; YES1 p T427
#> ABI1 p Y213                                                                                                        0
#> ESD p Y202                                                                                                         0
#> FABP5 p Y131                                                                                                       0
#> HIPK3 p Y359                                                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                               0
#> MAPK3 p T207                                                                                                       0
#>                                                                      LYSMD1 p Y83
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      MAOA p T435
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      MAOA p T437
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      MAPK8 p Y185; MAPK10 p Y223
#> ABI1 p Y213                                                                                    0
#> ESD p Y202                                                                                     0
#> FABP5 p Y131                                                                                   0
#> HIPK3 p Y359                                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                           0
#> MAPK3 p T207                                                                                   0
#>                                                                      MAPK9 p Y185
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      MBP p Y148
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      MISP p Y350
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      MPP5 p Y243
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      OCLN p Y337
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PAXIP1 p Y738
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PCDH1 p S1018
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PDLIM5 p Y251
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PI4KA p Y1154
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PIK3C2B p T1400
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      PKP2 p Y217
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP3 p Y84
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PRAG1 p Y413
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PRKCD p S304
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PTK2 p Y570
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PTPRH p Y1102
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      RIPK1 p S389
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SLC25A5 p Y191
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      SPAG7 p Y189
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TARS p Y298
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TJP1 p Y1524
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TJP2 p S266
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TNK1 p Y661
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TNK2 p Y284
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TRAP1 p Y499
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ZNF33B p T597; ZNF33A p T596
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      ACTG1 p Y198; ACTB p Y198
#> ABI1 p Y213                                                                                  0
#> ESD p Y202                                                                                   0
#> FABP5 p Y131                                                                                 0
#> HIPK3 p Y359                                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                         0
#> MAPK3 p T207                                                                                 0
#>                                                                      CDK16 p Y176; CDK17 p Y203
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      MAPK14 p T185
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PLEKHA6 p Y404
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ACTG1 p Y294; ACTB p Y294
#> ABI1 p Y213                                                                                  0
#> ESD p Y202                                                                                   0
#> FABP5 p Y131                                                                                 0
#> HIPK3 p Y359                                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                         0
#> MAPK3 p T207                                                                                 0
#>                                                                      EEF1A1 p Y29; EEF1A1P5 p Y29; EEF1A2 p Y29
#> ABI1 p Y213                                                                                                   0
#> ESD p Y202                                                                                                    0
#> FABP5 p Y131                                                                                                  0
#> HIPK3 p Y359                                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                          0
#> MAPK3 p T207                                                                                                  0
#>                                                                      EGFR p Y1172
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EIF3B p Y525
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EPHA2 p T587
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      G6PD p T402
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HNRNPM p Y64
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      INPPL1 p S890
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      KIAA1217 p Y245
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      LEMD2 p Y122
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      LPP p Y297
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      MAPK14 p T180
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      MAPK14 p Y182
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      MUC1 p Y1212
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PRPF4B p Y849
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PTK2B p Y580
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      RAN p Y147
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      S100A16 p S27
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ACTG1 p Y53; ACTB p Y53; ACTA1 p Y55; ACTC1 p Y55; ACTG2 p Y54; ACTA2 p Y55
#> ABI1 p Y213                                                                                                                                    0
#> ESD p Y202                                                                                                                                     0
#> FABP5 p Y131                                                                                                                                   0
#> HIPK3 p Y359                                                                                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                                                           0
#> MAPK3 p T207                                                                                                                                   0
#>                                                                      ARHGAP32 p Y1537
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      ARHGDIA p Y133
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      CDK16 p T175; CDK17 p T202
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      CLTCL1 p Y1096; CLTC p Y1096
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      DAPP1 p Y139
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      DCXR p Y149
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FYN p Y28
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      MAN2A1 p Y33
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      MYH9 p Y1805
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      MYH9 p Y754
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PAG1 p Y227
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PAG1 p Y317
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PSMA2 p Y57
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      RBM4B p Y37; RBM4 p Y37
#> ABI1 p Y213                                                                                0
#> ESD p Y202                                                                                 0
#> FABP5 p Y131                                                                               0
#> HIPK3 p Y359                                                                               0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                       0
#> MAPK3 p T207                                                                               0
#>                                                                      S100A16 p Y26
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SHB p S265
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      SHB p Y114
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      SHB p Y246
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      SHC1 p Y427
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SRSF9 p S178
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TNS2 p Y483
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      URB2 p S18
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      YWHAE p Y131
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ACTN1 p Y193
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      AHNAK p S5841
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ALK p Y1507
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ARHGEF5 p Y1370
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      ATP8B1 p Y1217
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      CAV1 p T15
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      CSRNP3 p T271
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ACTR10 p Y4
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ANXA11 p Y482
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ADAM10 p Y741
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ANKRD26 p Y296
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ANKS1A p Y455
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      DBNL p Y140
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EIF2S1 p Y147
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GRB2 p T159
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HNRNPA2B1 p Y336
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      HSP90AA1 p S63; HSP90AA2P p S63; HSP90AB1 p S58; HSP90AB3P p S58; HSP90AB2P p S58
#> ABI1 p Y213                                                                                                                                          0
#> ESD p Y202                                                                                                                                           0
#> FABP5 p Y131                                                                                                                                         0
#> HIPK3 p Y359                                                                                                                                         0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                                                                 0
#> MAPK3 p T207                                                                                                                                         0
#>                                                                      LILRA1 p Y291; LILRA4 p Y289; LILRB2 p Y290; LILRB1 p Y291
#> ABI1 p Y213                                                                                                                   0
#> ESD p Y202                                                                                                                    0
#> FABP5 p Y131                                                                                                                  0
#> HIPK3 p Y359                                                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                                          0
#> MAPK3 p T207                                                                                                                  0
#>                                                                      MUC1 p Y1229
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SH3PXD2B p Y25
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      TXNRD1 p Y281
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      UBASH3B p Y19
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      UTP15 p T87
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ADAM9 p T761
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      AFAP1L2 p Y383
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ARAP2 p Y473
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ARHGAP35 p S1106
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      ARHGAP39 p Y448
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      ASCC3 p Y438
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CTNNA1 p Y419; CTNNA2 p Y417
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      DDX3X p Y266; DDX3Y p Y264
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      F11R p Y280
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ADAM9 p Y769
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ANKRD26 p T295
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ANO1 p Y7
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      ATP1A1 p Y260
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      CRIP2 p Y134
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CTNND1 p S230
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      IRS2 p Y823
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SUCLA2 p Y84
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ADGRL2 p Y1372
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      CDK1 p Y19; CDK2 p Y19; CDK3 p Y19
#> ABI1 p Y213                                                                                           0
#> ESD p Y202                                                                                            0
#> FABP5 p Y131                                                                                          0
#> HIPK3 p Y359                                                                                          0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                  0
#> MAPK3 p T207                                                                                          0
#>                                                                      CDK5 p T14
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      ADGRL2 p Y1406
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      CPD p Y1344
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CRK p Y136
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      CRKL p Y251
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DCBLD2 p Y750
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      EML4 p Y267
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HDAC1 p Y222
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      KRT7 p S38
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      MISP p Y95
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      NFKB2 p Y77
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PAG1 p S354
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PIK3R1 p Y467
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PKP3 p Y195
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP3 p Y390
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP4 p Y275
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP4 p Y415
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP4 p Y494
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PLA2G4A p Y535
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      PRKAA1 p Y455
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PSMB5 p Y220
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PTPN11 p T59
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SOS1 p Y681
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SPATS2L p Y15
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      TAGLN2 p Y8
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      VASP p Y39
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      AFAP1L2 p S414
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ALK p T1506
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ANXA2 p Y238; ANXA2P2 p Y238
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      ASH1L p Y1995
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      CTNND1 p Y280
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      EIF1 p Y30; EIF1B p Y30
#> ABI1 p Y213                                                                                0
#> ESD p Y202                                                                                 0
#> FABP5 p Y131                                                                               0
#> HIPK3 p Y359                                                                               0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                       0
#> MAPK3 p T207                                                                               0
#>                                                                      EPHA2 p Y588
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EPHA2 p Y594
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PIPSL p Y89; PIP5K1C p Y136; PIP5K1A p Y142
#> ABI1 p Y213                                                                                                    0
#> ESD p Y202                                                                                                     0
#> FABP5 p Y131                                                                                                   0
#> HIPK3 p Y359                                                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                           0
#> MAPK3 p T207                                                                                                   0
#>                                                                      AFAP1L2 p Y413
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ALK p S1509
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      AXL p Y866
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      CTNND1 p S225
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      CTTN p S447
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DYRK1A p Y319; DYRK1B p Y271
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      EPS8 p T499
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      G6PD p Y202
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      KIRREL1 p Y572
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      LDHA p Y239
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      LMO7 p Y1672
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      LSR p Y328
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      MAPK13 p T185
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      MAPK3 p Y204
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      NEDD9 p Y317
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PIK3R1 p T369
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PITPNB p Y93; PITPNA p Y93
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      PRKCD p Y334
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      RASA1 p Y460
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      RFC2 p T164
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SPATC1 p Y504
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      TAGLN2 p Y192; TAGLN3 p Y192
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      TJP2 p Y1178
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      AFDN p Y1230
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      AHNAK p Y715
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ALDOA p Y5
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      ANK3 p Y632; ANK2 p Y630
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      ANXA2 p Y30; ANXA2P2 p Y30
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      ANXA2 p Y317; ANXA2P2 p Y317
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      APLP2 p Y755
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ARHGAP12 p S240
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      ARHGAP12 p T230
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      ARHGAP32 p Y1520
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      BCR p Y177
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      CDV3 p T182
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CNN2 p Y184
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CTNND1 p Y213
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      EML4 p Y265
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EML4 p Y453
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EPHA3 p T781; EPHA4 p T781; EPHA5 p T835
#> ABI1 p Y213                                                                                                 0
#> ESD p Y202                                                                                                  0
#> FABP5 p Y131                                                                                                0
#> HIPK3 p Y359                                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                        0
#> MAPK3 p T207                                                                                                0
#>                                                                      FRS2 p Y306
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FYN p Y185; FGR p Y180; YES1 p Y194
#> ABI1 p Y213                                                                                            0
#> ESD p Y202                                                                                             0
#> FABP5 p Y131                                                                                           0
#> HIPK3 p Y359                                                                                           0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                   0
#> MAPK3 p T207                                                                                           0
#>                                                                      GART p Y348
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      GLUL p Y185
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HDAC2 p Y222
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      HNRNPA0 p Y180
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      MAGOH p Y40; MAGOHB p Y42
#> ABI1 p Y213                                                                                  0
#> ESD p Y202                                                                                   0
#> FABP5 p Y131                                                                                 0
#> HIPK3 p Y359                                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                         0
#> MAPK3 p T207                                                                                 0
#>                                                                      MET p S1236
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      NEDD9 p Y106
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PIK3C2B p Y1541
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      PKP4 p T1166
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PSMA2 p Y76
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PTK2 p Y397
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PTK2 p Y576
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PTPN11 p T547
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PTPN11 p Y279
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PTPN6 p S534
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      RBM14 p Y645
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      RPS10 p Y12
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SPTA1 p S37
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SRCIN1 p Y396
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      TJP1 p Y1061
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      AGL p Y584
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      CBR1 p Y194
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CD99L2 p Y243
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      CDC42BPB p S1640
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      EML4 p S242
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      NEDD9 p Y164
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PIN4 p Y122
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PTPN11 p Y584
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      AHCY p Y193
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      AHNAK p Y5836
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      AKR1B1 p T192
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ALK p Y1096
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CBL p S675
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      CDCP1 p T807
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CDV3 p Y190
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CFL1 p Y140
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CRIP1 p Y12
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HSP90AB1 p Y484; HSP90AB2P p Y260
#> ABI1 p Y213                                                                                          0
#> ESD p Y202                                                                                           0
#> FABP5 p Y131                                                                                         0
#> HIPK3 p Y359                                                                                         0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                 0
#> MAPK3 p T207                                                                                         0
#>                                                                      AHNAK p S5832
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      CTTN p S417
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CTTN p Y104
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CTTN p Y228
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CTTN p Y334
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DCBLD2 p Y732
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      EPHA1 p Y781
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ERRFI1 p Y458
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      EXOSC1 p Y119
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      FGF8 p Y72
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      FRK p S496
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      GPRC5A p T315
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GPRC5A p Y347
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GRB10 p Y404
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      INPPL1 p Y986
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      INSR p Y1185; IGF1R p Y1161
#> ABI1 p Y213                                                                                    0
#> ESD p Y202                                                                                     0
#> FABP5 p Y131                                                                                   0
#> HIPK3 p Y359                                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                           0
#> MAPK3 p T207                                                                                   0
#>                                                                      KIAA1217 p Y393
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      NTMT1 p Y103
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PKP3 p Y176
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP4 p Y420
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      RACK1 p Y228
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TJP2 p Y261
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TMC5 p Y55
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      AHNAK p Y964
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CEP89 p Y157
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      COPA p Y249
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DSP p Y28
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      EIF3I p Y308
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ENDOU p Y394
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ENSA p Y64; ARPP19 p Y59
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      ESYT1 p T824
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GRB7 p Y259
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      KIAA1217 p Y520
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      SLC25A5 p Y195
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      AIP p Y202
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      ARHGEF5 p S1139
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      CTTN p Y421
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EMG1 p Y61
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      HNRNPH3 p Y296
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      IRS2 p S740
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PRRC2C p Y1218
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      SHANK2 p Y538
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SYK p S202
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      AIP p Y203
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      AK2 p Y12
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      AKR1B1 p Y49
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      C11orf52 p T105
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      C11orf52 p Y103
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      CALM3 p Y100; CALM2 p Y100; CALM1 p Y100
#> ABI1 p Y213                                                                                                 0
#> ESD p Y202                                                                                                  0
#> FABP5 p Y131                                                                                                0
#> HIPK3 p Y359                                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                        0
#> MAPK3 p T207                                                                                                0
#>                                                                      CTTN p Y453
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EEF1A1 p Y177; EEF1A1P5 p Y177
#> ABI1 p Y213                                                                                       0
#> ESD p Y202                                                                                        0
#> FABP5 p Y131                                                                                      0
#> HIPK3 p Y359                                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                              0
#> MAPK3 p T207                                                                                      0
#>                                                                      EML4 p Y305
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ESYT1 p Y822
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GPSM1 p Y311
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      HNRNPA1 p Y366
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      IRS2 p Y675
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ITSN2 p Y968
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      KRT7 p S37
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      NEDD9 p Y241
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      NUCB1 p Y179
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PLEKHA5 p Y398
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      RAB13 p Y5
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      RBM12B p Y326
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      RPS21 p Y53
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SNRNP70 p Y126
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      SRCIN1 p Y264
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SRCIN1 p Y283
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      TNK2 p Y859
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      AJM1 p Y469
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CLTC p Y1438
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CYSTM1 p Y64
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EPS8 p Y485
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      GNAS p Y339; GNAS p Y982
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      IRS1 p Y941
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PLEKHA5 p Y436
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      PRKCD p Y630
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PTPN6 p Y536
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SEMA4B p Y782
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      WASL p Y256
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      AKR1B1 p Y190
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ANXA2 p S26; ANXA2P2 p S26
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      CASKIN2 p Y253
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      SHC1 p S426
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ALDOA p Y204; ALDOC p Y204
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      BAIAP2L1 p Y274
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      BCAR1 p Y387
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CDKL5 p Y171
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CTNND1 p S252
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      CTNND1 p Y217
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      EPB41 p Y660
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GAB2 p S623
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HSP90AA1 p Y61; HSP90AA2P p Y61; HSP90AB1 p Y56; HSP90AB3P p Y56; HSP90AB2P p Y56
#> ABI1 p Y213                                                                                                                                          0
#> ESD p Y202                                                                                                                                           0
#> FABP5 p Y131                                                                                                                                         0
#> HIPK3 p Y359                                                                                                                                         0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                                                                 0
#> MAPK3 p T207                                                                                                                                         0
#>                                                                      KDM6A p S388
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      NFKB2 p T76
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ALDOA p Y3
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      ARVCF p Y201
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      BCAR1 p T385
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CCT8 p Y30
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      CTTN p Y446
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FNBP1L p Y291
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GAB2 p S622
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      RAB8B p Y5; RAB8A p Y5
#> ABI1 p Y213                                                                               0
#> ESD p Y202                                                                                0
#> FABP5 p Y131                                                                              0
#> HIPK3 p Y359                                                                              0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                      0
#> MAPK3 p T207                                                                              0
#>                                                                      RPL35A p Y34
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ALK p Y1078
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      NECTIN4 p Y502
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      PKP4 p Y425
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ALK p Y1359
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ANXA11 p S480
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GPRC5A p Y350
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ALK p Y1586
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ARHGAP32 p Y1557
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      CEBPB p Y139
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CTTN p Y178
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DCP1A p Y64
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DDX5 p Y59
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      DLG3 p Y673
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EPS8 p Y491
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FYN p Y214; YES1 p Y223
#> ABI1 p Y213                                                                                0
#> ESD p Y202                                                                                 0
#> FABP5 p Y131                                                                               0
#> HIPK3 p Y359                                                                               0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                       0
#> MAPK3 p T207                                                                               0
#>                                                                      GAB1 p Y48
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      GAB1 p Y659
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      GOT1 p Y381
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ICK p T157
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      INSR p Y1189; IGF1R p Y1165
#> ABI1 p Y213                                                                                    0
#> ESD p Y202                                                                                     0
#> FABP5 p Y131                                                                                   0
#> HIPK3 p Y359                                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                           0
#> MAPK3 p T207                                                                                   0
#>                                                                      IRS2 p S820
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      IRS2 p Y111
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      IRS2 p Y542
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      LDHB p S238
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      LDHB p Y240
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      LSR p Y323
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      MAP3K14 p Y682
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      MUC1 p Y1203
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      MYH9 p Y1408
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      NIPSNAP1 p Y148
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      NUDT5 p Y74
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PARD3 p Y1177
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PARD3 p Y489
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PARD3 p Y719
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PKP2 p T216
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PLEKHA6 p Y492
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      PRDX1 p Y194
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PRKAA1 p Y442
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PRKCD p Y374
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PTK2B p Y579
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PTPRE p S694
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PXN p Y88
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      RACK1 p T229
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      RAPH1 p Y1226
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      RARS p Y291
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      RPS27 p S30; RPS27L p S30
#> ABI1 p Y213                                                                                  0
#> ESD p Y202                                                                                   0
#> FABP5 p Y131                                                                                 0
#> HIPK3 p Y359                                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                         0
#> MAPK3 p T207                                                                                 0
#>                                                                      RPSA p Y156
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      S100A14 p S33
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SEC16A p Y1031
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      SPRED2 p S250
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      TGM2 p T368
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TNK2 p Y827
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ANK3 p Y533
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CCNY p Y172
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ANO1 p Y51
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      CTNND1 p Y257
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      DCBLD2 p T734
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      EPB41L1 p Y343
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      HSP90AA1 p Y627
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      LMO7 p Y1667
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      LSR p S365
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      MAPK12 p Y185
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      RNPS1 p Y205
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ROCK2 p Y722
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SHC2 p Y414
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ANXA2 p Y24; ANXA2P2 p Y24
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      ATP6V1H p Y388
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ATXN2L p Y349
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      CGN p Y45
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      CLDN4 p Y208
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      DDX6 p Y313
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DNM2 p Y231; DNM1 p Y231
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      DOK1 p S450
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EGFR p Y1197
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EPHB2 p Y780
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      FGF8 p Y75
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      GMPS p Y526
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      GSK3B p Y216; GSK3A p Y279
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      HNRNPA1 p Y347
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      HNRNPA2B1 p Y331
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      HNRNPA3 p Y360
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      HSP90AB4P p Y32
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      IRS2 p Y742
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      IRS2 p Y75
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      KIAA1549L p Y1418
#> ABI1 p Y213                                                                          0
#> ESD p Y202                                                                           0
#> FABP5 p Y131                                                                         0
#> HIPK3 p Y359                                                                         0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                 0
#> MAPK3 p T207                                                                         0
#>                                                                      KRT8 p Y25
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      LSR p S371
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      LYN p Y397; HCK p Y411
#> ABI1 p Y213                                                                               0
#> ESD p Y202                                                                                0
#> FABP5 p Y131                                                                              0
#> HIPK3 p Y359                                                                              0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                      0
#> MAPK3 p T207                                                                              0
#>                                                                      MPP5 p Y528
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PARD3 p Y1080
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PLEKHA5 p T399
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      PRKAG1 p Y39
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PTPN11 p Y546
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PXN p S119
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PXN p S90
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      SDC1 p Y309
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SPAG7 p T188
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SYK p S295
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      TIPRL p Y209
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TRIM25 p Y278
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      VAV1 p Y541
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ANXA2 p Y316; ANXA2P2 p Y316
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      CD2AP p Y361
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CTNND1 p Y248
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SYNCRIP p Y205
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      ARHGAP12 p T231
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      CGN p Y313
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      CTTN p Y265
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FRK p Y387
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      GAREM1 p Y52
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ITPA p Y113
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      MAPK12 p T188
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      MUC1 p S1227
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TOM1 p Y386
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ARHGAP12 p Y243
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      CAPNS1 p Y87
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CNN2 p Y12; CNN3 p Y10
#> ABI1 p Y213                                                                               0
#> ESD p Y202                                                                                0
#> FABP5 p Y131                                                                              0
#> HIPK3 p Y359                                                                              0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                      0
#> MAPK3 p T207                                                                              0
#>                                                                      PLEKHG1 p Y1042
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      PNPT1 p Y459
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SHC1 p Y315
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ARHGAP35 p Y1105
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      BCAR1 p Y410
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CTNND1 p Y904
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      NEDD9 p Y629
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ARHGEF5 p Y1140
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      PKM p T80
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      ARHGEF5 p Y656
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      CDCP1 p Y806
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CTTN p Y162
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TJP2 p Y1179
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ATG101 p Y164
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      CTTN p S156
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DCBLD2 p Y597
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      DDX5 p Y442
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EFNB2 p Y304
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EGFR p Y1092
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EGFR p Y727; ERBB4 p Y733; ERBB2 p Y735
#> ABI1 p Y213                                                                                                0
#> ESD p Y202                                                                                                 0
#> FABP5 p Y131                                                                                               0
#> HIPK3 p Y359                                                                                               0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                       0
#> MAPK3 p T207                                                                                               0
#>                                                                      EIF3B p Y339
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ERBB3 p Y1307
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ERBIN p Y1104
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      FAM20B p Y141
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      INPPL1 p Y1162
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      INPPL1 p Y671
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      IRS1 p T88
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      KIAA1217 p Y244
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      KRT8 p Y10
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      LCK p Y192
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      OCLN p Y368
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PIK3C2B p Y1401
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      PKP4 p S273
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP4 p T412
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP4 p T477
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PLCG1 p Y428
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PTK2 p Y861
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PTK2 p Y925
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      QARS p Y491
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      RAN p Y155
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      RBMX p Y335
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SCEL p Y295
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SHB p Y268
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      SLC38A2 p Y41
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SYTL1 p Y304
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TIPRL p T208
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TUBGCP2 p Y83
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      WDR1 p Y238
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ZNF185 p Y581
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      ATP1A1 p Y55
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      BCAR3 p Y212
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      OCLN p Y315
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKP4 p Y1094
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SND1 p Y109
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TUT7 p Y77
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      ATP5PB p Y165
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      CDH5 p Y685
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      NOL8 p S723
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      BCAR1 p Y234
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EPHB4 p S575
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      KRT18 p Y94
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      BCAR1 p Y249
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CAV1 p Y14
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      ERBB2 p Y877
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GAREM1 p S700
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GPRC5C p Y387
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      KRT18 p Y13
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      NUDT21 p Y40
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PPP1CB p Y306
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SIRPA p Y496
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TNS3 p Y354
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      BCAR1 p Y306
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CRK p Y251
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PTBP1 p Y127
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      BCAR3 p Y42
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CBL p Y674
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      VAV3 p Y217
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      BUB1B p Y404
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      COPB2 p Y101
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CRIP2 p Y13
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CRYBG3 p T228
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      DLG1 p Y760
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EPB41L2 p Y623
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      C11orf52 p T101
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      CEBPB p S141
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      NEDD9 p Y345
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PITPNB p Y91; PITPNA p Y91
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      CAVIN1 p Y308
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GNB2 p Y59; GNB1 p Y59
#> ABI1 p Y213                                                                               0
#> ESD p Y202                                                                                0
#> FABP5 p Y131                                                                              0
#> HIPK3 p Y359                                                                              0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                      0
#> MAPK3 p T207                                                                              0
#>                                                                      PKP4 p Y421
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CDCP1 p S803
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CLDN1 p Y210
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EGFR p Y1110
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      IQGAP1 p Y1510
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      IRS1 p Y46
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      LPP p Y317
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      MAGI1 p Y373
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      MAOA p T439
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      NEDD9 p Y92
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PTPRE p Y696
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SOS2 p Y679
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TC2N p Y154
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CDK5 p Y15
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      MYO10 p Y1128
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PIK3R3 p T203
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PKP4 p Y443
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PLEC p Y4155
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      RFC2 p S162
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      RFC2 p T157
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      RPLP0 p Y24; RPLP0P6 p Y24
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      CEACAM3 p Y241
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      DCBLD1 p S619
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      EPHA2 p Y960
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      G6PD p Y503
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      GAB1 p Y406
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      GMPR p Y318; GMPR2 p Y318
#> ABI1 p Y213                                                                                  0
#> ESD p Y202                                                                                   0
#> FABP5 p Y131                                                                                 0
#> HIPK3 p Y359                                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                         0
#> MAPK3 p T207                                                                                 0
#>                                                                      HNRNPA1 p Y341
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      NQO1 p Y20
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PEAK1 p Y531
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PGK1 p Y196
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PRKD1 p S251
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      RPS21 p T52
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SMARCD2 p Y197
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      SPRY4 p Y52
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SSBP1 p Y99
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TNS3 p Y780
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TNS3 p Y855
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      VTA1 p Y278
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CLTC p Y634
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CTTN p Y154
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FLNB p Y2502
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GFPT1 p Y553
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GPRC5A p Y317
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GPRC5B p Y376
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      KIAA0895L p Y393
#> ABI1 p Y213                                                                         0
#> ESD p Y202                                                                          0
#> FABP5 p Y131                                                                        0
#> HIPK3 p Y359                                                                        0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                0
#> MAPK3 p T207                                                                        0
#>                                                                      PTPN11 p Y62
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      CTTN p S150
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CTTN p Y199
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DYRK4 p T263; DYRK2 p T381
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      ENO1 p Y287
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HSP90AA1 p Y492; HSP90AA5P p Y177
#> ABI1 p Y213                                                                                          0
#> ESD p Y202                                                                                           0
#> FABP5 p Y131                                                                                         0
#> HIPK3 p Y359                                                                                         0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                 0
#> MAPK3 p T207                                                                                         0
#>                                                                      MAGOH p S38; MAGOHB p S40
#> ABI1 p Y213                                                                                  0
#> ESD p Y202                                                                                   0
#> FABP5 p Y131                                                                                 0
#> HIPK3 p Y359                                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                         0
#> MAPK3 p T207                                                                                 0
#>                                                                      MAPK11 p Y182
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      RPS3 p Y120
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TLN1 p Y70
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      TUBA1B p Y103; TUBA4A p Y103; TUBA1C p Y103
#> ABI1 p Y213                                                                                                    0
#> ESD p Y202                                                                                                     0
#> FABP5 p Y131                                                                                                   0
#> HIPK3 p Y359                                                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                           0
#> MAPK3 p T207                                                                                                   0
#>                                                                      VARS p Y469
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      CYFIP1 p Y108; CYFIP2 p Y108
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      CYSRT1 p Y12
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EPS8 p Y525
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ERP29 p Y66
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FER p Y714
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      G6PD p Y401
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      GART p T349
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HSP90AB4P p S34
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      ITGB4 p Y1510
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PSMB2 p Y146
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SHANK2 p Y610
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      DBNL p Y162
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DCTN4 p Y173
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EML4 p T252
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EPS8L2 p Y678
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GAB1 p Y627
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      HDAC2 p Y223
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SEC16A p Y813
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      UBXN6 p Y336
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      DCBLD2 p Y565
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      HGS p Y286
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      MST1R p Y1238
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SHB p S247
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      TGM2 p Y369
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DCTN2 p Y6
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      DSC2 p Y839
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EMG1 p T60
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      ENO1 p Y189
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EPHA2 p S577
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EXPH5 p Y1019
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GPRC5A p Y293
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      HNRNPK p Y380
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      KRT7 p Y55
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      NECTIN4 p Y445
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      PLEKHA7 p Y1011
#> ABI1 p Y213                                                                        0
#> ESD p Y202                                                                         0
#> FABP5 p Y131                                                                       0
#> HIPK3 p Y359                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198               0
#> MAPK3 p T207                                                                       0
#>                                                                      PTPRK p Y916; PTPRM p Y929
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      RDH10 p Y126
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SLC7A11 p Y15
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      TNS1 p Y1404
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      UTP15 p Y84
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      WDR18 p Y61
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DDX39A p Y38; DDX39B p Y39
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      DYRK1A p Y321; DYRK1B p Y273
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      EGFR p T1141
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EIF4H p Y12
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ERRFI1 p Y394
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      FAM20B p Y138
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GPRC5C p Y324
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GSDMD p Y158
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      HDLBP p Y437
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      HSPA4 p Y336
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      IRS1 p Y632
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      KRT18 p S23
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      LCK p Y394; SRC p Y419; FYN p Y420; YES1 p Y426
#> ABI1 p Y213                                                                                                        0
#> ESD p Y202                                                                                                         0
#> FABP5 p Y131                                                                                                       0
#> HIPK3 p Y359                                                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                               0
#> MAPK3 p T207                                                                                                       0
#>                                                                      LSR p Y406
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PFN1 p Y129
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKM p Y105
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PKP4 p Y1172
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PKP4 p Y306
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PRKCD p Y313
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      S100A16 p Y20
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SF3B6 p Y86
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SHANK2 p S611
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      TEC p Y519
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      TYK2 p Y292
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      VAV1 p Y423
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DDX3X p Y69; DDX3Y p Y69
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      EEF1A1 p T142; EEF1A1P5 p T142; EEF1A2 p T142
#> ABI1 p Y213                                                                                                      0
#> ESD p Y202                                                                                                       0
#> FABP5 p Y131                                                                                                     0
#> HIPK3 p Y359                                                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                             0
#> MAPK3 p T207                                                                                                     0
#>                                                                      EEF1A1 p Y141; EEF1A1P5 p Y141; EEF1A2 p Y141
#> ABI1 p Y213                                                                                                      0
#> ESD p Y202                                                                                                       0
#> FABP5 p Y131                                                                                                     0
#> HIPK3 p Y359                                                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                             0
#> MAPK3 p T207                                                                                                     0
#>                                                                      EIF4A1 p Y70; EIF4A2 p Y71
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      EPS8 p Y774
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      GOLGA4 p Y2148
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      KRT8 p Y267; KRT75 p Y267; KRT8 p Y340; KRT75 p Y347; KRT8 p Y327; KRT75 p Y327
#> ABI1 p Y213                                                                                                                                        0
#> ESD p Y202                                                                                                                                         0
#> FABP5 p Y131                                                                                                                                       0
#> HIPK3 p Y359                                                                                                                                       0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                                                               0
#> MAPK3 p T207                                                                                                                                       0
#>                                                                      MAPK1 p Y187
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      NECTIN2 p Y454
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      PCDH1 p Y897
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PCYT1A p Y213; PCYT1B p Y213
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      PDLIM5 p T248
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SHANK2 p S589
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SPDEF p Y329
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ZC3H18 p S492
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      DDX49 p Y223
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      FRK p S389
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      LPP p T316
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PKP4 p Y465
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DDX5 p Y202; DDX17 p Y279
#> ABI1 p Y213                                                                                  0
#> ESD p Y202                                                                                   0
#> FABP5 p Y131                                                                                 0
#> HIPK3 p Y359                                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                         0
#> MAPK3 p T207                                                                                 0
#>                                                                      LYN p Y32
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      PIK3R1 p T471
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      DIAPH1 p S373
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      DYNLL1 p S64; DYNLL2 p S64
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      EVPL p Y1520
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      IRS1 p S629
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      LSR p Y551
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      NEDD9 p Y166
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PABPC1 p Y54; PABPC4 p Y54
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      PTPRA p Y798
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TNK2 p T829
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      DOCK11 p Y1223
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      FLVCR1 p Y22
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      IRS1 p Y989
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      MAPK1 p T185
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      NEO1 p Y575
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      STAM2 p S375
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SYK p Y203
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      TNK2 p T517
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      YWHAZ p Y128
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EGFR p S1166
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GAB1 p Y47
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      EGFR p Y869
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FYN p Y213; YES1 p Y222
#> ABI1 p Y213                                                                                0
#> ESD p Y202                                                                                 0
#> FABP5 p Y131                                                                               0
#> HIPK3 p Y359                                                                               0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                       0
#> MAPK3 p T207                                                                               0
#>                                                                      KIAA1549L p Y1417
#> ABI1 p Y213                                                                          0
#> ESD p Y202                                                                           0
#> FABP5 p Y131                                                                         0
#> HIPK3 p Y359                                                                         0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                 0
#> MAPK3 p T207                                                                         0
#>                                                                      LSR p Y372
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PTK2 p T929
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SLC1A5 p Y524
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SNAP29 p Y160
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SRSF1 p Y189
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SYK p Y296
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      SYTL1 p Y308
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EIF2B1 p S131
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GAREM1 p Y701
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GPAM p Y111
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PKM p Y83
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      SHC4 p Y424
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      SYNCRIP p Y373
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      EIF2S1 p Y150
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      F11R p S284
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FRK p Y46
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      GIT1 p Y545
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      LPP p Y301
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      SRSF9 p Y179
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EIF4A1 p Y250; EIF4A2 p Y251
#> ABI1 p Y213                                                                                     0
#> ESD p Y202                                                                                      0
#> FABP5 p Y131                                                                                    0
#> HIPK3 p Y359                                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                            0
#> MAPK3 p T207                                                                                    0
#>                                                                      ENAH p Y529
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      EPS8L1 p Y684
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      HIPK2 p Y361; HIPK1 p Y352
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      SNRPN p Y15; SNRPB p Y15
#> ABI1 p Y213                                                                                 0
#> ESD p Y202                                                                                  0
#> FABP5 p Y131                                                                                0
#> HIPK3 p Y359                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                        0
#> MAPK3 p T207                                                                                0
#>                                                                      ELOA2 p Y389
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      MYO1E p Y7
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      RIPK1 p Y387
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      ENO1 p Y44; ENO2 p Y44; ENO3 p Y44
#> ABI1 p Y213                                                                                           0
#> ESD p Y202                                                                                            0
#> FABP5 p Y131                                                                                          0
#> HIPK3 p Y359                                                                                          0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                  0
#> MAPK3 p T207                                                                                          0
#>                                                                      EPHA3 p Y779; EPHA4 p Y779; EPHA5 p Y833
#> ABI1 p Y213                                                                                                 0
#> ESD p Y202                                                                                                  0
#> FABP5 p Y131                                                                                                0
#> HIPK3 p Y359                                                                                                0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                        0
#> MAPK3 p T207                                                                                                0
#>                                                                      LPP p Y296
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      PLEKHA5 p Y327
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      EPHB4 p Y574
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PAG1 p Y417
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      ERBB2 p T875
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TIAL1 p Y140
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      EZR p Y270; MSN p Y270; RDX p Y270
#> ABI1 p Y213                                                                                           0
#> ESD p Y202                                                                                            0
#> FABP5 p Y131                                                                                          0
#> HIPK3 p Y359                                                                                          0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                  0
#> MAPK3 p T207                                                                                          0
#>                                                                      INPPL1 p Y1135
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      NEDD9 p Y168
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PGAM1 p Y92; PGAM2 p Y92; PGAM4 p Y92
#> ABI1 p Y213                                                                                              0
#> ESD p Y202                                                                                               0
#> FABP5 p Y131                                                                                             0
#> HIPK3 p Y359                                                                                             0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                     0
#> MAPK3 p T207                                                                                             0
#>                                                                      PKP4 p Y1115
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TNS3 p S602
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      FAF2 p Y79
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      ITSN2 p Y553
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      KRT19 p Y391
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      UMPS p Y37
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      FRK p Y497
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      IRS1 p Y612
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      KDM6A p T387
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      MTMR10 p Y708
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PTK2 p T575
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PTPN6 p Y564
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      RPL15 p Y59
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      STAT3 p Y705
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TJP2 p Y1007
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      G6PD p Y507
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      NUDT1 p Y48
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PXN p Y118
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      TJP2 p Y1118
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      GAB2 p Y266
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      KIRREL1 p Y605
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      GAB2 p Y293
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      NEDD9 p Y223
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PSMB2 p Y147
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TXNRD1 p Y163
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GAB2 p Y614
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TUBA1B p Y312; TUBAL3 p Y319; TUBA4A p Y312; TUBA1C p Y312
#> ABI1 p Y213                                                                                                                   0
#> ESD p Y202                                                                                                                    0
#> FABP5 p Y131                                                                                                                  0
#> HIPK3 p Y359                                                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                                                          0
#> MAPK3 p T207                                                                                                                  0
#>                                                                      GPRC5A p S345
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      GSDMD p T161
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      MET p Y1234
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      S100A14 p Y32
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      SPRY2 p Y55
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      GSK3B p S215; GSK3A p S278
#> ABI1 p Y213                                                                                   0
#> ESD p Y202                                                                                    0
#> FABP5 p Y131                                                                                  0
#> HIPK3 p Y359                                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                          0
#> MAPK3 p T207                                                                                  0
#>                                                                      PXN p S85
#> ABI1 p Y213                                                                  0
#> ESD p Y202                                                                   0
#> FABP5 p Y131                                                                 0
#> HIPK3 p Y359                                                                 0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198         0
#> MAPK3 p T207                                                                 0
#>                                                                      ICK p Y159
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      KRT18 p S34
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PELO p Y99
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      SPRY1 p Y89
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TNS3 p Y601
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      LAMTOR1 p Y40
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      LYN p Y194
#> ABI1 p Y213                                                                   0
#> ESD p Y202                                                                    0
#> FABP5 p Y131                                                                  0
#> HIPK3 p Y359                                                                  0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198          0
#> MAPK3 p T207                                                                  0
#>                                                                      TNS3 p S332
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      MAPK13 p T180
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PARD3B p Y1000
#> ABI1 p Y213                                                                       0
#> ESD p Y202                                                                        0
#> FABP5 p Y131                                                                      0
#> HIPK3 p Y359                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198              0
#> MAPK3 p T207                                                                      0
#>                                                                      SPTBN1 p Y1680; SPTBN2 p Y1676
#> ABI1 p Y213                                                                                       0
#> ESD p Y202                                                                                        0
#> FABP5 p Y131                                                                                      0
#> HIPK3 p Y359                                                                                      0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198                              0
#> MAPK3 p T207                                                                                      0
#>                                                                      MPZL1 p Y263
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      PAG1 p Y359
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      PPP1CA p Y306
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      PTBP3 p Y127
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      SERBP1 p Y207
#> ABI1 p Y213                                                                      0
#> ESD p Y202                                                                       0
#> FABP5 p Y131                                                                     0
#> HIPK3 p Y359                                                                     0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198             0
#> MAPK3 p T207                                                                     0
#>                                                                      TJAP1 p T354
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
#>                                                                      TNS3 p S776
#> ABI1 p Y213                                                                    0
#> ESD p Y202                                                                     0
#> FABP5 p Y131                                                                   0
#> HIPK3 p Y359                                                                   0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198           0
#> MAPK3 p T207                                                                   0
#>                                                                      TRAP1 p Y498
#> ABI1 p Y213                                                                     0
#> ESD p Y202                                                                      0
#> FABP5 p Y131                                                                    0
#> HIPK3 p Y359                                                                    0
#> HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198            0
#> MAPK3 p T207                                                                    0
```
