# Correlation Matrix

Matrix relating the correlation values between ptms based on Spearman
Similarity.

## Usage

``` r
ex_ptm_correlation_matrix
```

## Format

Square matrix of 908 rows and columns:

- rows and columns:

  Ptm names

- values:

  Strength of correlation

## Source

"Produced by MakeClusterList"

## Examples

``` r
head(ex_ptm_correlation_matrix)
#>               KRT7 p S37 KRT7 p S38 INPPL1 p S890 KDM6A p S388 DIAPH1 p S373
#> KRT7 p S37            NA       -0.5            -1          0.2     0.5296703
#> KRT7 p S38    -0.5000000         NA            NA           NA     0.5000000
#> INPPL1 p S890 -1.0000000         NA            NA           NA            NA
#> KDM6A p S388   0.2000000         NA            NA           NA    -1.0000000
#> DIAPH1 p S373  0.5296703        0.5            NA         -1.0            NA
#> CTNND1 p S252  0.5692308        1.0            NA          1.0     0.3021978
#>               CTNND1 p S252 CTNND1 p S225 CTNND1 p S230 STAM2 p S375
#> KRT7 p S37        0.5692308            NA             1         -0.2
#> KRT7 p S38        1.0000000            NA            NA           NA
#> INPPL1 p S890            NA            NA            NA         -1.0
#> KDM6A p S388      1.0000000            NA            NA         -1.0
#> DIAPH1 p S373     0.3021978            NA             1         -0.4
#> CTNND1 p S252            NA            NA             1         -0.5
#>               EGFR p S1166 SPTA1 p S37 KRT18 p S34 KRT18 p S23 LDHB p S238
#> KRT7 p S37       0.3500000   0.6372549          -1  -0.6071429         0.4
#> KRT7 p S38       1.0000000   0.5000000          NA   1.0000000          NA
#> INPPL1 p S890           NA  -1.0000000          NA   1.0000000          NA
#> KDM6A p S388            NA   0.8000000          NA  -0.2000000         1.0
#> DIAPH1 p S373    0.2727273   0.6892857          NA  -0.3846154        -1.0
#> CTNND1 p S252    0.3696970   0.5392857          NA  -0.2857143         1.0
#>               ANXA2 p S26; ANXA2P2 p S26
#> KRT7 p S37                            NA
#> KRT7 p S38                            NA
#> INPPL1 p S890                         NA
#> KDM6A p S388                          NA
#> DIAPH1 p S373                         NA
#> CTNND1 p S252                         NA
#>               HSP90AA1 p S63; HSP90AA2P p S63; HSP90AB1 p S58; HSP90AB3P p S58; HSP90AB2P p S58
#> KRT7 p S37                                                                           -0.4285714
#> KRT7 p S38                                                                                   NA
#> INPPL1 p S890                                                                         1.0000000
#> KDM6A p S388                                                                          0.5000000
#> DIAPH1 p S373                                                                        -0.9428571
#> CTNND1 p S252                                                                        -0.6000000
#>               MET p S1236 HNRNPA1 p S365 MUC1 p S1227 CEBPB p S141  CBL p S675
#> KRT7 p S37     -0.8571429             NA           NA           NA -0.23626374
#> KRT7 p S38             NA             NA           NA           NA  1.00000000
#> INPPL1 p S890          NA             NA           NA           NA  1.00000000
#> KDM6A p S388    0.5000000             NA           NA           NA -0.50000000
#> DIAPH1 p S373   0.0000000             NA           NA           NA  0.06363636
#> CTNND1 p S252  -0.7000000             NA           NA           NA  0.23076923
#>               PTPRE p S694 EPHA2 p S577 PTPN6 p S534 SHC1 p S426 RFC2 p S162
#> KRT7 p S37              NA           NA   0.53333333        -0.4   0.8014706
#> KRT7 p S38              NA           NA  -1.00000000          NA   0.5000000
#> INPPL1 p S890           NA           NA           NA          NA   1.0000000
#> KDM6A p S388            NA           NA           NA          NA  -0.4000000
#> DIAPH1 p S373           NA           NA   0.91666667         0.0   0.6857143
#> CTNND1 p S252           NA           NA   0.06666667         0.8   0.3250000
#>               IRS1 p S629 RPS27 p S30; RPS27L p S30 FRK p S496 FRK p S389
#> KRT7 p S37             NA                -0.6936275         NA         NA
#> KRT7 p S38             NA                 0.5000000         NA         NA
#> INPPL1 p S890          NA                -1.0000000         NA         NA
#> KDM6A p S388           NA                 0.8000000         NA         NA
#> DIAPH1 p S373          NA                -0.5464286         NA         NA
#> CTNND1 p S252          NA                -0.4571429         NA         NA
#>               SYK p S202 SYK p S295  PXN p S85 PXN p S90 PXN p S119
#> KRT7 p S37            NA        0.5  0.1904762 0.2142857  0.8065934
#> KRT7 p S38            NA         NA         NA        NA -1.0000000
#> INPPL1 p S890         NA         NA         NA        NA  1.0000000
#> KDM6A p S388          NA         NA -0.5000000 0.4000000  0.2000000
#> DIAPH1 p S373         NA       -0.5  0.4285714 0.3000000  0.3216783
#> CTNND1 p S252         NA       -0.5  0.3333333 0.4285714  0.3006993
#>               GSK3B p S215; GSK3A p S278 ANXA11 p S480 HNRNPA3 p S358
#> KRT7 p S37                    -0.2857143    -0.6941176             NA
#> KRT7 p S38                            NA     0.5000000             NA
#> INPPL1 p S890                  1.0000000     1.0000000             NA
#> KDM6A p S388                  -1.0000000     0.0000000             NA
#> DIAPH1 p S373                 -0.2857143    -0.4549451             NA
#> CTNND1 p S252                  0.4642857    -0.3538462             NA
#>               EPHB4 p S575 BCAR1 p S407 MAGOH p S38; MAGOHB p S40
#> KRT7 p S37              NA    0.5868132                         1
#> KRT7 p S38              NA    0.5000000                        NA
#> INPPL1 p S890           NA    1.0000000                        NA
#> KDM6A p S388            NA    0.5000000                        NA
#> DIAPH1 p S373           NA    0.6853147                         1
#> CTNND1 p S252           NA    0.4636364                         1
#>               DYNLL1 p S64; DYNLL2 p S64 PRKCD p S304 PCDH1 p S1018
#> KRT7 p S37                          -0.8    0.8571429   -0.09090909
#> KRT7 p S38                            NA           NA            NA
#> INPPL1 p S890                         NA           NA            NA
#> KDM6A p S388                          NA           NA            NA
#> DIAPH1 p S373                       -0.8    0.4642857   -0.23333333
#> CTNND1 p S252                       -1.0   -0.3928571    0.19047619
#>               AHNAK p S5832 AHNAK p S5841 ARHGEF5 p S1139 SRSF9 p S178
#> KRT7 p S37               NA     0.3571429              NA           -1
#> KRT7 p S38               NA    -1.0000000              NA           NA
#> INPPL1 p S890            NA            NA              NA           NA
#> KDM6A p S388             NA            NA              NA           NA
#> DIAPH1 p S373            NA     0.0000000              NA           NA
#> CTNND1 p S252            NA     0.0000000              NA           NA
#>               RIPK1 p S389 URB2 p S18 EIF2B1 p S131 CTTN p S156 CTTN p S447
#> KRT7 p S37              NA -0.4285714    0.15000000  -0.6153846         0.4
#> KRT7 p S38              NA  1.0000000            NA          NA          NA
#> INPPL1 p S890           NA         NA    1.00000000          NA          NA
#> KDM6A p S388            NA         NA    0.20000000   0.4000000          NA
#> DIAPH1 p S373           NA -0.8000000    0.77142857  -0.5636364         0.1
#> CTNND1 p S252           NA  0.1428571   -0.08571429  -0.8363636        -0.9
#>               CTTN p S150 CTTN p S417 CTTN p S418 PRKD1 p S251 SHB p S265
#> KRT7 p S37             NA  -0.2142857  -0.2142857    0.4285714         NA
#> KRT7 p S38             NA          NA          NA           NA         NA
#> INPPL1 p S890          NA  -1.0000000  -1.0000000           NA         NA
#> KDM6A p S388           NA   1.0000000   1.0000000    1.0000000         NA
#> DIAPH1 p S373          NA  -0.9000000  -0.9000000   -0.1000000         NA
#> CTNND1 p S252          NA  -0.8000000  -0.8000000    0.3000000         NA
#>               SHB p S247 HSP90AB4P p S34 TNS3 p S776 TNS3 p S602 TNS3 p S332
#> KRT7 p S37           0.5      -0.4285714          -1           1  0.56428571
#> KRT7 p S38            NA              NA          NA          NA -1.00000000
#> INPPL1 p S890         NA       1.0000000          NA          NA  1.00000000
#> KDM6A p S388         1.0       0.5000000          NA          NA  0.80000000
#> DIAPH1 p S373        1.0      -0.9428571           1           1  0.40659341
#> CTNND1 p S252         NA      -0.6000000           1           1  0.06593407
#>               NOL8 p S723 SPRED2 p S250 ZC3H18 p S487 ZC3H18 p S492 LSR p S365
#> KRT7 p S37            0.3             1     0.1666667     0.1666667         NA
#> KRT7 p S38             NA            NA    -1.0000000    -1.0000000         NA
#> INPPL1 p S890          NA            NA            NA            NA         NA
#> KDM6A p S388           NA            NA            NA            NA         NA
#> DIAPH1 p S373         0.7            NA    -0.4333333    -0.4333333         NA
#> CTNND1 p S252        -0.9            NA     0.2833333     0.2833333         NA
#>               LSR p S371 ARHGAP12 p S240 AFAP1L2 p S414 DCBLD1 p S619
#> KRT7 p S37            NA      -0.3714286      0.8857143          0.25
#> KRT7 p S38            NA       1.0000000             NA            NA
#> INPPL1 p S890         NA              NA             NA         -1.00
#> KDM6A p S388          NA              NA             NA         -1.00
#> DIAPH1 p S373         NA      -0.4642857      0.5000000          0.10
#> CTNND1 p S252         NA      -0.2142857     -0.5000000          0.80
#>               GPRC5A p S345 GPRC5A p S301 S100A16 p S27 PKP4 p S273 DOK1 p S450
#> KRT7 p S37              1.0    -0.1000000          -1.0  -0.4500000          NA
#> KRT7 p S38               NA            NA            NA          NA          NA
#> INPPL1 p S890            NA            NA            NA   1.0000000          NA
#> KDM6A p S388             NA            NA           1.0   0.6000000          NA
#> DIAPH1 p S373          -1.0     0.9428571            NA  -0.9428571          NA
#> CTNND1 p S252          -0.5    -0.5428571           0.5   0.2571429          NA
#>               CDCP1 p S803 GAREM1 p S700 EML4 p S242 S100A14 p S33
#> KRT7 p S37              NA            NA         0.8    -0.2848485
#> KRT7 p S38              NA            NA          NA    -1.0000000
#> INPPL1 p S890           NA            NA        -1.0            NA
#> KDM6A p S388            NA            NA        -1.0     0.4000000
#> DIAPH1 p S373           NA            NA          NA    -0.7142857
#> CTNND1 p S252           NA            NA        -1.0    -0.5952381
#>               ARHGAP35 p S1106 PAG1 p S354 TJP2 p S266 TJP2 p S1006 ALK p S1509
#> KRT7 p S37                -1.0          NA   0.7062937         -0.8          NA
#> KRT7 p S38                  NA          NA   0.5000000           NA          NA
#> INPPL1 p S890               NA          NA          NA           NA          NA
#> KDM6A p S388                NA          NA          NA          1.0          NA
#> DIAPH1 p S373              0.5          NA   0.5104895         -1.0          NA
#> CTNND1 p S252             -0.5          NA   0.3356643         -0.5          NA
#>               DAPP1 p S141 SHANK2 p S611 SHANK2 p S589 ICK p S152 GAB2 p S622
#> KRT7 p S37              NA     0.5490196    0.64848485         NA  -0.2857143
#> KRT7 p S38              NA     0.5000000    1.00000000         NA          NA
#> INPPL1 p S890           NA     1.0000000            NA         NA          NA
#> KDM6A p S388            NA    -0.2000000            NA         NA          NA
#> DIAPH1 p S373           NA     0.4750000    0.16666667         NA  -0.3500000
#> CTNND1 p S252           NA     0.4892857    0.08181818         NA   0.3095238
#>               GAB2 p S623 IRS2 p S820 IRS2 p S740 CDC42BPB p S1640 F11R p S284
#> KRT7 p S37             NA  -0.1428571          NA        0.4125874  -0.9393939
#> KRT7 p S38             NA          NA          NA        1.0000000          NA
#> INPPL1 p S890          NA  -1.0000000          NA       -1.0000000          NA
#> KDM6A p S388           NA  -1.0000000          NA        0.5000000  -1.0000000
#> DIAPH1 p S373          NA  -0.4857143          NA        0.5594406  -0.6666667
#> CTNND1 p S252          NA   0.0000000          NA       -0.2121212  -0.5714286
#>               PIK3C2B p T1400 MAPK13 p T180 MAPK13 p T185 KDM6A p T387
#> KRT7 p S37                  1    -0.1904762          -1.0          0.2
#> KRT7 p S38                 NA    -1.0000000            NA           NA
#> INPPL1 p S890              NA            NA            NA           NA
#> KDM6A p S388               -1            NA            NA          1.0
#> DIAPH1 p S373              NA    -0.2380952          -0.5         -1.0
#> CTNND1 p S252              -1     0.2142857           1.0          1.0
#>               SPAG7 p T188 TIPRL p T208 ABL1 p T392; ABL2 p T438
#> KRT7 p S37              NA          0.0                       -1
#> KRT7 p S38              NA           NA                       NA
#> INPPL1 p S890           NA         -1.0                       NA
#> KDM6A p S388            NA          0.8                       NA
#> DIAPH1 p S373           NA         -0.9                        1
#> CTNND1 p S252           NA          0.0                       NA
#>               ABL1 p T394; ABL2 p T440 EGFR p T1141 ERBB2 p T875
#> KRT7 p S37                          NA           NA          0.8
#> KRT7 p S38                          NA           NA           NA
#> INPPL1 p S890                       NA           NA           NA
#> KDM6A p S388                        NA           NA           NA
#> DIAPH1 p S373                       NA           NA          0.5
#> CTNND1 p S252                       NA           NA          0.8
#>               LCK p T395; SRC p T420; FYN p T421; YES1 p T427
#> KRT7 p S37                                         0.25000000
#> KRT7 p S38                                         1.00000000
#> INPPL1 p S890                                              NA
#> KDM6A p S388                                               NA
#> DIAPH1 p S373                                     -0.10714286
#> CTNND1 p S252                                     -0.02857143
#>               CDK1 p T14; CDK2 p T14; CDK3 p T14 LYN p T398; HCK p T412
#> KRT7 p S37                             0.7965686            -0.64285714
#> KRT7 p S38                             0.5000000                     NA
#> INPPL1 p S890                          1.0000000                     NA
#> KDM6A p S388                           0.0000000             1.00000000
#> DIAPH1 p S373                          0.6214286             0.00000000
#> CTNND1 p S252                          0.2142857            -0.08571429
#>               G6PD p T402 PKM p T80 AKR1B1 p T192 MAOA p T435 MAOA p T437
#> KRT7 p S37           -0.5        NA            NA   0.5970588   0.5970588
#> KRT7 p S38             NA        NA            NA   0.5000000   0.5000000
#> INPPL1 p S890          NA        NA            NA   1.0000000   1.0000000
#> KDM6A p S388           NA        NA            NA  -1.0000000  -1.0000000
#> DIAPH1 p S373        -0.6        NA            NA   0.5340659   0.5340659
#> CTNND1 p S252        -0.8        NA            NA   0.3582418   0.3582418
#>               MAOA p T439 EPHA1 p T780 TGM2 p T368 GART p T349 ACP1 p T85
#> KRT7 p S37      0.5970588          1.0           1          NA        0.5
#> KRT7 p S38      0.5000000           NA          NA          NA         NA
#> INPPL1 p S890   1.0000000           NA          NA          NA       -1.0
#> KDM6A p S388   -1.0000000           NA          NA          NA        0.2
#> DIAPH1 p S373   0.5340659          0.5           1          NA       -0.6
#> CTNND1 p S252   0.3582418          0.5           1          NA       -0.2
#>               MAPK3 p T207 PIK3R1 p T471 PIK3R1 p T369 MAPK1 p T185
#> KRT7 p S37              NA            NA    -0.9428571    0.1261312
#> KRT7 p S38              NA            NA            NA    0.5000000
#> INPPL1 p S890           NA            NA            NA           NA
#> KDM6A p S388            NA            NA     1.0000000           NA
#> DIAPH1 p S373           NA            NA    -0.5000000    0.4550980
#> CTNND1 p S252           NA            NA    -0.3000000    0.2155727
#>               EPHA2 p T587 EPHA2 p T593 EPHA2 p T771
#> KRT7 p S37       0.7156863   0.46428571         -0.2
#> KRT7 p S38       0.5000000  -1.00000000           NA
#> INPPL1 p S890    1.0000000           NA           NA
#> KDM6A p S388     0.4000000  -0.80000000           NA
#> DIAPH1 p S373    0.6964286  -0.06293706          0.5
#> CTNND1 p S252    0.4357143   0.26923077         -0.5
#>               EPHA3 p T781; EPHA4 p T781; EPHA5 p T835 RFC2 p T157 RFC2 p T164
#> KRT7 p S37                                          -1   0.8014706   0.8014706
#> KRT7 p S38                                          NA   0.5000000   0.5000000
#> INPPL1 p S890                                       NA   1.0000000   1.0000000
#> KDM6A p S388                                        NA  -0.4000000  -0.4000000
#> DIAPH1 p S373                                       NA   0.6857143   0.6857143
#> CTNND1 p S252                                       NA   0.3250000   0.3250000
#>               IRS1 p T88 MAPK12 p T188 BCAR1 p T385 GSDMD p T161
#> KRT7 p S37    -0.6527473            NA    0.6500000           NA
#> KRT7 p S38    -1.0000000            NA   -0.5000000           NA
#> INPPL1 p S890  1.0000000            NA           NA           NA
#> KDM6A p S388   1.0000000            NA   -1.0000000           NA
#> DIAPH1 p S373 -0.5524476            NA    0.6428571           NA
#> CTNND1 p S252 -0.3636364            NA    0.7142857           NA
#>               ACTG1 p T297; ACTB p T297 GRB2 p T159 RPS21 p T52 RACK1 p T229
#> KRT7 p S37                           NA          -1          NA         -0.2
#> KRT7 p S38                           NA          NA          NA           NA
#> INPPL1 p S890                        NA           1          NA           NA
#> KDM6A p S388                         NA          -1          NA         -1.0
#> DIAPH1 p S373                        -1           1          NA          1.0
#> CTNND1 p S252                         1          NA          NA         -0.5
#>               EEF1A1 p T142; EEF1A1P5 p T142; EEF1A2 p T142 CDK5 p T14
#> KRT7 p S37                                       -0.1428571         NA
#> KRT7 p S38                                               NA         NA
#> INPPL1 p S890                                            NA         NA
#> KDM6A p S388                                             NA         NA
#> DIAPH1 p S373                                     0.8285714         NA
#> CTNND1 p S252                                     0.2000000         NA
#>               CDK16 p T175; CDK17 p T202 NFKB2 p T76 CAV1 p T15 PTK2 p T929
#> KRT7 p S37                          -0.5           1  0.6190476          NA
#> KRT7 p S38                           1.0          NA -1.0000000          NA
#> INPPL1 p S890                         NA          NA         NA          NA
#> KDM6A p S388                          NA          NA         NA          NA
#> DIAPH1 p S373                       -0.2          NA  0.2333333          NA
#> CTNND1 p S252                       -0.4          -1  0.1333333          NA
#>               PTK2 p T575 PTPN11 p T547 PTPN11 p T59
#> KRT7 p S37             NA    -0.6333333           NA
#> KRT7 p S38             NA            NA           NA
#> INPPL1 p S890          NA     1.0000000           NA
#> KDM6A p S388           NA     0.0000000           NA
#> DIAPH1 p S373          -1    -0.7714286           NA
#> CTNND1 p S252           1     0.4857143           NA
#>               ZNF33B p T597; ZNF33A p T596 TNK2 p T517 TNK2 p T829 SRSF1 p T187
#> KRT7 p S37                      -0.5833333  0.28571429          NA          0.6
#> KRT7 p S38                              NA  1.00000000          NA           NA
#> INPPL1 p S890                    1.0000000          NA          NA           NA
#> KDM6A p S388                    -0.4000000  1.00000000          NA           NA
#> DIAPH1 p S373                   -0.8285714  0.09090909          NA          1.0
#> CTNND1 p S252                    0.3142857  0.47252747          NA         -1.0
#>               EPS8 p T499 ADAM9 p T761 MAPK14 p T180 MAPK14 p T185 TJAP1 p T354
#> KRT7 p S37    -0.07692308  -0.09340659     0.8285714             1   -0.1956044
#> KRT7 p S38     0.50000000   1.00000000    -0.5000000            NA    1.0000000
#> INPPL1 p S890 -1.00000000   1.00000000     1.0000000            NA    1.0000000
#> KDM6A p S388  -1.00000000  -1.00000000     0.5000000            NA   -0.2000000
#> DIAPH1 p S373 -0.01818182   0.24545455     0.6642857            -1   -0.3916084
#> CTNND1 p S252  0.00000000  -0.19090909     0.7307692            NA    0.2517483
#>               CRYBG3 p T228 PRAG1 p T407 HIPK2 p T360; HIPK1 p T351
#> KRT7 p S37       0.08928571            1                         NA
#> KRT7 p S38      -1.00000000           NA                         NA
#> INPPL1 p S890    1.00000000           NA                         NA
#> KDM6A p S388    -0.40000000           NA                         NA
#> DIAPH1 p S373   -0.11538462           -1                         NA
#> CTNND1 p S252   -0.41208791            1                         NA
#>               ARHGAP12 p T230 ARHGAP12 p T231 GPRC5A p T315 UTP15 p T87
#> KRT7 p S37                 NA      -0.3714286     0.8095238          NA
#> KRT7 p S38                 NA       1.0000000            NA          NA
#> INPPL1 p S890              NA              NA            NA          NA
#> KDM6A p S388               NA              NA            NA          NA
#> DIAPH1 p S373               1      -0.4642857     0.6190476          NA
#> CTNND1 p S252               1      -0.2142857     0.5000000          NA
#>               CSRNP3 p T271 PIK3R3 p T203 DYRK4 p T263; DYRK2 p T381 EMG1 p T60
#> KRT7 p S37       -0.4965035            NA                         NA         -1
#> KRT7 p S38        1.0000000            NA                         NA         NA
#> INPPL1 p S890            NA            NA                         NA         NA
#> KDM6A p S388      1.0000000            NA                         NA         NA
#> DIAPH1 p S373     0.1833333            NA                         NA         -1
#> CTNND1 p S252     0.1363636            NA                         NA         -1
#>                LPP p T316 C11orf52 p T101 C11orf52 p T105 PDLIM5 p T248
#> KRT7 p S37    -0.35384615               1    -0.007142857            NA
#> KRT7 p S38    -0.50000000              NA    -1.000000000            NA
#> INPPL1 p S890          NA              NA     1.000000000            NA
#> KDM6A p S388   1.00000000              NA    -0.500000000            NA
#> DIAPH1 p S373 -0.52447552              -1    -0.192307692            NA
#> CTNND1 p S252 -0.06813187              NA     0.054945055            NA
#>               DCBLD2 p T734 CNN2 p T186 PKP4 p T477 PKP4 p T412 PKP4 p T1166
#> KRT7 p S37               NA          NA  -0.5076923          NA           -1
#> KRT7 p S38               NA          NA   0.5000000          NA           NA
#> INPPL1 p S890            NA          NA          NA          NA           NA
#> KDM6A p S388             NA          NA   0.5000000          NA           NA
#> DIAPH1 p S373            NA          NA  -0.4615385          NA           NA
#> CTNND1 p S252            NA          NA  -0.5879121          NA           -1
#>               PKP2 p T216 ESYT1 p T824 CDCP1 p T807 PLEKHA5 p T399 EML4 p T252
#> KRT7 p S37    -0.21428571          0.5          0.2              1         0.1
#> KRT7 p S38     1.00000000           NA           NA             NA          NA
#> INPPL1 p S890          NA           NA           NA             NA          NA
#> KDM6A p S388           NA         -1.0           NA             -1         1.0
#> DIAPH1 p S373  0.08333333         -0.5          0.2             NA        -0.9
#> CTNND1 p S252  0.26666667         -0.1          0.3             NA         0.2
#>               CDV3 p T182 ALK p T1506 ANKRD26 p T295 ICK p T157
#> KRT7 p S37             NA          NA             NA  0.2411765
#> KRT7 p S38             NA          NA             NA  1.0000000
#> INPPL1 p S890          NA          NA             NA -1.0000000
#> KDM6A p S388           NA          NA             NA  1.0000000
#> DIAPH1 p S373          NA          NA             NA  0.1032967
#> CTNND1 p S252          NA          NA             NA  0.1340659
#>               KRT8 p Y267; KRT75 p Y267; KRT8 p Y340; KRT75 p Y347; KRT8 p Y327; KRT75 p Y327
#> KRT7 p S37                                                                         -0.7205882
#> KRT7 p S38                                                                          0.5000000
#> INPPL1 p S890                                                                      -1.0000000
#> KDM6A p S388                                                                        0.8000000
#> DIAPH1 p S373                                                                      -0.6321429
#> CTNND1 p S252                                                                      -0.4000000
#>                KRT8 p Y10 KRT8 p Y25 KRT19 p Y391 KRT7 p Y205; KRT7 p Y246
#> KRT7 p S37    -0.66421569 -0.6495098   -0.4882353               -0.6715686
#> KRT7 p S38     0.50000000  0.5000000    1.0000000                0.5000000
#> INPPL1 p S890  1.00000000  1.0000000           NA                1.0000000
#> KDM6A p S388  -0.20000000 -0.4000000    1.0000000                0.4000000
#> DIAPH1 p S373  0.06071429 -0.5750000   -0.1285714               -0.7928571
#> CTNND1 p S252 -0.16428571 -0.5035714   -0.3250000               -0.4892857
#>               KRT7 p Y40 KRT7 p Y55 SH3PXD2B p Y25
#> KRT7 p S37     0.7352941 -0.2703297     -0.1428571
#> KRT7 p S38     0.5000000  1.0000000     -1.0000000
#> INPPL1 p S890  1.0000000  1.0000000             NA
#> KDM6A p S388  -0.4000000  0.2000000      1.0000000
#> DIAPH1 p S373  0.5642857 -0.3146853     -0.7000000
#> CTNND1 p S252  0.3142857 -0.2027972     -0.4000000
#>               PIPSL p Y89; PIP5K1C p Y136; PIP5K1A p Y142 ARHGAP32 p Y1520
#> KRT7 p S37                                     -0.7333333       -0.7087912
#> KRT7 p S38                                             NA               NA
#> INPPL1 p S890                                   1.0000000        1.0000000
#> KDM6A p S388                                   -0.2000000       -0.2000000
#> DIAPH1 p S373                                   0.2571429       -0.7272727
#> CTNND1 p S252                                   0.4857143       -0.3818182
#>               ARHGAP32 p Y1557 ARHGAP32 p Y1537 CYSRT1 p Y12 AJM1 p Y469
#> KRT7 p S37          -0.7892157       -0.4761905   -0.6985294  -0.7000000
#> KRT7 p S38          -0.5000000               NA    0.5000000   1.0000000
#> INPPL1 p S890        1.0000000        1.0000000    1.0000000  -1.0000000
#> KDM6A p S388         0.6000000        0.5000000    0.4000000   0.6000000
#> DIAPH1 p S373       -0.7964286       -0.8000000   -0.6642857  -0.8095238
#> CTNND1 p S252       -0.3928571        0.5000000   -0.5214286   0.1904762
#>               DDX39A p Y38; DDX39B p Y39 ACOT7 p Y194 AIP p Y202 AIP p Y203
#> KRT7 p S37                    -0.3714286    0.1758242 -0.5750000 -0.5750000
#> KRT7 p S38                            NA           NA  1.0000000  1.0000000
#> INPPL1 p S890                         NA   -1.0000000 -1.0000000 -1.0000000
#> KDM6A p S388                          NA   -0.4000000  0.4000000  0.4000000
#> DIAPH1 p S373                 -0.2571429    0.3212121 -0.7472527 -0.7472527
#> CTNND1 p S252                 -0.8000000    0.3212121 -0.5219780 -0.5219780
#>               ARVCF p Y201 WASL p Y256 PIK3R2 p Y505 DDX3X p Y69; DDX3Y p Y69
#> KRT7 p S37      -0.8461538   0.4313725          -0.8                0.5357143
#> KRT7 p S38              NA  -1.0000000            NA                       NA
#> INPPL1 p S890    1.0000000  -1.0000000            NA                1.0000000
#> KDM6A p S388    -0.4000000   0.4000000           1.0               -0.5000000
#> DIAPH1 p S373   -0.6000000   0.0000000            NA               -0.4000000
#> CTNND1 p S252   -0.6333333   0.3678571           1.0                0.8000000
#>               DDX3X p Y266; DDX3Y p Y264 PIK3C2B p Y1401 PIK3C2B p Y1541
#> KRT7 p S37                    -0.6470588     -0.35000000      -0.7857143
#> KRT7 p S38                     0.5000000              NA              NA
#> INPPL1 p S890                         NA     -1.00000000              NA
#> KDM6A p S388                  -1.0000000      0.40000000      -0.5000000
#> DIAPH1 p S373                 -0.6087912      0.08571429       0.7000000
#> CTNND1 p S252                 -0.2714286      0.02857143       0.7000000
#>               CLDN4 p Y208 ADAM10 p Y741  HGS p Y286 SEC16A p Y813
#> KRT7 p S37      -0.7058824     0.1593137 -0.39705882    -0.6527473
#> KRT7 p S38      -1.0000000     0.5000000 -0.50000000    -0.5000000
#> INPPL1 p S890    1.0000000    -1.0000000  1.00000000    -1.0000000
#> KDM6A p S388     0.8000000    -0.4000000 -0.20000000     0.5000000
#> DIAPH1 p S373   -0.4681319     0.2392857 -0.48214286    -0.6153846
#> CTNND1 p S252   -0.5648352     0.2785714 -0.01071429    -0.2197802
#>               SEC16A p Y1031 ZNF185 p Y581 MAPK13 p Y182 INPPL1 p Y671
#> KRT7 p S37       -0.01666667    -0.1428571    -0.1117647          -0.6
#> KRT7 p S38                NA            NA     1.0000000            NA
#> INPPL1 p S890     1.00000000            NA            NA          -1.0
#> KDM6A p S388     -1.00000000     0.5000000     0.6000000           0.5
#> DIAPH1 p S373     0.25714286    -0.8285714     0.2087912          -0.5
#> CTNND1 p S252     0.60000000    -0.2500000    -0.1357143           0.5
#>               INPPL1 p Y886 INPPL1 p Y1162 INPPL1 p Y986 INPPL1 p Y1135
#> KRT7 p S37      -0.39705882    -0.06617647            NA     -0.5090909
#> KRT7 p S38       0.50000000     1.00000000            NA             NA
#> INPPL1 p S890    1.00000000    -1.00000000            NA      1.0000000
#> KDM6A p S388     0.40000000     0.40000000            NA      0.4000000
#> DIAPH1 p S373   -0.01785714    -0.12857143            NA     -0.5666667
#> CTNND1 p S252   -0.19642857    -0.20714286            NA     -0.5833333
#>               TPD52L2 p Y106 EPB41L2 p Y623 ATP8B1 p Y1217 SPRY2 p Y55
#> KRT7 p S37        -0.2000000      0.4607143      0.4558824  -0.3666667
#> KRT7 p S38         1.0000000      1.0000000     -1.0000000          NA
#> INPPL1 p S890      1.0000000      1.0000000     -1.0000000   1.0000000
#> KDM6A p S388       0.8000000     -0.8000000     -0.8000000  -0.4000000
#> DIAPH1 p S373      0.1593407      0.3626374      0.2750000   0.8285714
#> CTNND1 p S252     -0.1703297      0.7912088      0.2857143   0.3142857
#>               SPRY1 p Y89 ENSA p Y64; ARPP19 p Y59 ENSA p Y70; ARPP19 p Y65
#> KRT7 p S37     -0.8296703              -0.16071429                       NA
#> KRT7 p S38      1.0000000               0.50000000                       NA
#> INPPL1 p S890   1.0000000              -1.00000000                       NA
#> KDM6A p S388   -0.4000000              -0.20000000                       NA
#> DIAPH1 p S373  -0.6923077              -0.31868132                       NA
#> CTNND1 p S252  -0.4727273              -0.02197802                       NA
#>               NUDT21 p Y40 SYNCRIP p Y373 SYNCRIP p Y205 BUB1B p Y404
#> KRT7 p S37       0.7833333     -0.6242424      0.3095238    0.5454545
#> KRT7 p S38              NA             NA             NA    1.0000000
#> INPPL1 p S890    1.0000000     -1.0000000      1.0000000    1.0000000
#> KDM6A p S388     0.0000000      0.4000000      0.0000000   -1.0000000
#> DIAPH1 p S373    0.8285714     -0.8095238     -0.1000000    0.7412587
#> CTNND1 p S252   -0.2571429     -0.4285714     -0.1000000    0.2848485
#>               CTNND1 p Y257 CTNND1 p Y280 CTNND1 p Y217 CTNND1 p Y228
#> KRT7 p S37      -0.05392157     0.5714286   -0.66363636     0.4313725
#> KRT7 p S38       1.00000000     1.0000000    1.00000000    -0.5000000
#> INPPL1 p S890    1.00000000     1.0000000            NA     1.0000000
#> KDM6A p S388     0.00000000    -1.0000000   -0.50000000     0.0000000
#> DIAPH1 p S373    0.22500000     0.9047619   -0.05454545     0.5750000
#> CTNND1 p S252    0.18571429     0.3928571   -0.02727273     0.4464286
#>               CTNND1 p Y213 CTNND1 p Y904 CTNND1 p Y335 CTNND1 p Y248
#> KRT7 p S37       -0.7363636    -0.7500000     0.1164835   -0.73039216
#> KRT7 p S38               NA     0.5000000     0.5000000    0.50000000
#> INPPL1 p S890     1.0000000     1.0000000            NA   -1.00000000
#> KDM6A p S388      1.0000000     0.0000000            NA    0.60000000
#> DIAPH1 p S373    -0.5666667    -0.5857143     0.5384615   -0.64285714
#> CTNND1 p S252    -0.4000000    -0.3071429    -0.3681319   -0.03928571
#>               TOM1 p Y386
#> KRT7 p S37     -0.5176471
#> KRT7 p S38     -0.5000000
#> INPPL1 p S890  -1.0000000
#> KDM6A p S388    1.0000000
#> DIAPH1 p S373  -0.6219780
#> CTNND1 p S252  -0.1560440
#>               LILRA1 p Y291; LILRA4 p Y289; LILRB2 p Y290; LILRB1 p Y291
#> KRT7 p S37                                                    0.86363636
#> KRT7 p S38                                                   -0.50000000
#> INPPL1 p S890                                                         NA
#> KDM6A p S388                                                          NA
#> DIAPH1 p S373                                                 0.01818182
#> CTNND1 p S252                                                 0.09790210
#>               FAM20B p Y138 FAM20B p Y141 WDR1 p Y238 ROCK2 p Y722 FLNB p Y2502
#> KRT7 p S37        0.2058824    0.02857143  -0.6107143   -0.1516484    0.6519608
#> KRT7 p S38       -0.5000000   -0.50000000   1.0000000   -0.5000000    0.5000000
#> INPPL1 p S890     1.0000000    1.00000000  -1.0000000    1.0000000    1.0000000
#> KDM6A p S388      0.2000000   -1.00000000   0.0000000    0.4000000   -0.2000000
#> DIAPH1 p S373    -0.3626374   -0.15934066  -0.6318681   -0.5734266    0.7035714
#> CTNND1 p S252     0.0989011    0.01648352  -0.5329670    0.1118881    0.4178571
#>               SPAG7 p Y189 TIPRL p Y209 BCAR3 p Y266 BCAR3 p Y117 BCAR3 p Y212
#> KRT7 p S37      0.42352941   -0.5857843    0.6740196    0.8470588   -0.4545455
#> KRT7 p S38     -1.00000000    0.5000000    0.5000000    0.5000000   -1.0000000
#> INPPL1 p S890  -1.00000000   -1.0000000    1.0000000   -1.0000000    1.0000000
#> KDM6A p S388   -0.40000000    0.6000000   -0.4000000    0.5000000    0.6000000
#> DIAPH1 p S373   0.03736264   -0.6964286    0.5571429    0.6747253   -0.8809524
#> CTNND1 p S252   0.47252747   -0.0750000    0.5357143    0.1692308   -0.3095238
#>               BCAR3 p Y42 FLOT1 p Y203 CPD p Y1344 CDKL5 p Y171  SCEL p Y58
#> KRT7 p S37      0.2272727  -0.11029412 -0.17575758           NA -0.07142857
#> KRT7 p S38             NA   0.50000000          NA           NA          NA
#> INPPL1 p S890          NA   1.00000000 -1.00000000           NA  1.00000000
#> KDM6A p S388   -0.4000000  -0.40000000  0.40000000           NA -1.00000000
#> DIAPH1 p S373   0.5272727   0.44285714 -0.82142857           NA -0.70000000
#> CTNND1 p S252  -0.2606061  -0.01428571  0.03571429           NA  0.50000000
#>               SCEL p Y295 SPDEF p Y329 MPZL1 p Y263 CLDN7 p Y210 ADGRL2 p Y1372
#> KRT7 p S37     -0.1151515   -0.4060606    0.4289216  -0.34285714      0.7186813
#> KRT7 p S38             NA   -1.0000000    0.5000000   0.50000000     -0.5000000
#> INPPL1 p S890   1.0000000   -1.0000000    1.0000000   1.00000000             NA
#> KDM6A p S388   -0.4000000    0.8000000   -0.4000000  -1.00000000      0.5000000
#> DIAPH1 p S373  -0.6428571   -0.8571429    0.4750000  -0.14835165      0.3901099
#> CTNND1 p S252  -0.3571429   -0.3571429    0.2214286  -0.04395604      0.1824176
#>               ADGRL2 p Y1406 SNAP29 p Y160 PTBP3 p Y127 CLDN1 p Y210
#> KRT7 p S37         0.2250000    -0.5252747   -0.7058824    0.5514706
#> KRT7 p S38         1.0000000    -1.0000000    0.5000000   -0.5000000
#> INPPL1 p S890      1.0000000     1.0000000   -1.0000000    1.0000000
#> KDM6A p S388      -0.4000000     0.2000000    0.6000000    0.8000000
#> DIAPH1 p S373      0.8516484    -0.9000000   -0.7785714    0.4392857
#> CTNND1 p S252      0.2692308    -0.4090909   -0.2857143    0.5214286
#>               LDHA p Y239 ABL1 p Y393; ABL2 p Y439 ABL1 p Y185 EGFR p Y869
#> KRT7 p S37     -0.4705882               -0.2909091 -0.09090909   0.5661765
#> KRT7 p S38     -0.5000000               -1.0000000          NA   0.5000000
#> INPPL1 p S890  -1.0000000               -1.0000000 -1.00000000   1.0000000
#> KDM6A p S388    0.8000000                0.4000000  1.00000000  -0.4000000
#> DIAPH1 p S373  -0.4464286               -0.8666667 -0.35714286   0.7785714
#> CTNND1 p S252  -0.3285714               -0.1166667 -0.50000000   0.5785714
#>               EGFR p Y1172 EGFR p Y1197 EGFR p Y1110
#> KRT7 p S37       0.2382353    0.2941176    0.6985294
#> KRT7 p S38       1.0000000    1.0000000    0.5000000
#> INPPL1 p S890           NA    1.0000000    1.0000000
#> KDM6A p S388     0.0000000   -0.4000000   -0.4000000
#> DIAPH1 p S373    0.4769231    0.5285714    0.5714286
#> CTNND1 p S252    0.2892857    0.4571429    0.5464286
#>               EGFR p Y727; ERBB4 p Y733; ERBB2 p Y735 EGFR p Y1092 PGK1 p Y196
#> KRT7 p S37                                 0.76190476    0.6868132  -0.5549451
#> KRT7 p S38                                -1.00000000    0.5000000  -1.0000000
#> INPPL1 p S890                                      NA           NA   1.0000000
#> KDM6A p S388                                       NA   -0.5000000   0.4000000
#> DIAPH1 p S373                              0.06666667    0.4909091  -0.8363636
#> CTNND1 p S252                              0.31666667    0.3681319  -0.5909091
#>               MBP p Y148 ALDOA p Y204; ALDOC p Y204  ALDOA p Y3 ALDOA p Y5
#> KRT7 p S37           0.0                 -0.8000000 -0.11785714 -0.4335664
#> KRT7 p S38            NA                  0.5000000  0.50000000         NA
#> INPPL1 p S890         NA                 -1.0000000          NA  1.0000000
#> KDM6A p S388          NA                  0.4000000  1.00000000  0.0000000
#> DIAPH1 p S373       -0.6                 -0.5296703  0.01538462 -0.3454545
#> CTNND1 p S252        1.0                 -0.2659341  0.16428571 -0.4545455
#>               ERBB2 p Y877 CAPNS1 p Y87 ATP1A1 p Y260 ATP1A1 p Y55
#> KRT7 p S37       0.1892857         -0.1    -0.4615385   -0.1862745
#> KRT7 p S38      -0.5000000           NA            NA   -0.5000000
#> INPPL1 p S890    1.0000000           NA            NA   -1.0000000
#> KDM6A p S388    -0.4000000          0.5     1.0000000    0.8000000
#> DIAPH1 p S373    0.2857143         -0.2    -0.7636364   -0.5071429
#> CTNND1 p S252    0.2362637          1.0    -0.2167832    0.1464286
#>               SLC25A5 p Y191 SLC25A5 p Y195 EIF2S1 p Y147 EIF2S1 p Y150
#> KRT7 p S37                 1      0.4285714            NA           1.0
#> KRT7 p S38                NA             NA            NA            NA
#> INPPL1 p S890             NA             NA            NA            NA
#> KDM6A p S388              NA     -0.5000000            NA           0.5
#> DIAPH1 p S373             NA      0.6000000            NA          -1.0
#> CTNND1 p S252              1      0.1000000            NA            NA
#>               RPLP0 p Y24; RPLP0P6 p Y24 ITGB1 p Y783 KRT18 p Y94 KRT18 p Y36
#> KRT7 p S37                    -0.5122549   0.30909091  -0.4989011  -0.5147059
#> KRT7 p S38                     0.5000000           NA  -1.0000000  -0.5000000
#> INPPL1 p S890                 -1.0000000  -1.00000000   1.0000000   1.0000000
#> KDM6A p S388                   0.4000000   0.80000000   0.8000000  -0.2000000
#> DIAPH1 p S373                 -0.4714286  -0.38095238  -0.4125874  -0.4285714
#> CTNND1 p S252                 -0.2857143  -0.02380952  -0.3356643  -0.5535714
#>               KRT18 p Y24 KRT18 p Y13 INSR p Y1185; IGF1R p Y1161
#> KRT7 p S37           -1.0  -0.7524510                         1.0
#> KRT7 p S38             NA   0.5000000                          NA
#> INPPL1 p S890          NA   1.0000000                          NA
#> KDM6A p S388           NA   0.0000000                          NA
#> DIAPH1 p S373        -0.8  -0.6107143                         1.0
#> CTNND1 p S252         0.2  -0.2857143                        -0.5
#>               INSR p Y1189; IGF1R p Y1165
#> KRT7 p S37                              1
#> KRT7 p S38                             NA
#> INPPL1 p S890                          NA
#> KDM6A p S388                           NA
#> DIAPH1 p S373                           1
#> CTNND1 p S252                          -1
#>               LCK p Y394; SRC p Y419; FYN p Y420; YES1 p Y426 LCK p Y192
#> KRT7 p S37                                          0.3750000  0.5000000
#> KRT7 p S38                                          0.5000000         NA
#> INPPL1 p S890                                       1.0000000 -1.0000000
#> KDM6A p S388                                       -0.2000000  0.4000000
#> DIAPH1 p S373                                       0.5500000  0.5428571
#> CTNND1 p S252                                       0.3214286  0.3142857
#>                FYN p Y28 FYN p Y185; FGR p Y180; YES1 p Y194
#> KRT7 p S37    -0.1190476                           0.7529412
#> KRT7 p S38     1.0000000                           1.0000000
#> INPPL1 p S890         NA                           1.0000000
#> KDM6A p S388          NA                           0.8000000
#> DIAPH1 p S373 -0.2666667                           0.5934066
#> CTNND1 p S252 -0.5333333                           0.5989011
#>               FYN p Y213; YES1 p Y222 FYN p Y214; YES1 p Y223
#> KRT7 p S37                  0.5934066                      NA
#> KRT7 p S38                  1.0000000                      NA
#> INPPL1 p S890                      NA                      NA
#> KDM6A p S388                0.5000000                      NA
#> DIAPH1 p S373               0.7087912                      NA
#> CTNND1 p S252               0.4265734                      NA
#>               CDK1 p Y15; CDK2 p Y15; CDK3 p Y15
#> KRT7 p S37                             0.9191176
#> KRT7 p S38                            -0.5000000
#> INPPL1 p S890                         -1.0000000
#> KDM6A p S388                           0.4000000
#> DIAPH1 p S373                          0.5892857
#> CTNND1 p S252                          0.4678571
#>               CDK1 p Y19; CDK2 p Y19; CDK3 p Y19
#> KRT7 p S37                             0.6441176
#> KRT7 p S38                            -0.5000000
#> INPPL1 p S890                                 NA
#> KDM6A p S388                          -1.0000000
#> DIAPH1 p S373                          0.4392857
#> CTNND1 p S252                          0.7250000
#>               ENO1 p Y44; ENO2 p Y44; ENO3 p Y44 ENO1 p Y189 ENO1 p Y287
#> KRT7 p S37                            -0.5909091 -0.06666667  -0.5735294
#> KRT7 p S38                                    NA          NA   1.0000000
#> INPPL1 p S890                         -1.0000000  1.00000000   1.0000000
#> KDM6A p S388                           0.5000000  0.20000000   0.0000000
#> DIAPH1 p S373                         -0.2833333  0.25714286  -0.5120879
#> CTNND1 p S252                         -0.5476190  0.71428571  -0.5780220
#>               LDHB p Y240 ANXA2 p Y30; ANXA2P2 p Y30 ANXA2 p Y24; ANXA2P2 p Y24
#> KRT7 p S37     -0.3054945                  0.5588235                  0.8058824
#> KRT7 p S38     -1.0000000                  0.5000000                 -0.5000000
#> INPPL1 p S890  -1.0000000                  1.0000000                         NA
#> KDM6A p S388    0.4000000                  0.4000000                 -0.2000000
#> DIAPH1 p S373  -0.6181818                  0.5692308                  0.4989011
#> CTNND1 p S252  -0.5454545                  0.2175824                  0.7285714
#>               ANXA2 p Y316; ANXA2P2 p Y316 ANXA2 p Y317; ANXA2P2 p Y317
#> KRT7 p S37                      -0.8186813                    0.2571429
#> KRT7 p S38                              NA                           NA
#> INPPL1 p S890                   -1.0000000                   -1.0000000
#> KDM6A p S388                    -0.5000000                    0.8000000
#> DIAPH1 p S373                   -0.6484848                    0.2000000
#> CTNND1 p S252                   -0.3454545                    0.5000000
#>               ANXA2 p Y238; ANXA2P2 p Y238 PFN1 p Y129 HSP90AA1 p Y627
#> KRT7 p S37                      0.76225490  -0.6225490       0.5000000
#> KRT7 p S38                     -0.50000000  -0.5000000      -0.5000000
#> INPPL1 p S890                   1.00000000  -1.0000000       1.0000000
#> KDM6A p S388                   -0.80000000   0.8000000       0.4000000
#> DIAPH1 p S373                   0.61428571  -0.6928571       0.1964286
#> CTNND1 p S252                   0.04642857  -0.3714286       0.5285714
#>               HSP90AA1 p Y492; HSP90AA5P p Y177
#> KRT7 p S37                           -0.6000000
#> KRT7 p S38                            1.0000000
#> INPPL1 p S890                         1.0000000
#> KDM6A p S388                          0.8000000
#> DIAPH1 p S373                        -0.4813187
#> CTNND1 p S252                        -0.4725275
#>               HSP90AA1 p Y61; HSP90AA2P p Y61; HSP90AB1 p Y56; HSP90AB3P p Y56; HSP90AB2P p Y56
#> KRT7 p S37                                                                            0.3946078
#> KRT7 p S38                                                                           -0.5000000
#> INPPL1 p S890                                                                         1.0000000
#> KDM6A p S388                                                                          0.8000000
#> DIAPH1 p S373                                                                        -0.2571429
#> CTNND1 p S252                                                                         0.3500000
#>               HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198
#> KRT7 p S37                                                              -0.4093137
#> KRT7 p S38                                                               0.5000000
#> INPPL1 p S890                                                           -1.0000000
#> KDM6A p S388                                                             1.0000000
#> DIAPH1 p S373                                                           -0.3321429
#> CTNND1 p S252                                                           -0.2892857
#>               LYN p Y194  LYN p Y32 LYN p Y397; HCK p Y411
#> KRT7 p S37     0.2392857  0.1607143              0.5980392
#> KRT7 p S38    -1.0000000  1.0000000              0.5000000
#> INPPL1 p S890  1.0000000         NA             -1.0000000
#> KDM6A p S388  -0.4000000 -0.5000000              0.6000000
#> DIAPH1 p S373  0.2727273  0.3582418              0.6678571
#> CTNND1 p S252  0.3286713  0.3178571              0.4000000
#>               HSP90AB1 p Y484; HSP90AB2P p Y260 MET p Y1234 SNRNP70 p Y126
#> KRT7 p S37                           -0.5357143  -0.3186813     -0.7549020
#> KRT7 p S38                           -0.5000000  -0.5000000      0.5000000
#> INPPL1 p S890                        -1.0000000  -1.0000000      1.0000000
#> KDM6A p S388                          0.2000000   0.5000000      0.4000000
#> DIAPH1 p S373                        -0.6208791  -0.5244755     -0.5642857
#> CTNND1 p S252                        -0.2087912   0.2587413     -0.6642857
#>               RPSA p Y156 HNRNPA1 p Y366 HNRNPA1 p Y341 HNRNPA1 p Y347
#> KRT7 p S37     -0.1636364     -0.4852941      0.1878788             NA
#> KRT7 p S38      1.0000000     -1.0000000     -1.0000000             NA
#> INPPL1 p S890  -1.0000000     -1.0000000     -1.0000000             NA
#> KDM6A p S388    0.4000000      0.4000000      0.2000000             NA
#> DIAPH1 p S373  -0.4333333     -0.3736264     -0.2857143             NA
#> CTNND1 p S252  -0.1666667     -0.5769231      0.1428571             NA
#>               CALM3 p Y100; CALM2 p Y100; CALM1 p Y100 ESD p Y202 EPB41 p Y660
#> KRT7 p S37                                  0.31127451 -0.3681319   -0.7647059
#> KRT7 p S38                                 -0.50000000  1.0000000    0.5000000
#> INPPL1 p S890                              -1.00000000 -1.0000000    1.0000000
#> KDM6A p S388                                0.20000000  1.0000000   -0.4000000
#> DIAPH1 p S373                              -0.18681319 -0.3575758   -0.5500000
#> CTNND1 p S252                               0.05054945 -0.2363636   -0.1178571
#>               UMPS p Y37 BCR p Y177 G6PD p Y202 G6PD p Y503 G6PD p Y507
#> KRT7 p S37    -0.6495098 -0.4285714  -0.5269608 -0.46071429  0.01538462
#> KRT7 p S38     0.5000000         NA   0.5000000  1.00000000  1.00000000
#> INPPL1 p S890 -1.0000000  1.0000000  -1.0000000  1.00000000  1.00000000
#> KDM6A p S388   0.2000000 -0.2000000   0.8000000  0.00000000  0.80000000
#> DIAPH1 p S373 -0.4214286 -0.4615385  -0.5071429  0.04175824  0.18881119
#> CTNND1 p S252 -0.4714286 -0.1958042  -0.4285714 -0.07142857 -0.34965035
#>               G6PD p Y401 PABPC1 p Y54; PABPC4 p Y54 ACTN1 p Y193  PKM p Y83
#> KRT7 p S37     -0.6446078                  0.6904762    0.2857143 -0.7676471
#> KRT7 p S38      0.5000000                         NA    1.0000000  1.0000000
#> INPPL1 p S890  -1.0000000                 -1.0000000           NA  1.0000000
#> KDM6A p S388    0.8000000                  0.0000000           NA -0.4000000
#> DIAPH1 p S373  -0.6250000                  0.3000000    0.2142857 -0.5032967
#> CTNND1 p S252  -0.2714286                 -0.1000000    0.3214286 -0.6747253
#>                PKM p Y105 SNRPN p Y15; SNRPB p Y15 GLUL p Y185 GLUL p Y180
#> KRT7 p S37    -0.29656863                0.1071429  -0.4909091  -0.2484848
#> KRT7 p S38     0.50000000                       NA  -1.0000000          NA
#> INPPL1 p S890  1.00000000               -1.0000000  -1.0000000  -1.0000000
#> KDM6A p S388  -0.40000000                1.0000000   0.8000000   1.0000000
#> DIAPH1 p S373  0.27857143               -0.4000000  -0.4642857  -0.8214286
#> CTNND1 p S252 -0.06785714               -0.8000000   0.2500000  -0.4285714
#>               AKR1B1 p Y49 AKR1B1 p Y190 EZR p Y270; MSN p Y270; RDX p Y270
#> KRT7 p S37      -0.1428571    -0.4857143                        -0.08391608
#> KRT7 p S38       1.0000000            NA                                 NA
#> INPPL1 p S890           NA            NA                        -1.00000000
#> KDM6A p S388            NA            NA                         0.40000000
#> DIAPH1 p S373    0.7166667    -0.3571429                        -0.11666667
#> CTNND1 p S252   -0.3666667    -0.7500000                        -0.56666667
#>               VAV1 p Y541 VAV1 p Y423 NQO1 p Y20    DSP p Y56  DSP p Y28
#> KRT7 p S37     -0.6166667        -0.2 -0.6573427 -0.353571429 -0.8392857
#> KRT7 p S38             NA          NA -1.0000000 -0.500000000  1.0000000
#> INPPL1 p S890  -1.0000000        -1.0  1.0000000           NA -1.0000000
#> KDM6A p S388    0.6000000         1.0  0.5000000  0.500000000  0.4000000
#> DIAPH1 p S373  -0.8857143        -1.0 -0.7818182 -0.520879121 -0.7472527
#> CTNND1 p S252  -0.2000000          NA -0.2121212 -0.006593407 -0.2087912
#>               MUC1 p Y1203 MUC1 p Y1212 MUC1 p Y1229 ITGB4 p Y1510 CBR1 p Y194
#> KRT7 p S37       0.2833333  -0.07142857   -0.7000000     0.6147059  0.21666667
#> KRT7 p S38              NA           NA           NA     0.5000000          NA
#> INPPL1 p S890    1.0000000           NA    1.0000000    -1.0000000 -1.00000000
#> KDM6A p S388    -0.2000000  -0.60000000    0.0000000     0.8000000  0.80000000
#> DIAPH1 p S373   -0.4285714  -0.40000000   -0.3714286     0.2923077  0.60000000
#> CTNND1 p S252    0.8857143   0.30000000    0.2571429     0.4021978 -0.02857143
#>               FER p Y714 GOT1 p Y381 CEBPB p Y139 DDX5 p Y59
#> KRT7 p S37    -0.1748252  0.20000000   -0.1000000         NA
#> KRT7 p S38     1.0000000          NA           NA         NA
#> INPPL1 p S890         NA  1.00000000           NA         NA
#> KDM6A p S388   0.4000000  0.80000000           NA         NA
#> DIAPH1 p S373 -0.5272727  0.02857143    0.7714286         NA
#> CTNND1 p S252  0.5454545  0.20000000   -0.2000000         NA
#>               DDX5 p Y202; DDX17 p Y279 DDX5 p Y442 RPL35A p Y34  VCL p Y822
#> KRT7 p S37                   -0.7500000         0.5    0.8461538 -0.08571429
#> KRT7 p S38                   -1.0000000          NA   -1.0000000          NA
#> INPPL1 p S890                -1.0000000          NA    1.0000000 -1.00000000
#> KDM6A p S388                  0.6000000          NA    0.5000000  0.50000000
#> DIAPH1 p S373                -0.8296703          NA    0.5909091  0.50000000
#> CTNND1 p S252                -0.6098901         0.5    0.4909091 -0.50000000
#>               PTPRA p Y798 PGAM1 p Y92; PGAM2 p Y92; PGAM4 p Y92 SDC1 p Y309
#> KRT7 p S37     0.666666667                            -0.5294118  0.07142857
#> KRT7 p S38     0.500000000                            -0.5000000          NA
#> INPPL1 p S890 -1.000000000                            -1.0000000  1.00000000
#> KDM6A p S388   0.400000000                             0.4000000  0.50000000
#> DIAPH1 p S373  0.846428571                            -0.6142857 -0.30000000
#> CTNND1 p S252  0.007142857                            -0.3285714  0.90000000
#>               PLCG1 p Y428 RASA1 p Y460 ENDOU p Y394 EPHA1 p Y781 ERBB3 p Y1307
#> KRT7 p S37       0.1166667  -0.03235294  -0.02857143    0.2176471    -0.1071429
#> KRT7 p S38              NA   1.00000000           NA    0.5000000            NA
#> INPPL1 p S890   -1.0000000   1.00000000           NA    1.0000000    -1.0000000
#> KDM6A p S388     0.4000000   0.60000000           NA   -0.4000000    -0.5000000
#> DIAPH1 p S373   -0.1428571  -0.02417582  -0.42857143    0.6483516    -0.6000000
#> CTNND1 p S252    0.1071429   0.51208791   0.25714286   -0.2417582    -0.6000000
#>               ERBB3 p Y1328 TGM2 p Y369 GART p Y348 HNRNPA2B1 p Y331
#> KRT7 p S37        0.5238095  0.02380952  -0.4833333      -0.29285714
#> KRT7 p S38        1.0000000  1.00000000          NA       1.00000000
#> INPPL1 p S890            NA          NA  -1.0000000       1.00000000
#> KDM6A p S388             NA          NA  -0.2000000       0.00000000
#> DIAPH1 p S373     0.1666667  0.81666667   0.2571429       0.03296703
#> CTNND1 p S252     0.8000000  0.06666667   0.7142857      -0.29670330
#>               HNRNPA2B1 p Y336 HNRNPA2B1 p Y347 HNRNPA2B1 p Y174 CBL p Y674
#> KRT7 p S37         -0.54395604               NA      -0.17142857 -0.2000000
#> KRT7 p S38          1.00000000               NA       1.00000000         NA
#> INPPL1 p S890      -1.00000000               NA      -1.00000000  1.0000000
#> KDM6A p S388       -0.80000000               NA       0.00000000 -0.2000000
#> DIAPH1 p S373      -0.18181818               NA      -0.56043956 -0.7714286
#> CTNND1 p S252       0.03636364               NA      -0.04945055 -0.3714286
#>               RPS3 p Y120 PTPRE p Y696 AHCY p Y193 CFL1 p Y140 ATP5PB p Y165
#> KRT7 p S37     0.08333333   -0.6519608   0.5714286  -0.3529412    -0.2909091
#> KRT7 p S38             NA    0.5000000          NA   0.5000000            NA
#> INPPL1 p S890  1.00000000   -1.0000000   1.0000000  -1.0000000    -1.0000000
#> KDM6A p S388   0.60000000    0.8000000   0.5000000   0.8000000     0.8000000
#> DIAPH1 p S373 -0.32142857   -0.4857143   0.7142857  -0.4142857    -0.5500000
#> CTNND1 p S252  0.50000000   -0.4714286   0.0000000  -0.2214286    -0.3000000
#>               PSMA2 p Y76 PSMA2 p Y57 DDX6 p Y313 PTBP1 p Y127 TARS p Y298
#> KRT7 p S37     -0.7098901  -0.6617647          -1   -0.6264706  -0.4926471
#> KRT7 p S38      0.5000000   0.5000000          NA    0.5000000   0.5000000
#> INPPL1 p S890  -1.0000000  -1.0000000          NA   -1.0000000  -1.0000000
#> KDM6A p S388    0.5000000   0.4000000          -1    0.2000000   0.8000000
#> DIAPH1 p S373  -0.6153846  -0.7392857          NA   -0.6483516  -0.5678571
#> CTNND1 p S252  -0.2797203  -0.1678571          NA   -0.2615385  -0.4750000
#>               VARS p Y469 MAPK3 p Y204 PIK3R1 p Y467 PSMB5 p Y220 MAPK1 p Y187
#> KRT7 p S37            0.1    0.2439560    -0.6323529    0.3454545  -0.03431373
#> KRT7 p S38             NA   -1.0000000     0.5000000           NA   0.50000000
#> INPPL1 p S890          NA   -1.0000000     1.0000000   -1.0000000  -1.00000000
#> KDM6A p S388          1.0    0.0000000     0.8000000    0.4000000   0.60000000
#> DIAPH1 p S373         0.3    0.4195804    -0.5964286   -0.2142857   0.01785714
#> CTNND1 p S252        -0.5    0.5244755    -0.3214286   -0.4285714   0.44642857
#>               PTPRK p Y916; PTPRM p Y929 EPHA2 p Y960 EPHA2 p Y575 EPHA2 p Y588
#> KRT7 p S37                     0.7178571   -0.6071429  -0.05392157          0.3
#> KRT7 p S38                     0.5000000    1.0000000   1.00000000          1.0
#> INPPL1 p S890                         NA   -1.0000000   1.00000000           NA
#> KDM6A p S388                  -1.0000000           NA  -0.80000000           NA
#> DIAPH1 p S373                  0.6835165   -0.1000000   0.37142857          0.8
#> CTNND1 p S252                  0.5107143   -0.1000000   0.08928571          0.2
#>               EPHA2 p Y594 EPHA2 p Y772
#> KRT7 p S37       0.5439560   0.11274510
#> KRT7 p S38       1.0000000   1.00000000
#> INPPL1 p S890   -1.0000000   1.00000000
#> KDM6A p S388     0.5000000  -0.80000000
#> DIAPH1 p S373    0.4010989   0.60000000
#> CTNND1 p S252    0.5818182  -0.06785714
#>               EPHA3 p Y779; EPHA4 p Y779; EPHA5 p Y833 EPHB2 p Y780
#> KRT7 p S37                                 -0.52727273   0.11904762
#> KRT7 p S38                                  1.00000000  -1.00000000
#> INPPL1 p S890                               1.00000000           NA
#> KDM6A p S388                                0.50000000           NA
#> DIAPH1 p S373                               0.01666667  -0.45000000
#> CTNND1 p S252                              -0.12727273  -0.06666667
#>               PTPN6 p Y536 PTPN6 p Y564 SHC1 p Y427 SHC1 p Y315 TYK2 p Y292
#> KRT7 p S37       0.5428571   -0.4387255  -0.6088235        -0.8  0.13529412
#> KRT7 p S38       1.0000000   -0.5000000  -1.0000000          NA  0.50000000
#> INPPL1 p S890           NA   -1.0000000  -1.0000000          NA -1.00000000
#> KDM6A p S388     0.2000000   -0.4000000   0.8000000          NA  0.80000000
#> DIAPH1 p S373    0.4230769   -0.5857143  -0.4901099         1.0 -0.29230769
#> CTNND1 p S252    0.6395604   -0.1821429  -0.3626374        -0.8 -0.06373626
#>               ERP29 p Y66 AXL p Y866 SDC4 p Y197 ATIC p Y104 HNRNPH3 p Y296
#> KRT7 p S37     0.32598039  0.1190476   0.1030303   0.4333333     0.38461538
#> KRT7 p S38    -1.00000000  1.0000000          NA          NA    -1.00000000
#> INPPL1 p S890  1.00000000         NA   1.0000000  -1.0000000     1.00000000
#> KDM6A p S388  -0.60000000         NA   0.8000000   0.4000000     0.40000000
#> DIAPH1 p S373  0.05054945 -0.1333333   0.0000000   0.7714286    -0.09090909
#> CTNND1 p S252  0.33626374  0.3333333  -0.2857143   0.2571429    -0.02727273
#>               S100A11 p Y30 CDH5 p Y685 HSPA4 p Y336
#> KRT7 p S37       -0.6558824   0.1333333  -0.58041958
#> KRT7 p S38        0.5000000   1.0000000   1.00000000
#> INPPL1 p S890     1.0000000          NA   1.00000000
#> KDM6A p S388      0.4000000          NA  -0.50000000
#> DIAPH1 p S373    -0.7934066  -0.1190476  -0.49650350
#> CTNND1 p S252    -0.3626374   0.2500000  -0.06666667
#>               CTNNA1 p Y419; CTNNA2 p Y417 IRS1 p Y941 IRS1 p Y989 IRS1 p Y612
#> KRT7 p S37                      -0.3986014  -0.2969697  -0.1515152 -0.65000000
#> KRT7 p S38                              NA          NA          NA  1.00000000
#> INPPL1 p S890                    1.0000000  -1.0000000   1.0000000          NA
#> KDM6A p S388                     0.2000000   0.4000000   0.4000000 -0.50000000
#> DIAPH1 p S373                    0.0500000  -0.8214286  -0.7857143 -0.28571429
#> CTNND1 p S252                    0.0500000  -0.2857143  -0.3214286 -0.08333333
#>               IRS1 p Y632 IRS1 p Y46 AGL p Y584 MYH9 p Y754 MYH9 p Y1408
#> KRT7 p S37     -0.7622378 -0.4909091 -0.3146853  0.60000000   -0.6838235
#> KRT7 p S38      1.0000000 -1.0000000 -0.5000000          NA    0.5000000
#> INPPL1 p S890  -1.0000000  1.0000000 -1.0000000 -1.00000000   -1.0000000
#> KDM6A p S388    0.6000000  0.8000000  1.0000000  0.40000000    0.2000000
#> DIAPH1 p S373  -0.7166667 -0.8809524 -0.9000000 -0.25714286   -0.3758242
#> CTNND1 p S252  -0.1000000 -0.4523810  0.1000000 -0.02857143   -0.4989011
#>               MYH9 p Y1805 COPB2 p Y101 NUDT1 p Y48 GMPR p Y318; GMPR2 p Y318
#> KRT7 p S37      -0.4676471    0.2571429   0.4857143                        NA
#> KRT7 p S38      -1.0000000           NA          NA                        NA
#> INPPL1 p S890   -1.0000000           NA          NA                        NA
#> KDM6A p S388     0.8000000   -1.0000000   1.0000000                        NA
#> DIAPH1 p S373   -0.3978022    0.4000000  -0.8000000                        NA
#> CTNND1 p S252   -0.3670330    0.5428571   0.8000000                        NA
#>               TAGLN2 p Y192; TAGLN3 p Y192 TAGLN2 p Y8 RBMX p Y335 IL6ST p Y905
#> KRT7 p S37                      -0.6823529   0.5294118  -0.6642157    0.7054945
#> KRT7 p S38                       1.0000000   1.0000000   0.5000000    0.5000000
#> INPPL1 p S890                   -1.0000000  -1.0000000   1.0000000           NA
#> KDM6A p S388                    -0.2000000   0.4000000  -0.8000000   -1.0000000
#> DIAPH1 p S373                   -0.7142857   0.3392857  -0.4857143    0.3736264
#> CTNND1 p S252                   -0.4109890   0.4593407  -0.4357143    0.6607143
#>               CEACAM3 p Y241 CEACAM3 p Y230 STAT3 p Y705
#> KRT7 p S37        -0.6833333      0.6071429   -0.5931373
#> KRT7 p S38                NA             NA    0.5000000
#> INPPL1 p S890      1.0000000     -1.0000000   -1.0000000
#> KDM6A p S388       0.0000000     -0.2000000    0.4000000
#> DIAPH1 p S373     -0.3714286      0.0000000   -0.6714286
#> CTNND1 p S252      0.5428571     -0.2000000   -0.1250000
#>               NAA10 p Y106; NAA11 p Y106 EIF1 p Y30; EIF1B p Y30 PI4KA p Y1154
#> KRT7 p S37                    -0.3986014              -0.6993007    -0.6102941
#> KRT7 p S38                    -1.0000000                      NA     0.5000000
#> INPPL1 p S890                 -1.0000000              -1.0000000     1.0000000
#> KDM6A p S388                   0.4000000              -0.5000000     0.2000000
#> DIAPH1 p S373                 -0.5500000              -0.6166667    -0.5250000
#> CTNND1 p S252                 -0.4833333              -0.6000000    -0.3285714
#>               TEC p Y519  FRK p Y46 FRK p Y497 FRK p Y387 SYK p Y203 SYK p Y296
#> KRT7 p S37     0.6299020 -0.4019608 -0.6421569 -0.7205882  0.6000000 -0.2428571
#> KRT7 p S38     0.5000000 -0.5000000  0.5000000  0.5000000         NA  0.5000000
#> INPPL1 p S890  1.0000000  1.0000000  1.0000000  1.0000000 -1.0000000 -1.0000000
#> KDM6A p S388   0.8000000 -0.8000000  0.4000000  0.8000000  0.2000000  1.0000000
#> DIAPH1 p S373  0.7571429 -0.5714286 -0.3500000 -0.6035714 -0.4285714 -0.5604396
#> CTNND1 p S252  0.3178571 -0.2857143 -0.5142857 -0.5892857  0.7714286 -0.1648352
#>               MAPK8 p Y185; MAPK10 p Y223 MAPK9 p Y185 CRK p Y136 CRK p Y251
#> KRT7 p S37                     0.60439560   0.23774510 -0.6879121 -0.2363636
#> KRT7 p S38                     1.00000000   1.00000000 -1.0000000         NA
#> INPPL1 p S890                 -1.00000000  -1.00000000 -1.0000000  1.0000000
#> KDM6A p S388                   0.50000000  -0.40000000  1.0000000 -0.2000000
#> DIAPH1 p S373                  0.60909091   0.45000000 -0.6153846 -0.7857143
#> CTNND1 p S252                 -0.06363636   0.08571429 -0.5664336 -0.3928571
#>               CRKL p Y251 RPS10 p Y12 IQGAP1 p Y1510 PLA2G4A p Y535 QARS p Y491
#> KRT7 p S37      0.4705882  -0.3681319      0.2857143      0.3090909   0.0500000
#> KRT7 p S38     -0.5000000          NA             NA             NA          NA
#> INPPL1 p S890  -1.0000000  -1.0000000     -1.0000000      1.0000000   1.0000000
#> KDM6A p S388    1.0000000  -0.4000000      0.2000000      0.4000000   0.4000000
#> DIAPH1 p S373   0.6214286  -0.3181818     -0.8000000      0.3214286   0.4857143
#> CTNND1 p S252   0.2000000  -0.5272727      0.6000000     -0.4285714   0.3142857
#>               PITPNB p Y91; PITPNA p Y91 PITPNB p Y93; PITPNA p Y93  PXN p Y88
#> KRT7 p S37                   -0.31666667                -0.31666667  0.7254902
#> KRT7 p S38                            NA                         NA -0.5000000
#> INPPL1 p S890                -1.00000000                -1.00000000 -1.0000000
#> KDM6A p S388                  0.20000000                 0.20000000  0.4000000
#> DIAPH1 p S373                 0.08571429                 0.08571429  0.5785714
#> CTNND1 p S252                 0.48571429                 0.48571429  0.6392857
#>               PXN p Y118 PCYT1A p Y213; PCYT1B p Y213 PSMB2 p Y146 PSMB2 p Y147
#> KRT7 p S37     0.9044118                   -0.4545455  -0.36764706  -0.36764706
#> KRT7 p S38    -0.5000000                           NA  -1.00000000  -1.00000000
#> INPPL1 p S890 -1.0000000                    1.0000000   1.00000000   1.00000000
#> KDM6A p S388   0.4000000                    0.4000000  -0.40000000  -0.40000000
#> DIAPH1 p S373  0.5250000                   -0.8181818  -0.38571429  -0.38571429
#> CTNND1 p S252  0.4535714                   -0.7575758   0.07692308   0.07692308
#>               GSK3B p Y216; GSK3A p Y279 GMPS p Y526 CRIP1 p Y12  EMD p Y161
#> KRT7 p S37                    -0.1642157          NA  -0.7083333 -0.26764706
#> KRT7 p S38                     1.0000000          NA   0.5000000  1.00000000
#> INPPL1 p S890                  1.0000000          NA  -1.0000000  1.00000000
#> KDM6A p S388                   0.8000000          NA   0.8000000  0.40000000
#> DIAPH1 p S373                 -0.1928571          NA  -0.4857143 -0.12527473
#> CTNND1 p S252                 -0.2821429          NA  -0.4107143 -0.01978022
#>               VASP p Y39 DNM2 p Y231; DNM1 p Y231 CCT8 p Y30 ANXA11 p Y482
#> KRT7 p S37           0.6               -0.7714286 -0.3956044          -0.4
#> KRT7 p S38            NA                       NA -1.0000000            NA
#> INPPL1 p S890         NA                       NA  1.0000000            NA
#> KDM6A p S388         1.0               -1.0000000  0.8000000           1.0
#> DIAPH1 p S373       -0.2                0.2000000 -0.6606061           0.5
#> CTNND1 p S252        0.4               -0.5000000 -0.5393939           0.2
#>               RAB13 p Y5 HNRNPA3 p Y360 HNRNPM p Y64 ARHGDIA p Y133
#> KRT7 p S37    -0.2500000     -0.5464286   0.14215686    -0.07272727
#> KRT7 p S38            NA     -1.0000000   0.50000000    -1.00000000
#> INPPL1 p S890 -1.0000000      1.0000000  -1.00000000    -1.00000000
#> KDM6A p S388   0.5000000     -0.4000000   0.40000000     0.40000000
#> DIAPH1 p S373 -0.7714286     -0.5549451  -0.14642857    -0.56666667
#> CTNND1 p S252 -0.2000000     -0.2197802  -0.06785714    -0.03333333
#>               EFNB2 p Y304 CRIP2 p Y13 CRIP2 p Y134 ACLY p Y682 COPA p Y249
#> KRT7 p S37      -0.7303922   0.1190476  -0.39860140  -0.6593407  -0.2727273
#> KRT7 p S38       0.5000000          NA   1.00000000   1.0000000          NA
#> INPPL1 p S890    1.0000000          NA  -1.00000000  -1.0000000          NA
#> KDM6A p S388     0.4000000   0.5000000   0.80000000   1.0000000  -0.5000000
#> DIAPH1 p S373   -0.3571429   0.3928571  -0.48333333  -0.5034965  -0.6666667
#> CTNND1 p S252   -0.5250000   0.5000000  -0.03333333  -0.8272727  -0.3333333
#>               CLTCL1 p Y1096; CLTC p Y1096 MAPK12 p Y185 PTTG1IP p Y174
#> KRT7 p S37                      -0.4928571    -0.1421569     -0.8137255
#> KRT7 p S38                      -1.0000000     0.5000000      0.5000000
#> INPPL1 p S890                   -1.0000000     1.0000000      1.0000000
#> KDM6A p S388                     0.4000000    -0.2000000     -0.4000000
#> DIAPH1 p S373                   -0.6098901    -0.1892857     -0.5071429
#> CTNND1 p S252                   -0.6483516     0.1785714     -0.3250000
#>               RARS p Y291 PRKAG1 p Y39 EPHB4 p Y574  AK2 p Y12 FGF8 p Y72
#> KRT7 p S37     -0.7857143   -0.1428571  -0.08391608 -0.2857143         NA
#> KRT7 p S38             NA           NA           NA         NA         NA
#> INPPL1 p S890  -1.0000000    1.0000000           NA         NA         NA
#> KDM6A p S388    0.4000000    0.4000000  -1.00000000         NA         NA
#> DIAPH1 p S373   0.4000000    0.8000000   0.36363636 -0.7714286         NA
#> CTNND1 p S252  -0.2000000    0.5000000  -0.03636364  0.2142857         NA
#>               FGF8 p Y75 AFDN p Y1230 EIF3B p Y525 EIF3B p Y339 BCAR1 p Y128
#> KRT7 p S37     0.5804196   -0.7176471   -0.4965035   -0.7380952    0.5934066
#> KRT7 p S38     0.5000000    0.5000000           NA    1.0000000    0.5000000
#> INPPL1 p S890         NA    1.0000000           NA           NA           NA
#> KDM6A p S388  -1.0000000    0.0000000    1.0000000           NA           NA
#> DIAPH1 p S373  0.8303030   -0.3406593   -0.4787879   -0.6000000    0.7527473
#> CTNND1 p S252  0.3939394   -0.2571429   -0.4615385   -0.3095238    0.2571429
#>               BCAR1 p Y306 BCAR1 p Y249 BCAR1 p Y387 BCAR1 p Y234 BCAR1 p Y410
#> KRT7 p S37       0.8545455    0.5612745    0.6964286    0.7294118    0.6923077
#> KRT7 p S38       1.0000000    0.5000000    0.5000000    0.5000000    1.0000000
#> INPPL1 p S890   -1.0000000    1.0000000    1.0000000   -1.0000000    1.0000000
#> KDM6A p S388    -1.0000000    0.0000000   -0.5000000    1.0000000    1.0000000
#> DIAPH1 p S373    0.5333333    0.6500000    0.5076923    0.7967033    0.7272727
#> CTNND1 p S252    0.3939394    0.4928571    0.4373626    0.3076923    0.3272727
#>               GSDMD p Y158
#> KRT7 p S37      -0.6691176
#> KRT7 p S38       0.5000000
#> INPPL1 p S890   -1.0000000
#> KDM6A p S388     0.0000000
#> DIAPH1 p S373   -0.6107143
#> CTNND1 p S252   -0.3392857
#>               ACTG1 p Y53; ACTB p Y53; ACTA1 p Y55; ACTC1 p Y55; ACTG2 p Y54; ACTA2 p Y55
#> KRT7 p S37                                                                     0.25000000
#> KRT7 p S38                                                                     0.50000000
#> INPPL1 p S890                                                                  1.00000000
#> KDM6A p S388                                                                   0.20000000
#> DIAPH1 p S373                                                                 -0.12857143
#> CTNND1 p S252                                                                  0.09642857
#>               ACTG1 p Y198; ACTB p Y198 ACTG1 p Y294; ACTB p Y294
#> KRT7 p S37                   -0.6200980                -0.6978022
#> KRT7 p S38                    0.5000000                 1.0000000
#> INPPL1 p S890                 1.0000000                        NA
#> KDM6A p S388                  1.0000000                 1.0000000
#> DIAPH1 p S373                -0.6464286                -0.4265734
#> CTNND1 p S252                -0.2714286                -0.5034965
#>               EIF4A1 p Y70; EIF4A2 p Y71 EIF4A1 p Y250; EIF4A2 p Y251
#> KRT7 p S37                    -0.6833333                   0.45000000
#> KRT7 p S38                            NA                           NA
#> INPPL1 p S890                 -1.0000000                  -1.00000000
#> KDM6A p S388                  -0.4000000                  -0.80000000
#> DIAPH1 p S373                  0.2000000                   0.60000000
#> CTNND1 p S252                 -0.1428571                  -0.08571429
#>               S100A10 p Y25 RPL15 p Y59 MAGOH p Y40; MAGOHB p Y42 HNRNPK p Y380
#> KRT7 p S37       -0.4395604  0.30909091               -0.07142857    0.30549451
#> KRT7 p S38       -1.0000000          NA                        NA    1.00000000
#> INPPL1 p S890    -1.0000000  1.00000000                        NA            NA
#> KDM6A p S388      0.8000000  0.40000000                0.50000000    0.50000000
#> DIAPH1 p S373    -0.7212121 -0.03571429                0.60000000   -0.10439560
#> CTNND1 p S252    -0.5393939 -0.50000000                0.42857143   -0.04395604
#>               PPP1CA p Y306 PPP1CB p Y306 YWHAE p Y131 RAN p Y147 RAN p Y155
#> KRT7 p S37        0.6529412    -0.5647059   -0.3846154  0.4500000 -0.5757576
#> KRT7 p S38        1.0000000    -1.0000000   -1.0000000         NA -1.0000000
#> INPPL1 p S890     1.0000000    -1.0000000    1.0000000  1.0000000         NA
#> KDM6A p S388     -0.2000000     0.4000000    0.4000000  0.0000000  1.0000000
#> DIAPH1 p S373     0.6571429    -0.5549451   -0.4424242 -0.7142857 -0.2833333
#> CTNND1 p S252     0.2571429    -0.4010989   -0.3818182 -0.4857143 -0.5333333
#>               GNB2 p Y59; GNB1 p Y59 GRB2 p Y209 TRA2B p Y260
#> KRT7 p S37                -0.6904762  -0.4500000    0.5166667
#> KRT7 p S38                        NA          NA           NA
#> INPPL1 p S890                     NA   1.0000000   -1.0000000
#> KDM6A p S388               0.5000000   0.6000000    0.2000000
#> DIAPH1 p S373             -0.8857143  -0.7380952   -0.3714286
#> CTNND1 p S252              0.4857143  -0.4285714   -0.4857143
#>               GNAS p Y339; GNAS p Y982 YWHAZ p Y128 DYNLL1 p Y65; DYNLL2 p Y65
#> KRT7 p S37                  -0.7818182  -0.60139860                 -0.6519608
#> KRT7 p S38                          NA   1.00000000                  0.5000000
#> INPPL1 p S890                       NA  -1.00000000                 -1.0000000
#> KDM6A p S388                -0.5000000   0.40000000                  0.4000000
#> DIAPH1 p S373               -0.6666667  -0.70909091                 -0.6142857
#> CTNND1 p S252               -0.3333333   0.03030303                 -0.4750000
#>               RPS21 p Y53 RACK1 p Y52 RACK1 p Y228
#> KRT7 p S37     -0.7181818  -0.2380952   -0.7714286
#> KRT7 p S38             NA   1.0000000    1.0000000
#> INPPL1 p S890   1.0000000          NA    1.0000000
#> KDM6A p S388    1.0000000          NA           NA
#> DIAPH1 p S373  -0.6500000   0.3142857   -0.4857143
#> CTNND1 p S252  -0.4500000   0.3809524    0.6000000
#>               EEF1A1 p Y141; EEF1A1P5 p Y141; EEF1A2 p Y141
#> KRT7 p S37                                       -0.5357143
#> KRT7 p S38                                        1.0000000
#> INPPL1 p S890                                     1.0000000
#> KDM6A p S388                                     -0.4000000
#> DIAPH1 p S373                                    -0.4835165
#> CTNND1 p S252                                    -0.3296703
#>               EEF1A1 p Y177; EEF1A1P5 p Y177
#> KRT7 p S37                        -0.6000000
#> KRT7 p S38                                NA
#> INPPL1 p S890                     -1.0000000
#> KDM6A p S388                       0.5000000
#> DIAPH1 p S373                     -0.7696970
#> CTNND1 p S252                     -0.1190476
#>               EEF1A1 p Y29; EEF1A1P5 p Y29; EEF1A2 p Y29
#> KRT7 p S37                                    -0.6666667
#> KRT7 p S38                                     0.5000000
#> INPPL1 p S890                                 -1.0000000
#> KDM6A p S388                                   1.0000000
#> DIAPH1 p S373                                 -0.6750000
#> CTNND1 p S252                                 -0.2642857
#>               TUBA1B p Y103; TUBA4A p Y103; TUBA1C p Y103
#> KRT7 p S37                                     -0.7107143
#> KRT7 p S38                                     -1.0000000
#> INPPL1 p S890                                   1.0000000
#> KDM6A p S388                                   -0.5000000
#> DIAPH1 p S373                                  -0.7032967
#> CTNND1 p S252                                  -0.4340659
#>               TUBA1B p Y312; TUBAL3 p Y319; TUBA4A p Y312; TUBA1C p Y312
#> KRT7 p S37                                                    -0.7626374
#> KRT7 p S38                                                    -1.0000000
#> INPPL1 p S890                                                  1.0000000
#> KDM6A p S388                                                  -0.4000000
#> DIAPH1 p S373                                                 -0.4895105
#> CTNND1 p S252                                                 -0.4405594
#>               SIRPA p Y496 SHC2 p Y414 HDLBP p Y437  CDK5 p Y15
#> KRT7 p S37       0.7619048         0.9   -0.5073529 -0.26960784
#> KRT7 p S38       1.0000000          NA    0.5000000  0.50000000
#> INPPL1 p S890           NA          NA    1.0000000  1.00000000
#> KDM6A p S388            NA         1.0    0.2000000  0.60000000
#> DIAPH1 p S373    0.1500000         0.5   -0.4892857 -0.11071429
#> CTNND1 p S252    0.5333333        -0.5   -0.2428571 -0.09285714
#>               CDK16 p Y176; CDK17 p Y203 CLTC p Y634 CLTC p Y1438 NFKB2 p Y77
#> KRT7 p S37                     0.7323529  0.26666667   -0.7142857  -0.6263736
#> KRT7 p S38                     0.5000000          NA           NA  -1.0000000
#> INPPL1 p S890                  1.0000000  1.00000000   -1.0000000   1.0000000
#> KDM6A p S388                  -0.5000000 -0.40000000    0.4000000  -0.2000000
#> DIAPH1 p S373                  0.6219780  0.77142857   -0.4000000  -0.8424242
#> CTNND1 p S252                  0.3362637 -0.08571429    1.0000000  -0.2848485
#>               SPTBN1 p Y1680; SPTBN2 p Y1676 TIAL1 p Y140 FABP5 p Y131
#> KRT7 p S37                        -0.4235294    0.8095238   0.07142857
#> KRT7 p S38                        -0.5000000           NA           NA
#> INPPL1 p S890                      1.0000000   -1.0000000           NA
#> KDM6A p S388                       0.0000000    0.5000000   1.00000000
#> DIAPH1 p S373                     -0.6879121    0.2000000   0.50000000
#> CTNND1 p S252                     -0.2703297   -0.6000000   0.88571429
#>               DSC2 p Y839 NUCB1 p Y179 CAV1 p Y14 SSBP1 p Y99 MST1R p Y1238
#> KRT7 p S37     -0.2380952  -0.05882353  0.3500000  -0.3494505     0.2142857
#> KRT7 p S38             NA  -0.50000000  1.0000000   0.5000000     1.0000000
#> INPPL1 p S890   1.0000000           NA         NA  -1.0000000            NA
#> KDM6A p S388   -0.8000000   0.50000000         NA   0.8000000            NA
#> DIAPH1 p S373   0.4000000  -0.31785714  0.6363636  -0.5104895     0.4523810
#> CTNND1 p S252   0.9000000   0.06785714  0.1393939  -0.2307692    -0.2380952
#>               PTK2 p Y861 PTK2 p Y925 PTK2 p Y397 PTK2 p Y570 PTK2 p Y576
#> KRT7 p S37     0.01098901   0.3480392  0.07692308  -0.5122549   0.7549020
#> KRT7 p S38     0.50000000   0.5000000  0.50000000   1.0000000   0.5000000
#> INPPL1 p S890  1.00000000   1.0000000          NA  -1.0000000  -1.0000000
#> KDM6A p S388   0.80000000   0.0000000  1.00000000   0.2000000   0.0000000
#> DIAPH1 p S373  0.09090909   0.3714286 -0.15164835  -0.1035714   0.6214286
#> CTNND1 p S252 -0.20000000   0.2263736  0.12637363  -0.3107143   0.3607143
#>               PTK2 p Y577 PRKCD p Y630 PRKCD p Y374 PRKCD p Y334 PRKCD p Y313
#> KRT7 p S37     0.20833333   -0.3000000    0.5357143    0.6029412    0.7676471
#> KRT7 p S38    -1.00000000           NA    1.0000000    0.5000000    0.5000000
#> INPPL1 p S890  1.00000000           NA           NA    1.0000000    1.0000000
#> KDM6A p S388  -0.20000000           NA           NA   -0.8000000   -0.5000000
#> DIAPH1 p S373 -0.16428571   -0.3714286    0.6000000    0.4928571    0.5648352
#> CTNND1 p S252  0.06428571   -0.6000000    0.6000000    0.5285714    0.3571429
#>               PTPN11 p Y546 PTPN11 p Y62 PTPN11 p Y584 PTPN11 p Y279
#> KRT7 p S37       -0.6102941   0.53406593  -0.602941176    -0.7264706
#> KRT7 p S38       -0.5000000   0.50000000   0.500000000    -1.0000000
#> INPPL1 p S890     1.0000000   1.00000000  -1.000000000     1.0000000
#> KDM6A p S388      0.4000000  -1.00000000   0.400000000     0.4000000
#> DIAPH1 p S373    -0.5678571   0.70549451  -0.525274725    -0.5956044
#> CTNND1 p S252    -0.2642857  -0.05594406  -0.006593407    -0.5164835
#>               GFPT1 p Y553 APLP2 p Y755 ZNF33B p Y595; ZNF33A p Y594
#> KRT7 p S37     -0.03030303    0.5238095                   -0.5833333
#> KRT7 p S38              NA           NA                           NA
#> INPPL1 p S890  -1.00000000   -1.0000000                    1.0000000
#> KDM6A p S388    1.00000000    0.5000000                   -0.4000000
#> DIAPH1 p S373  -0.28571429   -0.1000000                   -0.8285714
#> CTNND1 p S252   0.03571429   -0.5000000                    0.3142857
#>               PRDX1 p Y194 TJP1 p Y1524 TJP1 p Y1061 SOS1 p Y681 SOS2 p Y679
#> KRT7 p S37      -0.3916084    0.2606061  -0.06666667        -0.9          -1
#> KRT7 p S38      -1.0000000           NA           NA          NA          NA
#> INPPL1 p S890    1.0000000           NA   1.00000000          NA          NA
#> KDM6A p S388    -0.2000000    0.4000000  -0.20000000        -1.0          NA
#> DIAPH1 p S373   -0.6500000    0.1071429  -0.37142857        -0.5          NA
#> CTNND1 p S252   -0.4000000    0.0000000  -0.42857143         0.5           1
#>               TNK2 p Y284 TNK2 p Y859 TNK2 p Y827 SRSF1 p Y189 PCDH1 p Y897
#> KRT7 p S37     0.02857143   0.4681373 -0.01225490   -0.7714286  -0.46153846
#> KRT7 p S38    -1.00000000   0.5000000  0.50000000    0.5000000   1.00000000
#> INPPL1 p S890          NA   1.0000000 -1.00000000   -1.0000000   1.00000000
#> KDM6A p S388           NA  -0.2000000  0.20000000    0.8000000  -0.80000000
#> DIAPH1 p S373 -0.60000000   0.3750000 -0.13406593   -0.5879121  -0.09090909
#> CTNND1 p S252  0.42857143   0.5607143  0.02417582   -0.4010989  -0.20000000
#>               AHNAK p Y5836 AHNAK p Y964 AHNAK p Y715 AHNAK p Y160
#> KRT7 p S37       0.35714286    0.5714286    0.6642157    0.6242424
#> KRT7 p S38      -1.00000000    1.0000000    0.5000000    1.0000000
#> INPPL1 p S890            NA           NA    1.0000000           NA
#> KDM6A p S388             NA           NA   -0.4000000   -1.0000000
#> DIAPH1 p S373    0.07142857    0.4000000    0.6071429    0.9761905
#> CTNND1 p S252    0.14285714   -0.2666667    0.4714286    0.4000000
#>               ARHGEF5 p Y656 ARHGEF5 p Y1140 ARHGEF5 p Y1370 EPS8 p Y525
#> KRT7 p S37        -0.3934066            -0.5      -0.5500000  -0.8000000
#> KRT7 p S38                NA              NA       0.5000000   0.5000000
#> INPPL1 p S890     -1.0000000              NA      -1.0000000          NA
#> KDM6A p S388       0.4000000              NA       0.4000000   0.5000000
#> DIAPH1 p S373     -0.2909091              NA      -0.6395604  -0.4142857
#> CTNND1 p S252     -0.1454545             1.0      -0.5164835  -0.2107143
#>               EPS8 p Y485 EPS8 p Y491 EPS8 p Y774 TRAP1 p Y498 TRAP1 p Y499
#> KRT7 p S37             NA          NA  -0.7176471   -0.2142857           NA
#> KRT7 p S38             NA          NA   0.5000000           NA           NA
#> INPPL1 p S890          NA          NA  -1.0000000   -1.0000000           NA
#> KDM6A p S388           NA          NA   1.0000000    0.4000000           NA
#> DIAPH1 p S373          NA          NA  -0.5560440    0.9000000           NA
#> CTNND1 p S252          NA          NA  -0.4417582    0.6000000           NA
#>               ANK3 p Y533 ANK3 p Y632; ANK2 p Y630 DLG1 p Y760 MYO1E p Y7
#> KRT7 p S37     -0.5659341                0.2000000  0.46666667  0.6428571
#> KRT7 p S38      1.0000000                       NA  0.50000000         NA
#> INPPL1 p S890   1.0000000               -1.0000000          NA         NA
#> KDM6A p S388   -1.0000000                0.0000000          NA         NA
#> DIAPH1 p S373   0.3181818               -0.6000000  0.52727273  0.3714286
#> CTNND1 p S252  -0.5174825               -0.3714286  0.09090909  0.4761905
#>               PRKAA1 p Y455 PRKAA1 p Y442 HNRNPA0 p Y180 CBLB p Y889
#> KRT7 p S37               NA    -0.5666667     -0.4460784 -0.41258741
#> KRT7 p S38               NA            NA      0.5000000          NA
#> INPPL1 p S890            NA    -1.0000000      1.0000000 -1.00000000
#> KDM6A p S388             NA     0.4000000     -0.4000000 -0.20000000
#> DIAPH1 p S373            NA     0.2571429     -0.4464286 -0.53333333
#> CTNND1 p S252            NA    -0.3142857     -0.5678571 -0.01666667
#>               SRSF9 p Y179 GRB10 p Y404 EIF3I p Y308 GOLGA4 p Y2148
#> KRT7 p S37      0.00000000   -0.3214286   -0.5500000     -0.2142857
#> KRT7 p S38              NA           NA           NA      1.0000000
#> INPPL1 p S890           NA   -1.0000000   -1.0000000             NA
#> KDM6A p S388    0.40000000    1.0000000    0.6000000             NA
#> DIAPH1 p S373  -0.60000000   -0.6000000   -0.6571429      0.5000000
#> CTNND1 p S252  -0.08571429    0.4000000    0.3714286      0.1071429
#>               ADAM9 p Y769 TNK1 p Y661 GAB1 p Y406 GAB1 p Y627 GAB1 p Y47
#> KRT7 p S37       0.6078431   0.5661765   0.3846154   0.1373626        0.6
#> KRT7 p S38      -0.5000000   0.5000000   1.0000000   1.0000000         NA
#> INPPL1 p S890   -1.0000000   1.0000000   1.0000000  -1.0000000         NA
#> KDM6A p S388    -0.4000000   0.2000000   0.5000000  -1.0000000         NA
#> DIAPH1 p S373    0.3785714   0.2035714   0.5515152   0.3000000        0.5
#> CTNND1 p S252    0.3250000   0.2214286   0.2242424   0.3146853       -1.0
#>               GAB1 p Y48 GAB1 p Y659 PRPF4B p Y849 RIPK1 p Y387 HDAC1 p Y221
#> KRT7 p S37           0.6  0.15882353     0.5049020   -0.7142857    0.7666667
#> KRT7 p S38            NA  1.00000000    -0.5000000           NA           NA
#> INPPL1 p S890         NA  1.00000000    -1.0000000           NA   -1.0000000
#> KDM6A p S388          NA  0.40000000     0.4000000   -0.4000000    0.2000000
#> DIAPH1 p S373        0.5 -0.03736264     0.1285714   -0.4000000   -0.1428571
#> CTNND1 p S252       -1.0  0.44175824     0.3357143    0.0000000    0.3714286
#>               HDAC1 p Y222  DCTN2 p Y6 DYRK1A p Y319; DYRK1B p Y271
#> KRT7 p S37       0.7666667 -0.08333333                   -0.1428571
#> KRT7 p S38              NA          NA                           NA
#> INPPL1 p S890   -1.0000000 -1.00000000                    1.0000000
#> KDM6A p S388     0.2000000 -1.00000000                   -0.6000000
#> DIAPH1 p S373   -0.1428571  0.31428571                    0.4000000
#> CTNND1 p S252    0.3714286  0.25714286                   -0.1000000
#>               DYRK1A p Y321; DYRK1B p Y273 CTTN p Y154 CTTN p Y446 CTTN p Y453
#> KRT7 p S37                      -0.6838235  -0.8480392  -0.7071429  -0.2636364
#> KRT7 p S38                       0.5000000   0.5000000  -1.0000000          NA
#> INPPL1 p S890                   -1.0000000  -1.0000000  -1.0000000  -1.0000000
#> KDM6A p S388                    -0.6000000  -0.4000000  -0.4000000   0.2000000
#> DIAPH1 p S373                   -0.5607143  -0.6642857  -0.4230769  -0.3166667
#> CTNND1 p S252                   -0.4535714  -0.3392857  -0.3681319  -0.2500000
#>               CTTN p Y228 CTTN p Y421 CTTN p Y265 CTTN p Y334 CTTN p Y178
#> KRT7 p S37     -0.7500000  -0.4852941 -0.16666667         0.5  -0.7598039
#> KRT7 p S38      0.5000000  -0.5000000          NA          NA   0.5000000
#> INPPL1 p S890   1.0000000  -1.0000000  1.00000000        -1.0  -1.0000000
#> KDM6A p S388   -0.4000000   0.2000000 -0.40000000         0.2   0.4000000
#> DIAPH1 p S373  -0.4835165  -0.6500000 -0.08571429        -0.4  -0.8000000
#> CTNND1 p S252  -0.3186813  -0.4142857 -0.37142857         0.3  -0.5928571
#>               CTTN p Y141 CTTN p Y104 CTTN p Y199 CTTN p Y162 TRIM25 p Y278
#> KRT7 p S37     -0.5464286  0.00000000  -0.6544118  -0.7107843    -0.4828431
#> KRT7 p S38             NA          NA   0.5000000   0.5000000    -0.5000000
#> INPPL1 p S890   1.0000000  1.00000000  -1.0000000   1.0000000    -1.0000000
#> KDM6A p S388    0.4000000 -0.20000000   0.4000000   0.8000000     0.0000000
#> DIAPH1 p S373  -0.5524476 -0.88571429  -0.7392857  -0.5500000    -0.3678571
#> CTNND1 p S252  -0.7762238  0.02857143  -0.4678571  -0.1428571    -0.5107143
#>               PTK2B p Y579 PTK2B p Y580 GRB7 p Y259 NEDD9 p Y345 NEDD9 p Y241
#> KRT7 p S37      0.28571429    0.7058824  -0.8571429    0.8117647    0.5393939
#> KRT7 p S38      1.00000000   -0.5000000   1.0000000   -0.5000000   -0.5000000
#> INPPL1 p S890           NA           NA   1.0000000    1.0000000           NA
#> KDM6A p S388            NA   -0.5000000   0.8000000    0.5000000           NA
#> DIAPH1 p S373   0.08333333    0.5500000  -0.8131868    0.6263736    0.1272727
#> CTNND1 p S252  -0.20000000    0.4285714  -0.4230769    0.3750000   -0.1636364
#>               NEDD9 p Y106 NEDD9 p Y223 NEDD9 p Y317 NEDD9 p Y92 NEDD9 p Y629
#> KRT7 p S37             0.2    0.5219780  -0.03571429   0.7156863           NA
#> KRT7 p S38              NA    0.5000000           NA   0.5000000           NA
#> INPPL1 p S890           NA           NA           NA   1.0000000           NA
#> KDM6A p S388            NA           NA           NA  -0.4000000           NA
#> DIAPH1 p S373         -0.2    0.4825175   0.07142857   0.7285714           NA
#> CTNND1 p S252          0.4    0.2791209   0.50000000   0.1607143           NA
#>               NEDD9 p Y164 NEDD9 p Y166 NEDD9 p Y168 EIF4H p Y12 PLEC p Y4155
#> KRT7 p S37              NA    0.6352941            1  -0.4926471   -0.7380952
#> KRT7 p S38              NA   -0.5000000           NA   1.0000000           NA
#> INPPL1 p S890           NA           NA           NA  -1.0000000    1.0000000
#> KDM6A p S388            NA   -0.5000000           NA  -0.2000000   -0.8000000
#> DIAPH1 p S373           NA    0.5000000           -1  -0.3357143   -0.6571429
#> CTNND1 p S252           NA    0.3964286            1  -0.0500000    0.2571429
#>               RNPS1 p Y205  SHB p Y268 SHB p Y246 SHB p Y114 SLC1A5 p Y524
#> KRT7 p S37       0.7833333 -0.11519608 -0.3216783 -0.4852941    -0.6250000
#> KRT7 p S38              NA -0.50000000  1.0000000 -0.5000000    -0.5000000
#> INPPL1 p S890   -1.0000000  1.00000000         NA -1.0000000     1.0000000
#> KDM6A p S388     0.2000000 -0.20000000  1.0000000  0.4000000    -1.0000000
#> DIAPH1 p S373    0.3142857  0.09642857 -0.3363636 -0.4642857    -0.6208791
#> CTNND1 p S252    0.3714286  0.36071429 -0.4890110 -0.1785714    -0.1868132
#>               MAPK11 p Y182 MAPK14 p Y182 OCLN p Y337 OCLN p Y315 OCLN p Y368
#> KRT7 p S37       -0.1030303     0.5098039   0.6029412        -0.4   0.1348039
#> KRT7 p S38       -1.0000000     0.5000000   0.5000000          NA   1.0000000
#> INPPL1 p S890    -1.0000000     1.0000000   1.0000000          NA   1.0000000
#> KDM6A p S388     -1.0000000    -0.4000000  -0.4000000          NA  -0.4000000
#> DIAPH1 p S373    -0.7857143     0.7750000   0.4607143         0.0   0.2214286
#> CTNND1 p S252     0.1166667     0.3142857   0.5357143         0.0   0.3142857
#>               MAN2A1 p Y33 TXNRD1 p Y281 TXNRD1 p Y163 ACTBL2 p Y88
#> KRT7 p S37      -0.7524510    -0.8571429    -0.4065934    0.3928571
#> KRT7 p S38       0.5000000            NA            NA           NA
#> INPPL1 p S890    1.0000000            NA     1.0000000           NA
#> KDM6A p S388    -1.0000000    -0.5000000    -0.4000000           NA
#> DIAPH1 p S373   -0.5142857    -0.5952381    -0.6848485    0.1428571
#> CTNND1 p S252   -0.4321429    -0.3333333    -0.5757576    0.4285714
#>               HSP90AB4P p Y32 DOCK11 p Y1223 FNBP1L p Y291 KIAA1217 p Y520
#> KRT7 p S37         0.09803922      0.6500000    -0.7867647            -0.6
#> KRT7 p S38         0.50000000     -0.5000000    -0.5000000            -1.0
#> INPPL1 p S890     -1.00000000     -1.0000000     1.0000000              NA
#> KDM6A p S388       0.20000000      0.5000000     0.8000000              NA
#> DIAPH1 p S373     -0.38928571      0.4593407    -0.7178571            -1.0
#> CTNND1 p S252      0.17142857      0.3357143    -0.6107143            -0.6
#>               KIAA1217 p Y393 KIAA1217 p Y244 KIAA1217 p Y245 TUT7 p Y77
#> KRT7 p S37        -0.17500000      -0.2058824              NA 0.46428571
#> KRT7 p S38         0.50000000       1.0000000              NA 1.00000000
#> INPPL1 p S890              NA      -1.0000000              NA         NA
#> KDM6A p S388       0.50000000       0.4000000              NA         NA
#> DIAPH1 p S373     -0.06043956      -0.0500000              NA 0.04761905
#> CTNND1 p S252      0.33928571      -0.1428571              NA 0.30952381
#>               ANO1 p Y51 ANO1 p Y7 TNS2 p Y483 TNS3 p Y855 TNS3 p Y780
#> KRT7 p S37     0.6000000 0.8205882  -0.6607143   0.4065934   0.7745098
#> KRT7 p S38    -1.0000000 1.0000000   0.5000000  -0.5000000  -1.0000000
#> INPPL1 p S890         NA 1.0000000  -1.0000000          NA  -1.0000000
#> KDM6A p S388          NA 0.4000000   0.5000000   1.0000000  -0.4000000
#> DIAPH1 p S373 -0.4642857 0.6263736  -0.4835165   0.3496503   0.4964286
#> CTNND1 p S252  0.4285714 0.3934066  -0.2395604   0.3802198   0.4285714
#>               TNS3 p Y601 TNS3 p Y354 KIAA0895L p Y393 LAMTOR1 p Y40
#> KRT7 p S37           -0.4  0.57142857      -0.07857143     0.3911765
#> KRT7 p S38             NA -1.00000000       1.00000000     1.0000000
#> INPPL1 p S890          NA  1.00000000      -1.00000000     1.0000000
#> KDM6A p S388           NA  0.80000000       0.00000000    -0.4000000
#> DIAPH1 p S373         0.3  0.50769231      -0.23776224     0.4945055
#> CTNND1 p S252        -0.7 -0.02747253      -0.18881119     0.5208791
#>               PLEKHA7 p Y1011 CAVIN1 p Y308 SHC4 p Y424 TMC5 p Y55
#> KRT7 p S37         -0.7912088     0.5476190 -0.21666667 -0.2833333
#> KRT7 p S38          1.0000000    -1.0000000          NA -1.0000000
#> INPPL1 p S890      -1.0000000            NA  1.00000000         NA
#> KDM6A p S388        0.6000000            NA  0.80000000 -1.0000000
#> DIAPH1 p S373      -0.8060606    -0.1071429 -0.94285714 -0.5428571
#> CTNND1 p S252      -0.4303030     0.2857143  0.02857143 -0.7142857
#>               KIAA1549L p Y1417 KIAA1549L p Y1418 PAXIP1 p Y738 RAPH1 p Y1226
#> KRT7 p S37            0.4000000         0.4000000    -0.4785714     0.2571429
#> KRT7 p S38                   NA                NA    -1.0000000            NA
#> INPPL1 p S890                NA                NA    -1.0000000     1.0000000
#> KDM6A p S388                 NA                NA     0.8000000    -0.5000000
#> DIAPH1 p S373         0.3714286         0.3714286    -0.4265734    -0.8000000
#> CTNND1 p S252        -0.7142857        -0.7142857    -0.7132867    -0.5000000
#>               SPATC1 p Y504 SND1 p Y109 CYFIP1 p Y108; CYFIP2 p Y108
#> KRT7 p S37       -0.5428571  -0.6176471                    0.3833333
#> KRT7 p S38               NA   0.5000000                           NA
#> INPPL1 p S890            NA  -1.0000000                   -1.0000000
#> KDM6A p S388             NA   0.2000000                    1.0000000
#> DIAPH1 p S373    -0.2000000  -0.4964286                   -0.3714286
#> CTNND1 p S252    -0.7714286  -0.2857143                    0.7142857
#>               DCXR p Y149 LSR p Y323  LSR p Y328 LSR p Y551 LSR p Y372
#> KRT7 p S37     0.31666667  0.6713287  0.17482517 -0.7965686 -0.7156863
#> KRT7 p S38             NA -1.0000000 -1.00000000  0.5000000  0.5000000
#> INPPL1 p S890 -1.00000000         NA -1.00000000  1.0000000  1.0000000
#> KDM6A p S388   0.00000000         NA -0.50000000 -0.4000000  0.8000000
#> DIAPH1 p S373  0.37142857  0.1272727 -0.07692308 -0.5392857 -0.5142857
#> CTNND1 p S252 -0.08571429  0.2937063 -0.09090909 -0.3642857 -0.4035714
#>               LSR p Y406 NIT1 p Y143 GPSM1 p Y311 PRAG1 p Y413
#> KRT7 p S37     0.2178571 -0.06666667   -0.8769231   -0.1166667
#> KRT7 p S38    -1.0000000          NA    1.0000000           NA
#> INPPL1 p S890         NA -1.00000000    1.0000000   -1.0000000
#> KDM6A p S388   0.5000000  0.20000000    0.2000000    0.6000000
#> DIAPH1 p S373  0.1780220  0.48571429   -0.5244755   -0.2571429
#> CTNND1 p S252  0.4461538  0.31428571   -0.5384615    0.4285714
#>               HIPK2 p Y361; HIPK1 p Y352 MISP p Y95 MISP p Y350 ARHGAP12 p Y243
#> KRT7 p S37                    -0.7062937       -0.6        -0.8      -0.3714286
#> KRT7 p S38                    -1.0000000         NA          NA       1.0000000
#> INPPL1 p S890                 -1.0000000         NA          NA              NA
#> KDM6A p S388                   0.4000000       -0.5         0.5              NA
#> DIAPH1 p S373                 -0.6333333        0.3        -1.0      -0.4642857
#> CTNND1 p S252                 -0.2500000        0.8        -0.4      -0.2142857
#>               RBM12B p Y326 ELOA2 p Y389 SYTL1 p Y304 SYTL1 p Y308 ABI1 p Y213
#> KRT7 p S37       -0.6823529            1 -0.352941176          1.0  -0.6117647
#> KRT7 p S38        1.0000000           NA -0.500000000           NA  -0.5000000
#> INPPL1 p S890    -1.0000000           NA  1.000000000           NA  -1.0000000
#> KDM6A p S388      0.4000000           NA -1.000000000           NA  -0.2000000
#> DIAPH1 p S373    -0.6307692           NA -0.134065934         -0.5  -0.6373626
#> CTNND1 p S252    -0.3582418            1  0.007142857           NA  -0.5769231
#>               RDH10 p Y126 ASCC3 p Y438 MPP5 p Y528 MPP5 p Y243 AFAP1L2 p Y383
#> KRT7 p S37      -0.5151515   -0.3333333 -0.35714286   0.6764706      0.1666667
#> KRT7 p S38              NA    1.0000000 -1.00000000  -0.5000000     -1.0000000
#> INPPL1 p S890   -1.0000000   -1.0000000          NA   1.0000000             NA
#> KDM6A p S388     0.6000000    1.0000000          NA  -0.4000000             NA
#> DIAPH1 p S373   -0.4642857   -0.8928571 -0.08333333   0.3571429     -0.6666667
#> CTNND1 p S252   -0.1428571    0.2500000  0.28333333   0.5964286     -0.1833333
#>               AFAP1L2 p Y413 ENAH p Y529 TC2N p Y154 SERBP1 p Y207 LEMD2 p Y122
#> KRT7 p S37         0.8571429   0.2769608  -0.7990196     0.6666667   0.37272727
#> KRT7 p S38        -0.5000000   0.5000000   0.5000000            NA           NA
#> INPPL1 p S890             NA   1.0000000   1.0000000    -1.0000000   1.00000000
#> KDM6A p S388              NA   0.4000000  -0.2000000     0.4000000   0.20000000
#> DIAPH1 p S373      0.7500000   0.2678571  -0.6464286    -0.3714286   0.04761905
#> CTNND1 p S252      0.1785714  -0.0250000  -0.4071429     0.2000000   0.33333333
#>               CCNY p Y172 EXPH5 p Y1019 REPS2 p Y558 GPRC5A p Y347
#> KRT7 p S37     0.07142857    -0.5714286    0.4761905     0.2747253
#> KRT7 p S38    -1.00000000    -1.0000000    1.0000000     0.5000000
#> INPPL1 p S890          NA    -1.0000000           NA    -1.0000000
#> KDM6A p S388           NA    -1.0000000           NA    -1.0000000
#> DIAPH1 p S373 -0.13333333    -0.5878788    0.0000000     0.5868132
#> CTNND1 p S252  0.61666667    -0.5909091    0.3833333     0.2167832
#>               GPRC5A p Y350 GPRC5A p Y317 GPRC5A p Y293 PNPT1 p Y459
#> KRT7 p S37        0.4852941     0.2607143     0.1071429   0.13939394
#> KRT7 p S38        0.5000000     1.0000000            NA           NA
#> INPPL1 p S890     1.0000000     1.0000000            NA   1.00000000
#> KDM6A p S388     -0.8000000    -1.0000000            NA   0.40000000
#> DIAPH1 p S373     0.5392857     0.4010989     0.3095238  -0.61904762
#> CTNND1 p S252     0.2178571     0.3516484     0.4523810  -0.07142857
#>               CD99L2 p Y243 EPS8L1 p Y684 UTP15 p Y84 PARD3 p Y489
#> KRT7 p S37        0.1190476    0.23333333  -0.1666667    0.8505495
#> KRT7 p S38               NA            NA          NA   -0.5000000
#> INPPL1 p S890     1.0000000   -1.00000000  -1.0000000   -1.0000000
#> KDM6A p S388      0.2000000   -0.50000000  -0.4000000    1.0000000
#> DIAPH1 p S373    -0.4857143    0.60714286   0.9428571    0.5109890
#> CTNND1 p S252    -0.9000000   -0.03571429   0.6000000    0.4895105
#>               PARD3 p Y1080 PARD3 p Y719 PARD3 p Y1177 PARD3B p Y1000
#> KRT7 p S37        0.7965686    0.3272727     0.1757576     -0.2676471
#> KRT7 p S38       -0.5000000   -1.0000000    -1.0000000     -0.5000000
#> INPPL1 p S890    -1.0000000   -1.0000000            NA      1.0000000
#> KDM6A p S388      0.8000000   -1.0000000            NA     -0.8000000
#> DIAPH1 p S373     0.5392857    0.6333333    -0.1030303     -0.3107143
#> CTNND1 p S252     0.7250000   -0.5757576     0.1909091     -0.5824176
#>               UBASH3B p Y19 FRS2 p Y306 LMO7 p Y1667 LMO7 p Y1672 ATXN2L p Y349
#> KRT7 p S37       -0.3714286  -0.9000000    0.2619048   0.01666667    -0.5857843
#> KRT7 p S38        1.0000000   1.0000000           NA           NA     1.0000000
#> INPPL1 p S890            NA          NA           NA  -1.00000000     1.0000000
#> KDM6A p S388             NA   0.5000000   -0.4000000   1.00000000     0.4000000
#> DIAPH1 p S373     0.2000000  -0.9047619   -0.7000000  -0.25714286    -0.3964286
#> CTNND1 p S252     0.1428571  -0.3500000   -0.2000000   0.42857143    -0.3500000
#>               CASKIN2 p Y253 ARAP2 p Y473 DDX1 p Y628 PIK3R3 p Y199
#> KRT7 p S37       0.682142857   -0.2000000  0.33333333    -0.6323529
#> KRT7 p S38      -1.000000000    1.0000000          NA     0.5000000
#> INPPL1 p S890    1.000000000           NA -1.00000000     1.0000000
#> KDM6A p S388     0.000000000           NA  0.80000000     0.8000000
#> DIAPH1 p S373    0.670329670    0.7714286  0.08571429    -0.5964286
#> CTNND1 p S252   -0.005494505   -0.1000000 -0.14285714    -0.3214286
#>               ANKS1A p Y455 DYRK4 p Y264; DYRK2 p Y382 NECTIN2 p Y454
#> KRT7 p S37        0.4285714                 -0.4901099      0.5147059
#> KRT7 p S38               NA                  0.5000000      0.5000000
#> INPPL1 p S890            NA                 -1.0000000      1.0000000
#> KDM6A p S388             NA                  1.0000000      0.4000000
#> DIAPH1 p S373     0.1428571                 -0.4909091      0.4678571
#> CTNND1 p S252    -0.2142857                 -0.2363636      0.5500000
#>               HDAC2 p Y222 HDAC2 p Y223 DLG3 p Y673 EVPL p Y1520 NEO1 p Y575
#> KRT7 p S37       0.2333333    0.2333333   0.5676471   -0.2545455   0.1666667
#> KRT7 p S38              NA           NA   0.5000000   -1.0000000   1.0000000
#> INPPL1 p S890   -1.0000000   -1.0000000          NA   -1.0000000          NA
#> KDM6A p S388     0.4000000    0.4000000   0.5000000    0.8000000          NA
#> DIAPH1 p S373    0.2571429    0.2571429   0.4857143   -0.8571429  -0.5666667
#> CTNND1 p S252    0.7714286    0.7714286   0.6428571   -0.1904762   0.3500000
#>               SMARCD2 p Y197 RAB8B p Y5; RAB8A p Y5  EMG1 p Y61 LPP p Y317
#> KRT7 p S37               0.3              0.6495098 -0.58181818        1.0
#> KRT7 p S38                NA              0.5000000          NA         NA
#> INPPL1 p S890             NA             -1.0000000  1.00000000         NA
#> KDM6A p S388             1.0              0.4000000  0.40000000         NA
#> DIAPH1 p S373           -1.0              0.5821429 -0.40000000        0.5
#> CTNND1 p S252           -1.0              0.2928571  0.01666667        0.5
#>               LPP p Y296 LPP p Y297  LPP p Y301 C11orf52 p Y103 FAF2 p Y79
#> KRT7 p S37     0.4285714  0.4285714 -0.71328671     -0.04656863  0.3235294
#> KRT7 p S38    -1.0000000 -1.0000000  1.00000000     -1.00000000  1.0000000
#> INPPL1 p S890         NA         NA          NA      1.00000000 -1.0000000
#> KDM6A p S388          NA         NA  1.00000000     -0.80000000  0.2000000
#> DIAPH1 p S373 -0.1904762 -0.1904762 -0.60909091     -0.03214286  0.1392857
#> CTNND1 p S252 -0.5476190 -0.5476190 -0.03636364      0.36428571  0.4500000
#>               S100A16 p Y20 S100A16 p Y26 PDLIM5 p Y251 KIRREL1 p Y572
#> KRT7 p S37      -0.02380952    -0.8571429    0.06666667      0.7142857
#> KRT7 p S38               NA            NA            NA             NA
#> INPPL1 p S890            NA            NA   -1.00000000             NA
#> KDM6A p S388    -1.00000000    -0.5000000   -0.80000000             NA
#> DIAPH1 p S373    0.88571429     0.3000000   -0.28571429      0.6071429
#> CTNND1 p S252    0.37142857     0.5428571   -0.21428571      0.4285714
#>               KIRREL1 p Y605 KIRREL1 p Y721 NECTIN4 p Y502 NECTIN4 p Y445
#> KRT7 p S37         0.3142857     0.92857143     -0.7666667     -0.3846154
#> KRT7 p S38         1.0000000    -1.00000000             NA     -1.0000000
#> INPPL1 p S890             NA             NA      1.0000000      1.0000000
#> KDM6A p S388              NA             NA     -0.2000000     -0.4000000
#> DIAPH1 p S373      0.7142857     0.08333333      0.2571429     -0.7454545
#> CTNND1 p S252      0.5000000     0.03333333      0.3714286     -0.3939394
#>               ARAP1 p Y504 DCBLD2 p Y750 DCBLD2 p Y732 DCBLD2 p Y565
#> KRT7 p S37      -0.4166667    -0.3617647    0.16666667     0.7264706
#> KRT7 p S38              NA     1.0000000            NA    -0.5000000
#> INPPL1 p S890   -1.0000000    -1.0000000    1.00000000    -1.0000000
#> KDM6A p S388     0.8000000     0.2000000    0.20000000    -0.5000000
#> DIAPH1 p S373   -0.4857143    -0.1516484   -0.37142857     0.4725275
#> CTNND1 p S252    0.3714286    -0.1956044    0.02857143     0.5769231
#>               DCBLD2 p Y597 RBM14 p Y645 SLC38A2 p Y41 MAGI1 p Y373
#> KRT7 p S37                1   0.58333333   -0.10000000    0.4615385
#> KRT7 p S38               NA           NA    0.50000000   -0.5000000
#> INPPL1 p S890            -1   1.00000000   -1.00000000    1.0000000
#> KDM6A p S388              1   0.20000000            NA   -0.4000000
#> DIAPH1 p S373            -1  -0.54285714   -0.21428571    0.5515152
#> CTNND1 p S252            NA  -0.08571429    0.07142857   -0.1757576
#>               ERBIN p Y1104 LYSMD1 p Y83 CEP89 p Y157 CNN2 p Y184
#> KRT7 p S37       -0.7916667          0.5    0.4975490         0.5
#> KRT7 p S38        0.5000000           NA    0.5000000          NA
#> INPPL1 p S890     1.0000000           NA    1.0000000        -1.0
#> KDM6A p S388      0.0000000          1.0   -0.8000000         1.0
#> DIAPH1 p S373    -0.4857143           NA    0.4178571         1.0
#> CTNND1 p S252    -0.3535714          1.0    0.1571429          NA
#>               CNN2 p Y12; CNN3 p Y10 MAP3K14 p Y682 PKP4 p Y275 PKP4 p Y1094
#> KRT7 p S37               -0.03030303      0.1904762  -0.4500000   -0.6678571
#> KRT7 p S38                1.00000000     -1.0000000          NA    1.0000000
#> INPPL1 p S890                     NA             NA   1.0000000           NA
#> KDM6A p S388                      NA             NA   0.6000000    0.4000000
#> DIAPH1 p S373            -0.07272727     -0.7500000  -0.9428571   -0.3901099
#> CTNND1 p S252             0.38333333      0.2666667   0.2571429   -0.5208791
#>               PKP4 p Y1115 PKP4 p Y306 PKP4 p Y415 PKP4 p Y443 PKP4 p Y465
#> KRT7 p S37      -0.7902098 -0.85714286  -0.5882353  -0.1878788  -0.8607143
#> KRT7 p S38              NA          NA  -0.5000000          NA   0.5000000
#> INPPL1 p S890    1.0000000  1.00000000   1.0000000  -1.0000000  -1.0000000
#> KDM6A p S388     0.6000000  0.50000000  -0.2000000   0.0000000   0.6000000
#> DIAPH1 p S373   -0.6363636 -0.80000000  -0.6178571  -0.7857143  -0.6373626
#> CTNND1 p S252   -0.4545455  0.08571429  -0.4857143  -0.1428571  -0.2747253
#>               PKP4 p Y1168 PKP4 p Y1172 PKP4 p Y372 PKP4 p Y420 PKP4 p Y421
#> KRT7 p S37      -0.8357843   -0.5151515  -0.8441176  -0.8176471        -0.5
#> KRT7 p S38       0.5000000    1.0000000   1.0000000  -1.0000000          NA
#> INPPL1 p S890    1.0000000   -1.0000000  -1.0000000   1.0000000          NA
#> KDM6A p S388     0.8000000    0.8000000   0.4000000   0.6000000         1.0
#> DIAPH1 p S373   -0.7428571   -0.7142857  -0.5516484  -0.8109890        -1.0
#> CTNND1 p S252   -0.4035714    0.3571429  -0.4989011  -0.5384615        -1.0
#>               PKP4 p Y425 PKP4 p Y494 DOK1 p Y449 PKP2 p Y217 PKP2 p Y659
#> KRT7 p S37           -0.8  0.02857143  -0.5735294          NA   0.3000000
#> KRT7 p S38             NA          NA   0.5000000          NA          NA
#> INPPL1 p S890          NA  1.00000000  -1.0000000          NA          NA
#> KDM6A p S388           NA  1.00000000   0.2000000          NA          NA
#> DIAPH1 p S373        -0.5 -1.00000000  -0.6535714          NA   0.6571429
#> CTNND1 p S252        -1.0  0.50000000  -0.4964286          NA   0.2000000
#>               NIPSNAP1 p Y148 RBM4B p Y37; RBM4 p Y37 PELO p Y99 ATG101 p Y164
#> KRT7 p S37          0.4857143                    -0.1 -0.4666667    -0.1904762
#> KRT7 p S38                 NA                      NA         NA            NA
#> INPPL1 p S890              NA                      NA  1.0000000    -1.0000000
#> KDM6A p S388        1.0000000                     1.0  0.6000000     0.8000000
#> DIAPH1 p S373       0.5000000                    -0.5 -0.2857143    -0.4857143
#> CTNND1 p S252       0.0000000                     0.5  0.1428571     0.9000000
#>               TUBGCP2 p Y83 ESYT1 p Y822 ESYT1 p Y1009 WDR18 p Y61 NTMT1 p Y103
#> KRT7 p S37       -0.4055944   -0.5539216    -0.1904762  -0.5637255   -0.3776224
#> KRT7 p S38        1.0000000   -0.5000000            NA  -0.5000000           NA
#> INPPL1 p S890    -1.0000000    1.0000000            NA  -1.0000000    1.0000000
#> KDM6A p S388      0.0000000    0.4000000    -0.5000000   0.4000000    0.0000000
#> DIAPH1 p S373    -0.7500000   -0.7250000    -0.6571429  -0.6428571   -0.4424242
#> CTNND1 p S252    -0.4666667   -0.1964286    -0.4642857  -0.4857143   -0.2727273
#>               ITPA p Y113 UBXN6 p Y336 SPRY4 p Y52 ARHGAP39 p Y448
#> KRT7 p S37     0.76666667   -0.6848485  0.07142857       0.1263736
#> KRT7 p S38             NA           NA          NA      -1.0000000
#> INPPL1 p S890 -1.00000000   -1.0000000          NA       1.0000000
#> KDM6A p S388   0.00000000    0.2000000          NA      -0.4000000
#> DIAPH1 p S373  0.42857143   -0.3571429 -0.57142857       0.2181818
#> CTNND1 p S252 -0.08571429   -0.2142857 -0.11904762       0.3454545
#>               SRCIN1 p Y283 SRCIN1 p Y396 SRCIN1 p Y264 CYSTM1 p Y64
#> KRT7 p S37       -0.8735294    -0.4705882  -0.153846154  -0.27272727
#> KRT7 p S38       -0.5000000    -0.5000000   1.000000000   1.00000000
#> INPPL1 p S890     1.0000000    -1.0000000  -1.000000000   1.00000000
#> KDM6A p S388      0.6000000     0.5000000   1.000000000  -0.50000000
#> DIAPH1 p S373    -0.6967033    -0.3406593  -0.009090909  -0.48181818
#> CTNND1 p S252    -0.4813187    -0.4549451  -0.072727273   0.03333333
#>               HIPK3 p Y359 EPB41L1 p Y343 CDCP1 p Y806 EPS8L2 p Y678
#> KRT7 p S37      -0.6495098      0.6117647   0.69090909    -0.7392857
#> KRT7 p S38       1.0000000      0.5000000  -1.00000000    -1.0000000
#> INPPL1 p S890   -1.0000000             NA           NA    -1.0000000
#> KDM6A p S388     0.4000000     -0.5000000  -1.00000000     0.6000000
#> DIAPH1 p S373   -0.2500000      0.6785714   0.06666667    -0.7307692
#> CTNND1 p S252   -0.2714286      0.6107143   0.41818182    -0.4670330
#>               GAREM1 p Y52 GAREM1 p Y701 GAREM1 p Y453 GAREM1 p Y271
#> KRT7 p S37     -0.63333333    -0.5952381    -0.3909091    -0.5833333
#> KRT7 p S38              NA            NA     1.0000000            NA
#> INPPL1 p S890   1.00000000     1.0000000     1.0000000    -1.0000000
#> KDM6A p S388    0.00000000     0.0000000    -0.5000000     0.6000000
#> DIAPH1 p S373  -0.77142857    -1.0000000    -0.1904762    -0.7714286
#> CTNND1 p S252   0.08571429     0.0000000    -0.1428571     0.5428571
#>               PEAK1 p Y531 PLEKHA5 p Y327 PLEKHA5 p Y398 PLEKHA5 p Y436
#> KRT7 p S37      0.04761905     -0.6904762     -0.7617647     -0.8205882
#> KRT7 p S38      1.00000000             NA      0.5000000      0.5000000
#> INPPL1 p S890           NA     -1.0000000      1.0000000      1.0000000
#> KDM6A p S388            NA      0.8000000      0.0000000     -0.4000000
#> DIAPH1 p S373   0.38333333     -0.7000000     -0.6659341     -0.6318681
#> CTNND1 p S252   0.03333333      0.6000000     -0.4241758     -0.4725275
#>               TNS1 p Y1404 TNS1 p Y1254 EML4 p Y226 EML4 p Y247 EML4 p Y305
#> KRT7 p S37       0.3095238    0.5727273  -0.2447552   0.3214286 -0.61212121
#> KRT7 p S38       1.0000000   -0.5000000          NA          NA -1.00000000
#> INPPL1 p S890           NA           NA  -1.0000000  -1.0000000 -1.00000000
#> KDM6A p S388            NA           NA   0.8000000   1.0000000  0.60000000
#> DIAPH1 p S373    0.3000000    0.4090909  -0.7000000  -0.4000000 -0.85714286
#> CTNND1 p S252    0.2333333    0.7202797  -0.6666667   0.4000000  0.03571429
#>               EML4 p Y265 EML4 p Y267 EML4 p Y453 GPAM p Y111 S100A14 p Y32
#> KRT7 p S37    -0.38333333   0.3571429 -0.70909091          NA     0.3212121
#> KRT7 p S38             NA          NA          NA          NA            NA
#> INPPL1 p S890 -1.00000000  -1.0000000 -1.00000000          NA    -1.0000000
#> KDM6A p S388   0.60000000   0.5000000  0.60000000          NA     0.4000000
#> DIAPH1 p S373 -0.71428571  -0.8000000 -0.85714286          NA     0.0000000
#> CTNND1 p S252  0.08571429   0.6000000 -0.07142857          NA    -0.3214286
#>               PTPRH p Y1102 MYO10 p Y1128 VTA1 p Y278 DCP1A p Y64 SEMA4B p Y782
#> KRT7 p S37       -0.6500000    -0.6190476  -0.1000000        -0.5    -0.6500000
#> KRT7 p S38        0.5000000            NA          NA          NA            NA
#> INPPL1 p S890    -1.0000000     1.0000000  -1.0000000          NA    -1.0000000
#> KDM6A p S388      1.0000000    -0.2000000   0.0000000         1.0     0.6000000
#> DIAPH1 p S373    -0.7833333     0.3000000  -0.5238095        -1.0    -0.9285714
#> CTNND1 p S252    -0.7857143     0.5000000  -0.6666667         1.0     0.5000000
#>               GPRC5C p Y324 GPRC5C p Y387 NIT2 p Y49 ASH1L p Y1995
#> KRT7 p S37       -0.4681373  -0.009090909 -0.6153846     0.3571429
#> KRT7 p S38       -0.5000000   1.000000000  1.0000000            NA
#> INPPL1 p S890     1.0000000  -1.000000000         NA            NA
#> KDM6A p S388      0.2000000   0.200000000 -1.0000000            NA
#> DIAPH1 p S373    -0.5607143  -0.633333333 -0.5804196    -0.5428571
#> CTNND1 p S252    -0.4428571  -0.416666667 -0.2000000     0.1785714
#>               ARHGAP35 p Y1105 SPATS2L p Y15 PAG1 p Y227 PAG1 p Y417
#> KRT7 p S37          -0.5196078    -0.7735294  -0.6323529 -0.25000000
#> KRT7 p S38           0.5000000     0.5000000   0.5000000          NA
#> INPPL1 p S890       -1.0000000    -1.0000000   1.0000000  1.00000000
#> KDM6A p S388         0.4000000     1.0000000  -0.8000000 -0.80000000
#> DIAPH1 p S373       -0.4428571    -0.5472527  -0.4642857  0.37142857
#> CTNND1 p S252       -0.1321429    -0.3230769  -0.3464286 -0.02857143
#>               PAG1 p Y359 PAG1 p Y317 MTMR10 p Y708 ABI2 p Y213 ACTR10 p Y4
#> KRT7 p S37     -0.7941176  -0.8833333    -0.6274510  -0.1666667        -0.3
#> KRT7 p S38     -1.0000000          NA     0.5000000          NA          NA
#> INPPL1 p S890   1.0000000   1.0000000     1.0000000  -1.0000000          NA
#> KDM6A p S388    0.4000000   1.0000000    -0.2000000   0.5000000        -1.0
#> DIAPH1 p S373  -0.6747253  -0.7714286    -0.4535714  -0.8214286        -0.4
#> CTNND1 p S252  -0.4945055  -0.3571429    -0.2857143  -0.4000000         0.4
#>               GPRC5B p Y376 ITSN2 p Y968 ITSN2 p Y553  CGN p Y45 CGN p Y313
#> KRT7 p S37       0.10714286   -0.6862745   -0.5882353 -0.7401961       -0.9
#> KRT7 p S38       1.00000000    0.5000000    0.5000000  0.5000000         NA
#> INPPL1 p S890            NA   -1.0000000   -1.0000000 -1.0000000         NA
#> KDM6A p S388             NA    0.4000000    0.4000000  0.4000000         NA
#> DIAPH1 p S373    0.04761905   -0.5714286   -0.4725275 -0.7642857       -0.5
#> CTNND1 p S252   -0.04761905   -0.5142857   -0.3010989 -0.4142857       -0.4
#>               SUCLA2 p Y84 TJP2 p Y261 TJP2 p Y265 TJP2 p Y1178 TJP2 p Y1179
#> KRT7 p S37      0.52380952  -0.6676471   0.7062937   -0.7328431            1
#> KRT7 p S38              NA   0.5000000   0.5000000    0.5000000           NA
#> INPPL1 p S890           NA          NA          NA   -1.0000000           NA
#> KDM6A p S388    0.40000000   1.0000000          NA    0.6000000            1
#> DIAPH1 p S373   0.90000000  -0.4571429   0.5104895   -0.3964286           NA
#> CTNND1 p S252  -0.08571429  -0.2714286   0.3356643   -0.3821429           NA
#>               TJP2 p Y1118 TJP2 p Y1007 BAIAP2L1 p Y274 ATP6V1H p Y388
#> KRT7 p S37      -0.6558824   -0.7377451      -0.7083333     -0.2619048
#> KRT7 p S38       0.5000000    0.5000000      -0.5000000             NA
#> INPPL1 p S890   -1.0000000    1.0000000       1.0000000      1.0000000
#> KDM6A p S388     0.4000000   -0.8000000       0.6000000      0.2000000
#> DIAPH1 p S373   -0.7098901   -0.6071429      -0.5464286      0.6000000
#> CTNND1 p S252   -0.4461538   -0.5250000      -0.2785714      0.3000000
#>               ERRFI1 p Y458 ERRFI1 p Y394 DBNL p Y140 DBNL p Y162 DCTN4 p Y173
#> KRT7 p S37       -0.4197802     0.3014706  -0.6166667  -0.6382353           -1
#> KRT7 p S38        1.0000000     1.0000000          NA   0.5000000           NA
#> INPPL1 p S890     1.0000000    -1.0000000   1.0000000  -1.0000000            1
#> KDM6A p S388     -0.5000000     0.8000000   0.0000000   0.2000000           -1
#> DIAPH1 p S373     0.2167832     0.4785714  -0.7714286  -0.4725275            1
#> CTNND1 p S252    -0.3076923     0.3285714   0.1428571  -0.4681319           NA
#>               NUDT5 p Y74 VAV3 p Y217 CDV3 p Y190 PLEKHG1 p Y1042 ALK p Y1584
#> KRT7 p S37    -0.67832168   0.8214286   0.5428571      -0.5244755  -0.2571429
#> KRT7 p S38     1.00000000          NA          NA              NA          NA
#> INPPL1 p S890  1.00000000   1.0000000  -1.0000000       1.0000000          NA
#> KDM6A p S388   0.80000000   0.5000000          NA      -0.8000000   0.5000000
#> DIAPH1 p S373 -0.60000000   0.4000000   0.2000000      -0.3666667   0.4000000
#> CTNND1 p S252 -0.09090909   0.0000000   0.1000000      -0.5666667   0.3000000
#>               ALK p Y1586 ALK p Y1078 ALK p Y1359 ALK p Y1507 ALK p Y1096
#> KRT7 p S37            0.2   0.2857143 -0.48333333  -0.0500000  -0.5714286
#> KRT7 p S38             NA          NA          NA          NA          NA
#> INPPL1 p S890          NA  -1.0000000 -1.00000000  -1.0000000  -1.0000000
#> KDM6A p S388          1.0   0.4000000  0.60000000   0.8000000   0.5000000
#> DIAPH1 p S373        -0.5  -0.9000000 -0.71428571  -0.6000000  -0.9000000
#> CTNND1 p S252         0.8  -0.2000000 -0.02857143   0.3142857   0.4000000
#>               DAPP1 p Y139 ANKRD26 p Y296 SHANK2 p Y610 SHANK2 p Y538
#> KRT7 p S37      -0.1428571     0.68333333     0.6529412     0.6789216
#> KRT7 p S38       1.0000000    -1.00000000     0.5000000    -0.5000000
#> INPPL1 p S890           NA             NA    -1.0000000     1.0000000
#> KDM6A p S388            NA             NA     0.5000000     0.4000000
#> DIAPH1 p S373    0.2500000    -0.20000000     0.7285714     0.5750000
#> CTNND1 p S252   -0.3214286    -0.09090909     0.3626374     0.6142857
#>               SLC7A11 p Y15 ICK p Y159 GAB2 p Y266  GAB2 p Y293 GAB2 p Y614
#> KRT7 p S37       -0.7274725 -0.6970588  -0.6013986 -0.286764706  -0.5878788
#> KRT7 p S38        1.0000000  0.5000000   1.0000000  0.500000000  -1.0000000
#> INPPL1 p S890     1.0000000 -1.0000000  -1.0000000 -1.000000000          NA
#> KDM6A p S388      0.5000000  0.8000000   0.6000000  0.400000000   1.0000000
#> DIAPH1 p S373    -0.5472527 -0.5340659  -0.3575758 -0.335714286  -0.5272727
#> CTNND1 p S252    -0.3706294 -0.3626374  -0.2969697 -0.003571429   0.1030303
#>               PIN4 p Y122 PLEKHA6 p Y404 PLEKHA6 p Y492 PIKFYVE p Y1041
#> KRT7 p S37           -0.5    -0.74545455     -0.5049020       0.3636364
#> KRT7 p S38             NA             NA      0.5000000              NA
#> INPPL1 p S890          NA    -1.00000000     -1.0000000       1.0000000
#> KDM6A p S388           NA     0.60000000      1.0000000       0.5000000
#> DIAPH1 p S373          NA    -0.92857143     -0.5392857       0.7857143
#> CTNND1 p S252        -0.5    -0.07142857     -0.4285714       0.3333333
#>               GIT1 p Y545 EXOSC1 p Y119 SF3B6 p Y86 PKP3 p Y176  PKP3 p Y84
#> KRT7 p S37      0.1692308    -0.6166667         0.6  -0.6606061 -0.68484848
#> KRT7 p S38     -0.5000000    -1.0000000          NA          NA          NA
#> INPPL1 p S890          NA            NA          NA  -1.0000000          NA
#> KDM6A p S388   -0.4000000     1.0000000         0.5   0.6000000  0.00000000
#> DIAPH1 p S373  -0.2447552    -0.7500000        -1.0  -0.8571429 -0.64285714
#> CTNND1 p S252   0.3351648    -0.6071429         0.5  -0.2857143 -0.02380952
#>               PKP3 p Y390 PKP3 p Y195 TLN1 p Y70 IRS2 p Y823 IRS2 p Y742
#> KRT7 p S37      0.3411765  -0.5000000 -0.1151961  0.35757576  -0.7142857
#> KRT7 p S38      0.5000000   0.5000000  1.0000000 -1.00000000          NA
#> INPPL1 p S890   1.0000000  -1.0000000  1.0000000 -1.00000000          NA
#> KDM6A p S388    0.4000000   0.5000000  0.4000000  1.00000000   1.0000000
#> DIAPH1 p S373   0.5472527  -0.3636364  0.0250000 -0.33333333  -1.0000000
#> CTNND1 p S252  -0.1076923  -0.4450549  0.1392857  0.07142857   0.2000000
#>               IRS2 p Y542 IRS2 p Y75 IRS2 p Y803 IRS2 p Y675 IRS2 p Y576
#> KRT7 p S37     0.19047619  0.7500000   0.2181818  -0.1617647 -0.33333333
#> KRT7 p S38    -1.00000000         NA          NA  -1.0000000          NA
#> INPPL1 p S890          NA -1.0000000  -1.0000000  -1.0000000 -1.00000000
#> KDM6A p S388           NA  0.4000000   0.2000000   0.2000000  0.80000000
#> DIAPH1 p S373  0.02380952 -0.3142857  -0.0500000  -0.4678571 -0.95238095
#> CTNND1 p S252  0.06666667 -0.3142857   0.1333333  -0.3964286 -0.04761905
#>               IRS2 p Y632 IRS2 p Y111 PRRC2C p Y1218 CD2AP p Y361 FLVCR1 p Y22
#> KRT7 p S37             -1   0.2380952      0.2598039    0.3356643    0.6764706
#> KRT7 p S38             NA          NA     -1.0000000    1.0000000   -0.5000000
#> INPPL1 p S890          NA  -1.0000000      1.0000000    1.0000000    1.0000000
#> KDM6A p S388           NA   0.4000000      0.2000000    0.4000000   -0.2000000
#> DIAPH1 p S373          NA  -0.7000000     -0.1472527    0.2969697    0.3321429
#> CTNND1 p S252          NA  -0.1000000      0.1736264    0.1151515    0.3750000
#>               F11R p Y280 DDX49 p Y223
#> KRT7 p S37     -0.7500000   0.92727273
#> KRT7 p S38      0.5000000  -1.00000000
#> INPPL1 p S890   1.0000000           NA
#> KDM6A p S388   -0.4000000           NA
#> DIAPH1 p S373  -0.6428571  -0.03030303
#> CTNND1 p S252  -0.3785714   0.45454545
```
