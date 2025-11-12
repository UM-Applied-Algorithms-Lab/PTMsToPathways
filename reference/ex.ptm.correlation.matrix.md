# Correlation Matrix Example

Matrix relating the correlation values between ptms based on Spearman
Similarity.

## Usage

``` r
ex.ptm.correlation.matrix
```

## Format

Square matrix of 497 rows and columns:

- rows and columns:

  Ptm names

- values:

  Strength of correlation

## Source

"created by MakeClusterList"

## Examples

``` r
head(ex.ptm.correlation.matrix)
#>               ABLIM1 p Y357 ABLIM1 p Y373 ABLIM1 p Y383 ABLIM1 p Y406
#> ABLIM1 p Y357            NA     0.8857143     0.6428571          -0.5
#> ABLIM1 p Y373     0.8857143            NA     0.8000000          -0.8
#> ABLIM1 p Y383     0.6428571     0.8000000            NA          -1.0
#> ABLIM1 p Y406    -0.5000000    -0.8000000    -1.0000000            NA
#> ABLIM1 p Y410     0.9000000     1.0000000     0.5000000          -0.5
#> ABLIM1 p Y461     0.8000000     0.8857143     1.0000000          -1.0
#>               ABLIM1 p Y410 ABLIM1 p Y461 ABLIM1 p Y688 ABLIM1 ubi K275
#> ABLIM1 p Y357           0.9     0.8000000           0.7             0.7
#> ABLIM1 p Y373           1.0     0.8857143           0.7             0.4
#> ABLIM1 p Y383           0.5     1.0000000           0.8             0.5
#> ABLIM1 p Y406          -0.5    -1.0000000          -1.0              NA
#> ABLIM1 p Y410            NA     1.0000000           1.0              NA
#> ABLIM1 p Y461           1.0            NA           1.0             0.5
#>               ABLIM1 ubi K8 ACOX1 ack K437 ACOX1 p Y629 ACTR5 p Y564
#> ABLIM1 p Y357           1.0            0.9            1           NA
#> ABLIM1 p Y373            NA            1.0            1           NA
#> ABLIM1 p Y383           0.5            0.7           NA           NA
#> ABLIM1 p Y406          -1.0             NA           NA           NA
#> ABLIM1 p Y410            NA            1.0           NA           NA
#> ABLIM1 p Y461            NA            0.8           NA           NA
#>               AGFG1 p Y327 APH1A p Y256 APH1A ubi K95 APH1A ubi K96 APP p T761
#> ABLIM1 p Y357    0.8095238    0.8186813            NA            NA  0.4321429
#> ABLIM1 p Y373    0.8809524    0.8373626            NA            NA  0.5000000
#> ABLIM1 p Y383   -0.5000000    0.3000000            NA            NA  0.2000000
#> ABLIM1 p Y406    1.0000000   -0.1000000            NA            NA  0.2000000
#> ABLIM1 p Y410    1.0000000    0.7000000            NA            NA  0.0000000
#> ABLIM1 p Y461    1.0000000    0.9428571            NA            NA  0.4000000
#>               APP p Y757 APP ubi K751 APP ubi K763 ARAP2 p Y334 ARAP2 p Y473
#> ABLIM1 p Y357  0.5274725    0.4166667    0.6333333    0.8928571    0.8545455
#> ABLIM1 p Y373  0.7342657    0.3714286    0.7142857    0.8000000    0.8095238
#> ABLIM1 p Y383  0.4000000    0.4000000    0.5000000    0.4000000   -1.0000000
#> ABLIM1 p Y406 -0.5000000           NA           NA    1.0000000    1.0000000
#> ABLIM1 p Y410 -1.0000000   -1.0000000   -1.0000000    0.5000000    0.5000000
#> ABLIM1 p Y461  0.7714286    1.0000000    0.5000000           NA           NA
#>               ARAP2 p Y77 ATG3 p Y18 ATP5PO ack K158 ATP5PO ack K162
#> ABLIM1 p Y357   0.8181818  0.9160839            -0.5       0.1904762
#> ABLIM1 p Y373   0.8545455  0.9300699             0.4       0.4285714
#> ABLIM1 p Y383   0.4000000  0.8000000              NA       1.0000000
#> ABLIM1 p Y406   1.0000000  0.5000000            -0.5       0.5000000
#> ABLIM1 p Y410   0.5000000  1.0000000              NA       0.5000000
#> ABLIM1 p Y461   1.0000000  0.9000000              NA       1.0000000
#>               ATP5PO ack K192 ATP5PO ack K199 ATP5PO ack K60 ATP5PO p Y35
#> ABLIM1 p Y357       0.3809524            -1.0             NA          1.0
#> ABLIM1 p Y373      -0.3142857            -1.0             NA          0.5
#> ABLIM1 p Y383              NA              NA             NA           NA
#> ABLIM1 p Y406       1.0000000            -0.5             NA         -1.0
#> ABLIM1 p Y410      -1.0000000              NA             NA           NA
#> ABLIM1 p Y461      -1.0000000            -1.0             NA          1.0
#>               ATP6V0D1 p Y347 ATP6V0D1 ubi K343
#> ABLIM1 p Y357       0.8259804         0.4755245
#> ABLIM1 p Y373       0.8823529         0.5104895
#> ABLIM1 p Y383       0.3000000         0.6000000
#> ABLIM1 p Y406      -0.1000000        -1.0000000
#> ABLIM1 p Y410       0.9000000        -0.6000000
#> ABLIM1 p Y461       0.8857143         0.6000000
#>               CTNNA2 ack K913; CTNNA1 ack K866 CTNNA2 p Y417; CTNNA1 p Y419
#> ABLIM1 p Y357                                1                    0.7316821
#> ABLIM1 p Y373                                1                    0.6483516
#> ABLIM1 p Y383                               NA                    0.9000000
#> ABLIM1 p Y406                               NA                   -0.5000000
#> ABLIM1 p Y410                               NA                    1.0000000
#> ABLIM1 p Y461                               NA                    1.0000000
#>               CTNNAL1 p S538 CTNNAL1 p Y534 CTNNAL1 p Y536 CTTN ack K107
#> ABLIM1 p Y357      0.4909091      0.7500000      0.6449948          -0.2
#> ABLIM1 p Y373      0.6242424      0.8516484      0.7000000          -0.2
#> ABLIM1 p Y383      0.9000000      1.0000000      0.9000000            NA
#> ABLIM1 p Y406     -0.5000000      0.2000000      0.1000000            NA
#> ABLIM1 p Y410     -0.1000000      0.8000000     -0.1000000            NA
#> ABLIM1 p Y461      0.9000000      1.0000000      0.8857143            NA
#>               CTTN ack K124 CTTN ack K161 CTTN ack K171 CTTN ack K198
#> ABLIM1 p Y357             1           1.0             1            NA
#> ABLIM1 p Y373            NA          -0.5             1            NA
#> ABLIM1 p Y383            NA            NA            NA            NA
#> ABLIM1 p Y406            NA          -1.0            NA            NA
#> ABLIM1 p Y410            NA            NA            NA            NA
#> ABLIM1 p Y461            NA          -1.0            NA            NA
#>               CTTN ack K235 CTTN ack K272 CTTN ack K309 CTTN ack K87
#> ABLIM1 p Y357             1            -1           0.5          1.0
#> ABLIM1 p Y373            -1            -1          -0.5          0.5
#> ABLIM1 p Y383             1            NA            NA           NA
#> ABLIM1 p Y406            NA            -1          -1.0         -1.0
#> ABLIM1 p Y410            NA            NA           1.0           NA
#> ABLIM1 p Y461            NA            NA            NA           NA
#>               CTTN p S156 CTTN p S405 CTTN p S417 CTTN p S418 CTTN p S447
#> ABLIM1 p Y357   0.8769231   0.6483516          NA   0.8060606   0.7619048
#> ABLIM1 p Y373   0.8811189   0.7622378          NA   0.7333333   0.7142857
#> ABLIM1 p Y383   1.0000000  -1.0000000          NA   1.0000000          NA
#> ABLIM1 p Y406  -1.0000000  -0.4000000          NA  -1.0000000  -1.0000000
#> ABLIM1 p Y410   1.0000000   0.1000000          NA   1.0000000   1.0000000
#> ABLIM1 p Y461   0.9428571   0.5000000          NA   0.6571429          NA
#>               CTTN p T401 CTTN p T440 CTTN p Y104 CTTN p Y141 CTTN p Y154
#> ABLIM1 p Y357   0.7965686   0.2571429         0.3   0.8090909   0.8235294
#> ABLIM1 p Y373   0.7785714   0.3714286        -0.3   0.8666667   0.7714286
#> ABLIM1 p Y383   0.6071429   1.0000000        -0.5   1.0000000   0.9000000
#> ABLIM1 p Y406  -0.7000000  -0.5000000          NA  -1.0000000  -0.8000000
#> ABLIM1 p Y410   0.6000000  -1.0000000         1.0          NA   0.9000000
#> ABLIM1 p Y461   0.9428571   0.8000000        -0.5   0.9000000   0.8857143
#>               CTTN p Y162 CTTN p Y178 CTTN p Y199 CTTN p Y215 CTTN p Y228
#> ABLIM1 p Y357   0.7667699   0.7762238   0.5238095   0.7212121   0.8264706
#> ABLIM1 p Y373   0.6219780   0.7545455   0.4642857   0.6000000   0.7909091
#> ABLIM1 p Y383   0.3571429  -0.5000000   0.8928571   0.4000000   0.2500000
#> ABLIM1 p Y406  -0.5000000  -1.0000000  -1.0000000  -0.6000000   0.0000000
#> ABLIM1 p Y410   0.9000000   1.0000000   1.0000000   0.4000000   0.7000000
#> ABLIM1 p Y461   0.4857143   0.4000000   0.9000000   1.0000000   0.2000000
#>               CTTN p Y265 CTTN p Y289 CTTN p Y334 CTTN p Y421 CTTN p Y446
#> ABLIM1 p Y357   0.9058824         0.5   0.8667420   0.7820440   0.7296182
#> ABLIM1 p Y373   0.8251748         0.6   0.8147059   0.7764706   0.6923077
#> ABLIM1 p Y383   0.4642857          NA   0.3928571   0.4285714   0.8571429
#> ABLIM1 p Y406   0.6000000        -1.0  -0.6000000  -0.5000000   0.0000000
#> ABLIM1 p Y410   0.9000000          NA   0.7000000   0.3000000   0.8000000
#> ABLIM1 p Y461   0.9000000         1.0   0.9428571   0.9428571   0.9428571
#>               CTTN p Y453 CTTN p Y84 CTTN ubi K181 CTTN ubi K193 CTTN ubi K230
#> ABLIM1 p Y357   0.7535714         NA            NA            NA            NA
#> ABLIM1 p Y373   0.8241758          1            NA            NA            NA
#> ABLIM1 p Y383   0.3000000         NA            NA            NA            NA
#> ABLIM1 p Y406  -0.4000000         -1            NA            NA            NA
#> ABLIM1 p Y410   0.3000000         NA            NA            NA            NA
#> ABLIM1 p Y461   0.9000000         NA            NA            NA            NA
#>               CTTN ubi K272 DCBLD1 p S619 DCBLD1 p Y540 DCBLD1 p Y578
#> ABLIM1 p Y357            NA            NA           1.0           0.4
#> ABLIM1 p Y373            NA            NA           0.5           0.2
#> ABLIM1 p Y383            NA            NA           1.0            NA
#> ABLIM1 p Y406            NA            NA            NA            NA
#> ABLIM1 p Y410            NA            NA            NA            NA
#> ABLIM1 p Y461            NA            NA           1.0           0.5
#>               DCBLD1 p Y589 DCBLD1 p Y600 DNM2 p Y125; DNM3 p Y125 DNM2 p Y231
#> ABLIM1 p Y357     0.8308824     0.8382353                      0.4          NA
#> ABLIM1 p Y373     0.8285714     0.7934066                      0.4          NA
#> ABLIM1 p Y383     0.1000000     0.5000000                       NA          NA
#> ABLIM1 p Y406    -0.4000000    -0.4000000                       NA          NA
#> ABLIM1 p Y410     0.7000000     0.9000000                       NA          NA
#> ABLIM1 p Y461     0.7714286     0.9428571                       NA          NA
#>               EEF1A1 ack K146; EEF1A2 ack K146 EEF1A1 ack K172 EEF1A1 ack K179
#> ABLIM1 p Y357                        0.6911765       0.8153846       0.6923077
#> ABLIM1 p Y373                        0.5727273       0.6500000       0.3500000
#> ABLIM1 p Y383                        0.6571429       0.4000000              NA
#> ABLIM1 p Y406                       -0.5000000      -1.0000000       0.5000000
#> ABLIM1 p Y410                       -0.2000000      -0.5000000       1.0000000
#> ABLIM1 p Y461                        0.8000000      -0.5000000      -1.0000000
#>               EEF1A1 ack K255; EEF1A2 ack K255 EEF1A1 ack K392 EEF1A1 ack K395
#> ABLIM1 p Y357                               -1       0.3846154               1
#> ABLIM1 p Y373                               NA       0.1272727               1
#> ABLIM1 p Y383                               NA       0.4000000              NA
#> ABLIM1 p Y406                               NA       0.4000000              NA
#> ABLIM1 p Y410                               NA      -1.0000000              NA
#> ABLIM1 p Y461                               NA       0.3142857              NA
#>               EEF1A1 ack K408 EEF1A1 ack K41; EEF1A2 ack K41 EEF1A1 ack K439
#> ABLIM1 p Y357       0.7202797                            0.5              NA
#> ABLIM1 p Y373       0.7500000                           -1.0              NA
#> ABLIM1 p Y383       0.0000000                             NA              NA
#> ABLIM1 p Y406       1.0000000                             NA              NA
#> ABLIM1 p Y410       0.4000000                             NA              NA
#> ABLIM1 p Y461       0.5000000                             NA              NA
#>               EEF1A1 ack K44; EEF1A2 ack K44 EEF1A1 p T142; EEF1A2 p T142
#> ABLIM1 p Y357                             NA                           NA
#> ABLIM1 p Y373                             -1                           NA
#> ABLIM1 p Y383                             NA                           NA
#> ABLIM1 p Y406                             NA                           NA
#> ABLIM1 p Y410                             NA                           NA
#> ABLIM1 p Y461                             -1                           NA
#>               EEF1A1 p Y141; EEF1A2 p Y141 EEF1A1 p Y177
#> ABLIM1 p Y357                    0.5166573           0.7
#> ABLIM1 p Y373                    0.3147059          -0.2
#> ABLIM1 p Y383                    0.6428571            NA
#> ABLIM1 p Y406                   -0.7000000          -1.0
#> ABLIM1 p Y410                    0.1000000            NA
#> ABLIM1 p Y461                    0.4857143          -1.0
#>               EEF1A1 p Y29; EEF1A2 p Y29 EEF1A1 ubi K146; EEF1A2 ubi K146
#> ABLIM1 p Y357                  0.4670330                               -1
#> ABLIM1 p Y373                 -0.1666667                               -1
#> ABLIM1 p Y383                  0.5000000                               NA
#> ABLIM1 p Y406                  1.0000000                               -1
#> ABLIM1 p Y410                         NA                               -1
#> ABLIM1 p Y461                 -0.8000000                               NA
#>               EEF1A1 ubi K172 EEF1A1 ubi K179 EEF1A1 ubi K180 EEF1A1 ubi K212
#> ABLIM1 p Y357     -0.07142857              NA            -0.4       0.6242424
#> ABLIM1 p Y373      0.10000000              NA            -1.0       0.3571429
#> ABLIM1 p Y383      1.00000000              NA            -1.0       0.5428571
#> ABLIM1 p Y406              NA              NA             1.0      -1.0000000
#> ABLIM1 p Y410              NA              NA            -1.0      -0.5000000
#> ABLIM1 p Y461              NA              NA              NA       1.0000000
#>               EEF1A1 ubi K273 EEF1A1 ubi K392 EEF1A1 ubi K395 EEF1A1 ubi K408
#> ABLIM1 p Y357       0.5238095              NA       0.5714286       0.5604396
#> ABLIM1 p Y373       0.4285714              NA       0.5428571       0.5363636
#> ABLIM1 p Y383       1.0000000              NA       1.0000000       1.0000000
#> ABLIM1 p Y406              NA              NA              NA      -1.0000000
#> ABLIM1 p Y410      -1.0000000              NA      -1.0000000      -0.4000000
#> ABLIM1 p Y461       1.0000000              NA       1.0000000       1.0000000
#>               EEF1A1 ubi K439 EEF1A1 ubi K44; EEF1A2 ubi K44 EMC7 p S114
#> ABLIM1 p Y357       0.2857143                      0.3095238         0.8
#> ABLIM1 p Y373       0.4285714                      0.3571429         0.2
#> ABLIM1 p Y383       0.5000000                      1.0000000          NA
#> ABLIM1 p Y406              NA                             NA          NA
#> ABLIM1 p Y410      -1.0000000                     -1.0000000          NA
#> ABLIM1 p Y461       0.5000000                      0.4000000          NA
#>               EMC7 p T113 EZR ack K60 EZR ack K83
#> ABLIM1 p Y357         0.8         0.9   0.5166667
#> ABLIM1 p Y373         0.2        -0.2   0.4642857
#> ABLIM1 p Y383          NA          NA   0.2000000
#> ABLIM1 p Y406          NA         1.0   0.4000000
#> ABLIM1 p Y410          NA          NA  -1.0000000
#> ABLIM1 p Y461          NA          NA   0.5000000
#>               EZR p Y270; MSN p Y270; RDX p Y270 EZR p Y85 EZR ubi K139
#> ABLIM1 p Y357                          0.4857143      -1.0    0.4787879
#> ABLIM1 p Y373                          0.2000000       0.2    0.4523810
#> ABLIM1 p Y383                                 NA        NA    1.0000000
#> ABLIM1 p Y406                                 NA      -0.8           NA
#> ABLIM1 p Y410                                 NA      -1.0   -1.0000000
#> ABLIM1 p Y461                                 NA        NA    0.4000000
#>               EZR ubi K143 EZR ubi K162 EZR ubi K209 EZR ubi K211
#> ABLIM1 p Y357           NA    0.2857143           NA           NA
#> ABLIM1 p Y373           NA    0.4285714           NA           NA
#> ABLIM1 p Y383           NA    1.0000000           NA           NA
#> ABLIM1 p Y406           NA           NA           NA           NA
#> ABLIM1 p Y410           NA   -1.0000000           NA           NA
#> ABLIM1 p Y461           NA    1.0000000           NA           NA
#>               EZR ubi K237; MSN ubi K237; RDX ubi K237 EZR ubi K344
#> ABLIM1 p Y357                                0.5714286           NA
#> ABLIM1 p Y373                                0.6785714           NA
#> ABLIM1 p Y383                                1.0000000           NA
#> ABLIM1 p Y406                                       NA           NA
#> ABLIM1 p Y410                               -1.0000000           NA
#> ABLIM1 p Y461                                1.0000000           NA
#>               EZR ubi K35; MSN ubi K35 EZR ubi K450 EZR ubi K458 EZR ubi K60
#> ABLIM1 p Y357                        1           NA           NA   0.3714286
#> ABLIM1 p Y373                        1           NA           NA   0.3714286
#> ABLIM1 p Y383                       NA           NA           NA   1.0000000
#> ABLIM1 p Y406                       NA           NA           NA          NA
#> ABLIM1 p Y410                       NA           NA           NA  -1.0000000
#> ABLIM1 p Y461                       NA           NA           NA   1.0000000
#>               EZR ubi K72; RDX ubi K72 EZR ubi K79; RDX ubi K79 EZR ubi K83
#> ABLIM1 p Y357                       NA                0.5735294   0.4945055
#> ABLIM1 p Y373                       NA                0.4780220   0.5714286
#> ABLIM1 p Y383                       NA                0.3928571   0.7000000
#> ABLIM1 p Y406                       NA                0.5000000  -0.8000000
#> ABLIM1 p Y410                       NA               -0.7000000  -0.6000000
#> ABLIM1 p Y461                       NA                0.9000000   1.0000000
#>               FKBP4 ack K354 FKBP4 p Y411 FKBP4 ubi K28 FRS2 p Y306 FRS2 p Y349
#> ABLIM1 p Y357            0.5    0.8531903   -0.08571429   0.7506494   0.7303922
#> ABLIM1 p Y373             NA    0.7911765   -0.14285714   0.7529412   0.8323529
#> ABLIM1 p Y383             NA    0.5000000            NA   0.4285714   0.9000000
#> ABLIM1 p Y406             NA    0.6000000    1.00000000  -0.3000000  -0.3000000
#> ABLIM1 p Y410             NA    0.9000000   -1.00000000   0.1000000   0.3000000
#> ABLIM1 p Y461             NA    0.6000000            NA   0.8285714   0.9428571
#>               FRS2 p Y392 HNRNPF ack K167 HNRNPF ack K98 HNRNPF p Y210
#> ABLIM1 p Y357   0.3714286            -0.6      0.8214286     0.8678571
#> ABLIM1 p Y373   0.9428571             0.4      1.0000000     0.8545455
#> ABLIM1 p Y383          NA              NA     -1.0000000     0.6071429
#> ABLIM1 p Y406          NA              NA             NA     1.0000000
#> ABLIM1 p Y410          NA              NA             NA     0.8000000
#> ABLIM1 p Y461          NA             1.0      1.0000000     1.0000000
#>               HNRNPF p Y253 HNRNPF p Y266 HNRNPF ubi K167 HNRNPF ubi K224
#> ABLIM1 p Y357     0.8818182     0.7714286       0.2454545       0.2484848
#> ABLIM1 p Y373     0.8095238     0.5357143       0.3090909       0.5166667
#> ABLIM1 p Y383     0.2000000     0.4000000       0.4000000       1.0000000
#> ABLIM1 p Y406     0.8000000    -0.5000000       0.5000000      -1.0000000
#> ABLIM1 p Y410    -1.0000000     0.5000000      -0.8000000      -1.0000000
#> ABLIM1 p Y461     0.8000000     0.7000000       0.2000000       1.0000000
#>               HNRNPF ubi K299 HNRNPF ubi K98 HNRNPH2 p Y276 HNRNPH2 p Y306
#> ABLIM1 p Y357             0.3            0.2            1.0              1
#> ABLIM1 p Y373             0.4            0.5            0.9             -1
#> ABLIM1 p Y383             1.0             NA             NA             NA
#> ABLIM1 p Y406              NA             NA           -0.5             NA
#> ABLIM1 p Y410             1.0             NA            1.0             NA
#> ABLIM1 p Y461             1.0             NA            1.0             NA
#>               HNRNPH2 ubi K35 HNRNPU ack K265 HNRNPU ack K343 HNRNPU ack K352
#> ABLIM1 p Y357              -1       0.8571429            -0.2       0.2666667
#> ABLIM1 p Y373              -1       0.5000000             0.0       0.1190476
#> ABLIM1 p Y383              NA              NA              NA      -1.0000000
#> ABLIM1 p Y406              NA       1.0000000            -0.5       1.0000000
#> ABLIM1 p Y410              NA              NA            -1.0      -1.0000000
#> ABLIM1 p Y461              NA       1.0000000             1.0      -0.4000000
#>               HNRNPU ack K464 HNRNPU ack K565 HNRNPU ack K635 HNRNPU ack K814
#> ABLIM1 p Y357               1       0.8452012       0.7922078       0.9523810
#> ABLIM1 p Y373               1       0.8593407       0.7647059       0.9000000
#> ABLIM1 p Y383              NA       0.8000000       1.0000000       0.7714286
#> ABLIM1 p Y406              NA      -0.5000000      -0.1000000      -1.0000000
#> ABLIM1 p Y410              NA       0.5000000       0.3000000       1.0000000
#> ABLIM1 p Y461              NA       0.7714286       0.9428571       1.0000000
#>               HNRNPU p S271 HNRNPU p Y257 HNRNPU p Y260 HNRNPU p Y473
#> ABLIM1 p Y357     0.6190476           0.0            NA    0.30952381
#> ABLIM1 p Y373     0.4285714           0.5            NA    0.03571429
#> ABLIM1 p Y383     1.0000000            NA            NA            NA
#> ABLIM1 p Y406            NA            NA            NA   -1.00000000
#> ABLIM1 p Y410     1.0000000            NA            NA            NA
#> ABLIM1 p Y461     0.4000000           1.0            NA   -0.50000000
#>               HNRNPU ubi K186 HNRNPU ubi K265 HNRNPU ubi K352 HNRNPU ubi K433
#> ABLIM1 p Y357             0.2              NA       0.2380952             0.2
#> ABLIM1 p Y373            -1.0              NA       0.3571429             0.2
#> ABLIM1 p Y383              NA              NA       0.5000000             1.0
#> ABLIM1 p Y406              NA              NA      -1.0000000              NA
#> ABLIM1 p Y410              NA              NA      -1.0000000            -1.0
#> ABLIM1 p Y461              NA              NA       0.5000000             1.0
#>               HNRNPU ubi K464 HNRNPU ubi K524 HNRNPU ubi K635 HSPA1B ack K246
#> ABLIM1 p Y357       0.6363636       0.3333333            -0.4       0.6363636
#> ABLIM1 p Y373       0.6666667       0.4000000            -0.5       0.3571429
#> ABLIM1 p Y383       1.0000000       0.9000000              NA      -1.0000000
#> ABLIM1 p Y406      -1.0000000      -1.0000000              NA       1.0000000
#> ABLIM1 p Y410       0.5000000      -0.5000000            -1.0      -1.0000000
#> ABLIM1 p Y461       1.0000000       0.8000000              NA      -1.0000000
#>               HSPA1B ack K319; HSPA6 ack K321 HSPA1B ack K348
#> ABLIM1 p Y357                       0.7857143             0.8
#> ABLIM1 p Y373                       0.3000000            -0.5
#> ABLIM1 p Y383                              NA              NA
#> ABLIM1 p Y406                              NA             1.0
#> ABLIM1 p Y410                              NA              NA
#> ABLIM1 p Y461                       1.0000000             1.0
#>               HSPA1B ack K500; HSPA6 ack K502
#> ABLIM1 p Y357                       0.2857143
#> ABLIM1 p Y373                      -0.7142857
#> ABLIM1 p Y383                              NA
#> ABLIM1 p Y406                       0.5000000
#> ABLIM1 p Y410                       1.0000000
#> ABLIM1 p Y461                       1.0000000
#>               HSPA1B p Y41; HSPA8 p Y41; HSPA6 p Y43; HSPA1L p Y43; HSPA2 p Y42
#> ABLIM1 p Y357                                                         0.6166667
#> ABLIM1 p Y373                                                         0.8333333
#> ABLIM1 p Y383                                                        -1.0000000
#> ABLIM1 p Y406                                                        -1.0000000
#> ABLIM1 p Y410                                                         1.0000000
#> ABLIM1 p Y461                                                         0.5000000
#>               HSPA1B ubi K126 HSPA1B ubi K325 HSPA1B ubi K423; HSPA1L ubi K425
#> ABLIM1 p Y357       0.5714286             0.1                              0.2
#> ABLIM1 p Y373       0.5818182             0.2                              0.2
#> ABLIM1 p Y383       0.8000000              NA                              0.5
#> ABLIM1 p Y406      -1.0000000              NA                              1.0
#> ABLIM1 p Y410      -0.5000000              NA                             -1.0
#> ABLIM1 p Y461       0.8000000              NA                              0.2
#>               HSPA1B ubi K451; HSPA6 ubi K453; HSPA1L ubi K453
#> ABLIM1 p Y357                                        0.2500000
#> ABLIM1 p Y373                                        0.3714286
#> ABLIM1 p Y383                                        1.0000000
#> ABLIM1 p Y406                                               NA
#> ABLIM1 p Y410                                       -1.0000000
#> ABLIM1 p Y461                                        1.0000000
#>               HSPA1B ubi K507; HSPA8 ubi K507; HSPA6 ubi K509; HSPA1L ubi K509
#> ABLIM1 p Y357                                                               NA
#> ABLIM1 p Y373                                                               NA
#> ABLIM1 p Y383                                                               NA
#> ABLIM1 p Y406                                                               NA
#> ABLIM1 p Y410                                                               NA
#> ABLIM1 p Y461                                                               NA
#>               HSPA1B ubi K507; HSPA8 ubi K507; HSPA6 ubi K509; HSPA1L ubi K509; HSPA2 ubi K510
#> ABLIM1 p Y357                                                                        0.4285714
#> ABLIM1 p Y373                                                                        0.4857143
#> ABLIM1 p Y383                                                                        1.0000000
#> ABLIM1 p Y406                                                                               NA
#> ABLIM1 p Y410                                                                       -1.0000000
#> ABLIM1 p Y461                                                                        1.0000000
#>               HSPA1B ubi K512; HSPA1L ubi K514 HSPA1B ubi K524 HSPA1B ubi K539
#> ABLIM1 p Y357                               NA       0.3964286            -0.4
#> ABLIM1 p Y373                               NA       0.4181818             1.0
#> ABLIM1 p Y383                               NA       0.9428571              NA
#> ABLIM1 p Y406                               NA      -0.4000000            -0.5
#> ABLIM1 p Y410                               NA      -0.8000000             1.0
#> ABLIM1 p Y461                               NA       1.0000000              NA
#>               HSPA1B ubi K550 HSPA1B ubi K56 HSPA1B ubi K597 HSPA1B ubi K628
#> ABLIM1 p Y357             0.4      0.4047619       0.3214286       0.4303030
#> ABLIM1 p Y373             0.5      0.4285714       0.4285714       0.5714286
#> ABLIM1 p Y383              NA      1.0000000       0.5000000       1.0000000
#> ABLIM1 p Y406              NA     -1.0000000              NA      -1.0000000
#> ABLIM1 p Y410              NA     -0.5000000      -1.0000000      -1.0000000
#> ABLIM1 p Y461              NA      1.0000000       0.5000000       1.0000000
#>               HSPA9 ack K135 HSPA9 ack K159 HSPA9 ack K300 HSPA9 ack K600
#> ABLIM1 p Y357            0.2      0.8666667            0.5              1
#> ABLIM1 p Y373           -1.0      0.8095238            1.0              1
#> ABLIM1 p Y383            1.0      0.4000000             NA             NA
#> ABLIM1 p Y406             NA      1.0000000             NA             NA
#> ABLIM1 p Y410             NA      0.5000000             NA             NA
#> ABLIM1 p Y461             NA      0.5000000            1.0             NA
#>               HSPA9 p Y161 HSPA9 ubi K121 LARP1 p Y361
#> ABLIM1 p Y357          0.5      0.3714286    0.4901961
#> ABLIM1 p Y373          0.3      0.3714286    0.4461538
#> ABLIM1 p Y383           NA      1.0000000    0.2000000
#> ABLIM1 p Y406           NA      1.0000000   -0.4000000
#> ABLIM1 p Y410           NA     -1.0000000    0.2000000
#> ABLIM1 p Y461          1.0      1.0000000    0.5428571
#>               LCK p T395; FYN p T421; YES1 p T427 LCK p Y192 LCK p Y394
#> ABLIM1 p Y357                                  NA        1.0  0.7786561
#> ABLIM1 p Y373                                  NA        0.5  0.4823529
#> ABLIM1 p Y383                                  NA         NA  0.8571429
#> ABLIM1 p Y406                                  NA       -1.0  0.0000000
#> ABLIM1 p Y410                                  NA         NA  0.9000000
#> ABLIM1 p Y461                                  NA        1.0  0.5428571
#>               LCK p Y394; FYN p Y420; YES1 p Y426 LCK p Y505 MERTK p Y549
#> ABLIM1 p Y357                                  NA          1          0.6
#> ABLIM1 p Y373                                  NA          1          0.8
#> ABLIM1 p Y383                                  NA         NA         -1.0
#> ABLIM1 p Y406                                  NA         NA          1.0
#> ABLIM1 p Y410                                  NA         NA          0.5
#> ABLIM1 p Y461                                  NA         NA           NA
#>               MERTK p Y929 MERTK ubi K856 MET ack K1248 MET p S1236 MET p S990
#> ABLIM1 p Y357    0.8147059      0.6945304     0.5952381   0.7213622       -0.6
#> ABLIM1 p Y373    0.8951049      0.6263736     0.7714286   0.5329670       -0.8
#> ABLIM1 p Y383    0.3000000      0.7500000     0.4000000   0.7000000        0.5
#> ABLIM1 p Y406    1.0000000      0.5000000            NA  -1.0000000       -1.0
#> ABLIM1 p Y410    0.8000000      0.6000000    -1.0000000   0.6000000       -0.5
#> ABLIM1 p Y461    0.9000000      0.8000000     0.5000000   1.0000000       -1.0
#>               MET p Y1003 MET p Y1230 MET p Y1234 MET p Y1235 MET p Y1349
#> ABLIM1 p Y357   0.8186275         1.0   0.8255639   0.8990974    0.952381
#> ABLIM1 p Y373   0.8637363         0.4   0.9264706   0.9892857    0.952381
#> ABLIM1 p Y383   0.9000000         1.0   0.9000000   0.5357143    0.400000
#> ABLIM1 p Y406  -0.8000000          NA   0.0000000   0.0000000    0.500000
#> ABLIM1 p Y410   0.4000000         1.0   0.9000000   0.9000000    0.800000
#> ABLIM1 p Y461   0.9428571         0.5   1.0000000   0.8857143    0.500000
#>               MET p Y1356 MET p Y1365 MET ubi K1161 MET ubi K1190 MET ubi K1232
#> ABLIM1 p Y357    0.952381   0.7934066     0.7142857     0.3916084           1.0
#> ABLIM1 p Y373    0.952381   0.9020979     0.7142857     0.5314685           0.5
#> ABLIM1 p Y383    0.400000   0.5000000     1.0000000     0.2000000           1.0
#> ABLIM1 p Y406    0.500000   0.5000000     1.0000000     1.0000000            NA
#> ABLIM1 p Y410    0.800000   0.3000000     1.0000000    -0.2000000           0.5
#> ABLIM1 p Y461    0.500000   0.9000000     1.0000000     0.4000000           1.0
#>               MET ubi K1259 MET ubi K1318 MET ubi K962 MYH9 ack K1014
#> ABLIM1 p Y357     0.5439560           0.5          0.5            0.4
#> ABLIM1 p Y373     0.5545455           0.5          0.8            1.0
#> ABLIM1 p Y383     0.6000000            NA          1.0             NA
#> ABLIM1 p Y406    -0.8000000           1.0         -1.0             NA
#> ABLIM1 p Y410    -0.4000000           0.5           NA             NA
#> ABLIM1 p Y461    -0.4000000            NA          1.0            1.0
#>               MYH9 ack K1387 MYH9 ack K1492 MYH9 ack K1525 MYH9 ack K1527
#> ABLIM1 p Y357            0.6            1.0             NA             NA
#> ABLIM1 p Y373           -0.3            1.0             NA             NA
#> ABLIM1 p Y383            1.0            0.5             NA             NA
#> ABLIM1 p Y406            1.0             NA             NA             NA
#> ABLIM1 p Y410            1.0             NA             NA             NA
#> ABLIM1 p Y461           -0.5            0.5             NA             NA
#>               MYH9 ack K1538 MYH9 ack K1793 MYH9 ack K1802 MYH9 ack K1828
#> ABLIM1 p Y357      0.5428571             NA             -1             NA
#> ABLIM1 p Y373      1.0000000             NA             -1             NA
#> ABLIM1 p Y383     -1.0000000             NA             -1             NA
#> ABLIM1 p Y406             NA             NA             NA             NA
#> ABLIM1 p Y410             NA             NA             -1             NA
#> ABLIM1 p Y461             NA             NA             -1             NA
#>               MYH9 ack K299 MYH9 ack K355 MYH9 ack K47 MYH9 ack K545
#> ABLIM1 p Y357           0.4     0.8545455         -0.5           0.2
#> ABLIM1 p Y373           0.5     0.7714286           NA           0.8
#> ABLIM1 p Y383            NA     0.3928571           NA            NA
#> ABLIM1 p Y406            NA     1.0000000           NA            NA
#> ABLIM1 p Y410            NA     0.5000000           NA            NA
#> ABLIM1 p Y461          -1.0     1.0000000           NA            NA
#>               MYH9 ack K565; MYH10 ack K572 MYH9 ack K613 MYH9 ack K651
#> ABLIM1 p Y357                   -0.08571429     0.1000000             1
#> ABLIM1 p Y373                    0.50000000     0.4857143             1
#> ABLIM1 p Y383                            NA     1.0000000             1
#> ABLIM1 p Y406                            NA    -1.0000000            NA
#> ABLIM1 p Y410                            NA    -1.0000000             1
#> ABLIM1 p Y461                   -1.00000000     1.0000000             1
#>               MYH9 ack K682; MYH10 ack K689 MYH9 ack K74 MYH9 ack K8
#> ABLIM1 p Y357                          -0.4            1          -1
#> ABLIM1 p Y373                          -1.0            1           1
#> ABLIM1 p Y383                          -1.0            1          NA
#> ABLIM1 p Y406                            NA           NA          NA
#> ABLIM1 p Y410                          -1.0            1          NA
#> ABLIM1 p Y461                            NA            1          -1
#>               MYH9 ack K821; MYH10 ack K828; MYH11 ack K828; MYH14 ack K845
#> ABLIM1 p Y357                                                           0.5
#> ABLIM1 p Y373                                                           1.0
#> ABLIM1 p Y383                                                          -0.5
#> ABLIM1 p Y406                                                            NA
#> ABLIM1 p Y410                                                           1.0
#> ABLIM1 p Y461                                                           1.0
#>               MYH9 ack K882 MYH9 p Y11 MYH9 p Y1408 MYH9 p Y1805 MYH9 p Y754
#> ABLIM1 p Y357            -1  0.8723885   0.08571429          1.0   0.5692308
#> ABLIM1 p Y373            NA  0.8441176  -0.30000000          0.5   0.4090909
#> ABLIM1 p Y383             1  0.3928571           NA           NA   0.4000000
#> ABLIM1 p Y406            NA -0.4000000           NA          1.0  -1.0000000
#> ABLIM1 p Y410            NA  0.6000000           NA           NA  -1.0000000
#> ABLIM1 p Y461            NA  1.0000000  -1.00000000           NA   0.6000000
#>                MYH9 p Y9 MYH9 ubi K102 MYH9 ubi K14 MYH9 ubi K1415
#> ABLIM1 p Y357  0.6647059     0.4285714    0.7142857             NA
#> ABLIM1 p Y373  0.6928571     0.4285714    0.7142857             NA
#> ABLIM1 p Y383  0.7000000     1.0000000    0.5000000             NA
#> ABLIM1 p Y406 -0.9000000    -1.0000000           NA             NA
#> ABLIM1 p Y410  0.3000000    -1.0000000   -1.0000000             NA
#> ABLIM1 p Y461  0.8857143     1.0000000    0.5000000             NA
#>               MYH9 ubi K1638 MYH9 ubi K186 MYH9 ubi K299 MYH9 ubi K373
#> ABLIM1 p Y357             NA           0.4     0.6785714           0.4
#> ABLIM1 p Y373             NA           0.4     0.4285714           0.4
#> ABLIM1 p Y383             NA            NA     0.8000000           0.5
#> ABLIM1 p Y406             NA            NA            NA            NA
#> ABLIM1 p Y410             NA          -1.0    -0.5000000            NA
#> ABLIM1 p Y461             NA            NA     0.8000000           0.5
#>               MYH9 ubi K576; MYH10 ubi K583 MYH9 ubi K651
#> ABLIM1 p Y357                           0.1   -0.10714286
#> ABLIM1 p Y373                           0.4   -0.08571429
#> ABLIM1 p Y383                            NA    1.00000000
#> ABLIM1 p Y406                            NA   -0.50000000
#> ABLIM1 p Y410                          -1.0   -0.50000000
#> ABLIM1 p Y461                            NA    1.00000000
#>               MYH9 ubi K682; MYH10 ubi K689 MYH9 ubi K760
#> ABLIM1 p Y357                     0.5666667     0.6428571
#> ABLIM1 p Y373                     0.6000000     0.3571429
#> ABLIM1 p Y383                     0.8000000     1.0000000
#> ABLIM1 p Y406                    -1.0000000            NA
#> ABLIM1 p Y410                    -0.5000000    -0.5000000
#> ABLIM1 p Y461                     0.8000000     1.0000000
#>               MYH9 ubi K82; MYH10 ubi K86
#> ABLIM1 p Y357                    0.452381
#> ABLIM1 p Y373                    0.300000
#> ABLIM1 p Y383                    1.000000
#> ABLIM1 p Y406                   -1.000000
#> ABLIM1 p Y410                    1.000000
#> ABLIM1 p Y461                    1.000000
#>               MYH9 ubi K821; MYH10 ubi K828; MYH11 ubi K828; MYH14 ubi K845
#> ABLIM1 p Y357                                                     0.4761905
#> ABLIM1 p Y373                                                     0.2857143
#> ABLIM1 p Y383                                                     0.8000000
#> ABLIM1 p Y406                                                            NA
#> ABLIM1 p Y410                                                    -0.5000000
#> ABLIM1 p Y461                                                     0.8000000
#>               MYH9 ubi K821; MYH10 ubi K828; MYH14 ubi K845 MYH9 ubi K833
#> ABLIM1 p Y357                                            NA     0.3928571
#> ABLIM1 p Y373                                            NA     0.2857143
#> ABLIM1 p Y383                                            NA     0.4000000
#> ABLIM1 p Y406                                            NA            NA
#> ABLIM1 p Y410                                            NA    -1.0000000
#> ABLIM1 p Y461                                            NA     0.4000000
#>               MYH9 ubi K850 MYH9 ubi K856 MYH9 ubi K860 MYO18A p Y700
#> ABLIM1 p Y357          -0.5           0.4           0.3            NA
#> ABLIM1 p Y373          -1.0          -0.5           0.4            NA
#> ABLIM1 p Y383            NA           1.0           1.0            NA
#> ABLIM1 p Y406            NA            NA            NA            NA
#> ABLIM1 p Y410          -1.0          -0.5          -1.0            NA
#> ABLIM1 p Y461            NA           1.0            NA            NA
#>               NFS1 p Y80 NSFL1C ack K172 NSFL1C p Y167 NSFL1C p Y95
#> ABLIM1 p Y357         NA             0.5     0.8926729    0.7142857
#> ABLIM1 p Y373         NA            -0.4     0.7670330    0.8857143
#> ABLIM1 p Y383         NA              NA     1.0000000   -1.0000000
#> ABLIM1 p Y406         NA              NA     0.8000000    0.8000000
#> ABLIM1 p Y410         NA              NA     1.0000000    0.8000000
#> ABLIM1 p Y461         NA              NA     0.6571429    1.0000000
#>               NSFL1C ubi K124 NSFL1C ubi K127 NSFL1C ubi K172 OAT p Y126
#> ABLIM1 p Y357       0.5476190              NA       0.4787879         NA
#> ABLIM1 p Y373       0.5714286              NA       0.2666667         NA
#> ABLIM1 p Y383       0.5000000              NA       1.0000000         NA
#> ABLIM1 p Y406              NA              NA      -1.0000000         NA
#> ABLIM1 p Y410      -1.0000000              NA      -0.4000000         NA
#> ABLIM1 p Y461       0.5000000              NA       1.0000000         NA
#>               OAT p Y69 ORAI1 p Y300 OXCT1 ack K418 OXCT1 ack K473 PARD3 p S715
#> ABLIM1 p Y357       0.4    0.9384615           0.75              1    0.7482517
#> ABLIM1 p Y373       0.1    0.9230769           0.90             -1    0.7062937
#> ABLIM1 p Y383        NA    1.0000000             NA             NA    0.2000000
#> ABLIM1 p Y406      -1.0   -1.0000000             NA             NA   -0.1000000
#> ABLIM1 p Y410      -1.0    1.0000000             NA             NA    0.2000000
#> ABLIM1 p Y461        NA    1.0000000           1.00             NA    0.9000000
#>               PARD3 p S717 PARD3 p S728 PARD3 p Y1080 PARD3 p Y1127
#> ABLIM1 p Y357           -1          0.5     0.8105263     0.5428571
#> ABLIM1 p Y373           -1          0.8     0.7714286     0.3636364
#> ABLIM1 p Y383           -1          1.0     0.5357143     0.7000000
#> ABLIM1 p Y406           NA         -1.0    -0.6000000    -0.2000000
#> ABLIM1 p Y410           NA           NA     1.0000000    -0.4000000
#> ABLIM1 p Y461           NA          1.0     0.8857143     0.4000000
#>               PARD3 p Y1177 PARD3 p Y1310 PARD3 p Y388 PARD3 p Y489
#> ABLIM1 p Y357            NA     0.8333333            1    0.8750000
#> ABLIM1 p Y373            NA     0.4642857           NA    0.6538462
#> ABLIM1 p Y383            NA     1.0000000           NA    0.8000000
#> ABLIM1 p Y406            NA    -0.5000000           NA   -0.3000000
#> ABLIM1 p Y410            NA     1.0000000           NA    1.0000000
#> ABLIM1 p Y461            NA     0.5000000           NA    0.7142857
#>               PARD3 p Y719 PARD3 p Y933 PDZD11 p Y36 PDZD11 p Y7 PHB2 p Y248
#> ABLIM1 p Y357    0.8897059    0.8166667    0.8601399   0.6272727   0.7088235
#> ABLIM1 p Y373    0.8357143    0.8166667    0.9505495   0.8090909   0.4545455
#> ABLIM1 p Y383    0.8000000    0.2000000    0.9000000   0.5000000   0.6000000
#> ABLIM1 p Y406   -0.5000000    1.0000000   -1.0000000  -0.8000000  -0.8000000
#> ABLIM1 p Y410    0.7000000    0.4000000    1.0000000  -0.2000000   1.0000000
#> ABLIM1 p Y461    0.8857143    0.5000000    0.9428571   1.0000000   0.4000000
#>               PHB2 p Y77 PHLDB2 p Y162 PHLDB2 p Y301 PHLDB2 p Y567
#> ABLIM1 p Y357        1.0     0.6785714     0.8666667     0.9230769
#> ABLIM1 p Y373        0.5     0.3928571     0.9047619     0.8945055
#> ABLIM1 p Y383         NA     1.0000000     0.8000000     0.9000000
#> ABLIM1 p Y406       -1.0     1.0000000    -0.5000000    -0.8000000
#> ABLIM1 p Y410         NA     1.0000000     0.4000000     0.7000000
#> ABLIM1 p Y461        1.0     0.7000000     0.9000000     0.8285714
#>               PI4K2A p Y402 PI4K2A ubi K240 PI4K2A ubi K268 PI4K2A ubi K336
#> ABLIM1 p Y357     0.3714286              NA       0.7714286       0.6363636
#> ABLIM1 p Y373     0.3928571              NA       0.8000000       0.5757576
#> ABLIM1 p Y383            NA              NA       1.0000000       1.0000000
#> ABLIM1 p Y406    -0.5000000              NA              NA      -1.0000000
#> ABLIM1 p Y410    -1.0000000              NA       1.0000000      -0.4000000
#> ABLIM1 p Y461     1.0000000              NA              NA       1.0000000
#>               PIK3R2 p Y460 PIK3R2 p Y464 PIK3R2 p Y505 PIK3R2 p Y577
#> ABLIM1 p Y357    0.76491228     0.5472527            NA             1
#> ABLIM1 p Y373    0.46785714     0.4424242            NA            NA
#> ABLIM1 p Y383    0.80000000     1.0000000            NA            NA
#> ABLIM1 p Y406    0.50000000     0.5000000            NA            NA
#> ABLIM1 p Y410    0.80000000     1.0000000            NA            NA
#> ABLIM1 p Y461    0.08571429     0.3000000            NA            NA
#>               PKP4 p S273 PKP4 p S281 PKP4 p S406 PKP4 p T1174 PKP4 p T412
#> ABLIM1 p Y357          NA   0.9151515         1.0    0.8531469         0.2
#> ABLIM1 p Y373          NA   0.8181818        -0.5    0.6484848         0.2
#> ABLIM1 p Y383          NA   1.0000000          NA    0.3000000        -1.0
#> ABLIM1 p Y406          NA  -1.0000000        -1.0    0.6000000         0.5
#> ABLIM1 p Y410          NA   1.0000000          NA    0.8000000        -1.0
#> ABLIM1 p Y461          NA   1.0000000        -1.0    0.3142857         1.0
#>               PKP4 p T419 PKP4 p T477 PKP4 p Y1094 PKP4 p Y1115 PKP4 p Y1132
#> ABLIM1 p Y357   0.4857143   0.8204404    0.7378741    0.8823529     0.769697
#> ABLIM1 p Y373   0.4857143   0.6352941    0.7911765    0.7857143     0.800000
#> ABLIM1 p Y383  -1.0000000   0.7500000    0.6000000    0.6071429           NA
#> ABLIM1 p Y406   0.5000000  -0.4000000   -0.9000000   -0.3000000    -1.000000
#> ABLIM1 p Y410   1.0000000   0.5000000    1.0000000    1.0000000     1.000000
#> ABLIM1 p Y461   1.0000000   0.3714286    0.9428571    1.0000000     1.000000
#>               PKP4 p Y114 PKP4 p Y1143 PKP4 p Y1156 PKP4 p Y1168 PKP4 p Y1172
#> ABLIM1 p Y357   0.6705882    0.8857143    0.8846154    0.8181818    0.7333333
#> ABLIM1 p Y373   0.4405594    0.8857143    0.8637363    0.7705882    0.4642857
#> ABLIM1 p Y383   0.8000000    0.5000000    0.3000000    0.4285714    0.2000000
#> ABLIM1 p Y406  -0.9000000   -1.0000000   -0.4000000    0.0000000    0.8000000
#> ABLIM1 p Y410   0.4000000    1.0000000    0.9000000    0.7000000    0.5000000
#> ABLIM1 p Y461   0.8857143    1.0000000    0.9000000    0.9428571    0.5000000
#>               PKP4 p Y157 PKP4 p Y224 PKP4 p Y275 PKP4 p Y306 PKP4 p Y369
#> ABLIM1 p Y357   0.9615385   0.8725490   0.9151515          NA   0.6428571
#> ABLIM1 p Y373   0.9166667   0.8785714   0.8181818          NA   0.6428571
#> ABLIM1 p Y383   0.2000000   0.3000000   1.0000000          NA  -1.0000000
#> ABLIM1 p Y406  -0.8000000   0.8000000  -1.0000000          NA   0.2000000
#> ABLIM1 p Y410   0.5000000   0.9000000   1.0000000          NA   0.2000000
#> ABLIM1 p Y461   0.9000000   0.9000000   1.0000000          NA          NA
#>               PKP4 p Y372 PKP4 p Y390 PKP4 p Y415 PKP4 p Y420 PKP4 p Y421
#> ABLIM1 p Y357   0.8601504   0.9313725   0.8725275   0.8270677   0.9192982
#> ABLIM1 p Y373   0.8058824   0.8725275   0.6000000   0.7274725   0.9058824
#> ABLIM1 p Y383   0.5357143   1.0000000   0.2000000   0.3000000   0.5000000
#> ABLIM1 p Y406  -0.7000000  -1.0000000  -1.0000000  -0.4000000   0.0000000
#> ABLIM1 p Y410   0.6000000   1.0000000   1.0000000   0.8000000   0.7000000
#> ABLIM1 p Y461   0.9428571   0.9428571   1.0000000   1.0000000   0.8857143
#>               PKP4 p Y425 PKP4 p Y443 PKP4 p Y465 PKP4 p Y470 PKP4 p Y478
#> ABLIM1 p Y357   0.8060606         0.5         0.5   0.7990196   0.6631579
#> ABLIM1 p Y373   0.7454545         1.0         0.8   0.7794118   0.6058824
#> ABLIM1 p Y383   0.8000000         1.0          NA   0.5000000   0.7000000
#> ABLIM1 p Y406   0.4000000          NA        -1.0  -0.1000000  -0.3000000
#> ABLIM1 p Y410   1.0000000         1.0          NA   0.9000000   0.9000000
#> ABLIM1 p Y461   0.8000000         1.0         1.0   0.8857143   0.7142857
#>               PKP4 p Y482 PKP4 p Y494 PKP4 ubi K518
#> ABLIM1 p Y357   0.7619048   0.6071429            NA
#> ABLIM1 p Y373   0.6904762   0.4857143            NA
#> ABLIM1 p Y383   0.5000000  -1.0000000            NA
#> ABLIM1 p Y406   0.5000000          NA            NA
#> ABLIM1 p Y410   0.8000000   1.0000000            NA
#> ABLIM1 p Y461   0.8000000  -1.0000000            NA
#>               PKP4 ubi K518; CTNND2 ubi K540 PLEKHA6 p S472 PLEKHA6 p S478
#> ABLIM1 p Y357                            0.5            0.8            0.5
#> ABLIM1 p Y373                            0.5            0.5            1.0
#> ABLIM1 p Y383                            0.5             NA             NA
#> ABLIM1 p Y406                             NA            1.0             NA
#> ABLIM1 p Y410                           -1.0            1.0            1.0
#> ABLIM1 p Y461                            0.5             NA             NA
#>               PLEKHA6 p Y1044 PLEKHA6 p Y404 PLEKHA6 p Y415 PLEKHA6 p Y471
#> ABLIM1 p Y357             0.6      0.6904762      0.8857143      0.8545455
#> ABLIM1 p Y373             0.0      0.6904762      0.8857143      0.7939394
#> ABLIM1 p Y383             1.0      1.0000000      1.0000000      0.3000000
#> ABLIM1 p Y406            -1.0     -0.5000000      1.0000000     -0.2000000
#> ABLIM1 p Y410             1.0      1.0000000      1.0000000      0.8000000
#> ABLIM1 p Y461             0.5      1.0000000      1.0000000      0.8000000
#>               PLEKHA6 p Y492 PLEKHA6 p Y498 PLEKHA6 p Y729 PRRC2A ack K35
#> ABLIM1 p Y357      0.7323529      0.8041958            0.5             NA
#> ABLIM1 p Y373      0.7362637      0.8406593            1.0             NA
#> ABLIM1 p Y383      0.5714286      0.4000000             NA             NA
#> ABLIM1 p Y406     -0.2000000     -0.1000000             NA             NA
#> ABLIM1 p Y410      0.3000000      0.7000000             NA             NA
#> ABLIM1 p Y461      1.0000000      1.0000000             NA             NA
#>               PRRC2A p Y17 PSMC1 ack K258 PSMC1 p Y25 PSMC1 p Y439 PSMC1 p Y71
#> ABLIM1 p Y357    0.8285714      0.7857143   0.7142857    0.8909091   0.8666667
#> ABLIM1 p Y373    0.8769231      0.3000000   0.6666667    0.8391608   0.8666667
#> ABLIM1 p Y383    0.4000000             NA   1.0000000    0.8000000   0.8000000
#> ABLIM1 p Y406    0.4000000             NA  -1.0000000   -1.0000000  -0.5000000
#> ABLIM1 p Y410    0.7000000             NA   1.0000000    1.0000000   0.4000000
#> ABLIM1 p Y461    1.0000000     -0.5000000   0.4000000    0.8000000   0.5000000
#>               PSMC1 ubi K237 PSMC1 ubi K258 PSMC1 ubi K293 PSMC1 ubi K396
#> ABLIM1 p Y357            0.4      0.2969697            0.8             NA
#> ABLIM1 p Y373            0.4      0.2619048            0.8             NA
#> ABLIM1 p Y383             NA      0.5000000            0.5             NA
#> ABLIM1 p Y406             NA     -1.0000000             NA             NA
#> ABLIM1 p Y410             NA     -1.0000000           -1.0             NA
#> ABLIM1 p Y461             NA      0.5000000            0.5             NA
#>               PSMC1 ubi K430 PSMC1 ubi K69 PSMC1 ubi K91 PTPN11 p S580
#> ABLIM1 p Y357            1.0           0.3            -1          -0.2
#> ABLIM1 p Y373            1.0           0.8            -1           0.8
#> ABLIM1 p Y383            0.5           0.5            NA          -1.0
#> ABLIM1 p Y406           -1.0            NA            NA           1.0
#> ABLIM1 p Y410             NA            NA            -1          -1.0
#> ABLIM1 p Y461            0.8           0.5            NA          -1.0
#>               PTPN11 p S595 PTPN11 p T547 PTPN11 p Y279 PTPN11 p Y515
#> ABLIM1 p Y357     0.8962406            NA     0.5604396           0.8
#> ABLIM1 p Y373     0.8823529            NA     0.7727273           0.5
#> ABLIM1 p Y383     0.8000000            NA     0.3000000            NA
#> ABLIM1 p Y406     0.1000000            NA     0.5000000            NA
#> ABLIM1 p Y410     0.7000000            NA     0.8000000            NA
#> ABLIM1 p Y461     0.8857143            NA     0.4000000            NA
#>               PTPN11 p Y519 PTPN11 p Y546 PTPN11 p Y584 PTPN11 p Y62
#> ABLIM1 p Y357           0.1     0.7637363     0.8238283    0.5924812
#> ABLIM1 p Y373           0.1     0.9030303     0.8147059    0.4470588
#> ABLIM1 p Y383            NA    -0.5000000     0.3928571    0.7857143
#> ABLIM1 p Y406          -1.0     1.0000000    -0.1000000   -0.1000000
#> ABLIM1 p Y410          -1.0     1.0000000     0.3000000    0.3000000
#> ABLIM1 p Y461            NA     1.0000000     1.0000000    0.9428571
#>               PTPRH p Y1094 PTPRH p Y1102 PTPRH p Y850 PTPRK p S856
#> ABLIM1 p Y357           0.5     0.8666667    0.7142857    0.8642857
#> ABLIM1 p Y373           0.5     0.7619048    0.8000000    0.8846154
#> ABLIM1 p Y383            NA     0.4000000           NA    0.7000000
#> ABLIM1 p Y406           1.0    -0.4000000    1.0000000    0.4000000
#> ABLIM1 p Y410            NA     0.5000000   -1.0000000    0.7000000
#> ABLIM1 p Y461            NA     1.0000000           NA    1.0000000
#>               PTPRK p Y849 PTPRK p Y858 PTPRK p Y916 PTPRK ubi K1360
#> ABLIM1 p Y357    0.9272727    0.9040090           NA             0.4
#> ABLIM1 p Y373    0.9030303    0.8911765           NA             0.4
#> ABLIM1 p Y383    1.0000000    0.5357143           NA             0.5
#> ABLIM1 p Y406   -1.0000000   -0.3000000           NA              NA
#> ABLIM1 p Y410    1.0000000    0.7000000           NA            -1.0
#> ABLIM1 p Y461    1.0000000    0.9428571           NA             0.5
#>               PTTG1IP ack K169 PTTG1IP p Y165 PTTG1IP p Y174 PTTG1IP ubi K164
#> ABLIM1 p Y357              0.5      0.7470356      0.8769057        0.1428571
#> ABLIM1 p Y373             -1.0      0.6970588      0.8470588        0.1428571
#> ABLIM1 p Y383               NA      0.3928571      0.5000000        1.0000000
#> ABLIM1 p Y406               NA     -0.5000000     -0.2000000               NA
#> ABLIM1 p Y410               NA      0.7000000      0.9000000       -1.0000000
#> ABLIM1 p Y461               NA      0.8285714      0.9428571               NA
#>               PTTG1IP ubi K169 RASSF8 p Y418 RASSF8 ubi K176 RBM14 ack K149
#> ABLIM1 p Y357        0.4670330    0.77142857            -0.6      0.7142857
#> ABLIM1 p Y373        0.2833333    0.03571429            -0.8     -0.4000000
#> ABLIM1 p Y383        0.7714286            NA             1.0             NA
#> ABLIM1 p Y406        0.0000000    1.00000000              NA     -1.0000000
#> ABLIM1 p Y410       -0.8000000    1.00000000            -1.0             NA
#> ABLIM1 p Y461        0.5000000   -0.50000000              NA     -1.0000000
#>               RBM14 ack K164 RBM14 p Y226 RBM14 p Y249 RBM14 p Y645
#> ABLIM1 p Y357     0.20000000    0.7823529          1.0           NA
#> ABLIM1 p Y373    -0.01818182    0.7054945          0.5           NA
#> ABLIM1 p Y383     0.50000000    0.7500000           NA           NA
#> ABLIM1 p Y406     0.10000000   -0.2000000         -1.0           NA
#> ABLIM1 p Y410     0.40000000    0.8000000           NA           NA
#> ABLIM1 p Y461    -0.02857143    0.8285714           NA           NA
#>               RBM14 p Y648 RBM4 p Y194 RBM4 ubi K223 RMC1 p Y610
#> ABLIM1 p Y357    0.8403509   0.8892857     0.7714286          -1
#> ABLIM1 p Y373    0.6648352   0.7857143     0.7714286          -1
#> ABLIM1 p Y383    0.5428571   0.5000000     1.0000000          NA
#> ABLIM1 p Y406    0.4000000  -0.1000000            NA          -1
#> ABLIM1 p Y410    0.5000000   0.6000000     1.0000000          NA
#> ABLIM1 p Y461    0.9000000   0.8857143     1.0000000          NA
#>               RNASEH2B ack K284 RNASEH2B p S21 RNASEH2B p Y23 RPRD2 ack K671
#> ABLIM1 p Y357                NA              1              1              1
#> ABLIM1 p Y373                NA             -1             -1             NA
#> ABLIM1 p Y383                NA             NA             NA             NA
#> ABLIM1 p Y406                NA             NA             NA             NA
#> ABLIM1 p Y410                NA             NA             NA             NA
#> ABLIM1 p Y461                NA             NA             NA             NA
#>               SCRIB p Y1268 SCRIB p Y1360 SCRIB p Y834 SCRIB ubi K105
#> ABLIM1 p Y357     0.7637363     0.8224974          0.9       0.547619
#> ABLIM1 p Y373     0.8454545     0.8857143          0.4       0.547619
#> ABLIM1 p Y383     0.1000000     0.2000000           NA       1.000000
#> ABLIM1 p Y406     1.0000000    -0.4000000          1.0       1.000000
#> ABLIM1 p Y410     0.5000000     0.8000000           NA       1.000000
#> ABLIM1 p Y461     0.4000000     0.7142857           NA       1.000000
#>               SCRIB ubi K467 SEC16A p Y1031 SEC16A p Y1199 SEC16A p Y1202
#> ABLIM1 p Y357           -0.2             NA      0.8181818      0.7714286
#> ABLIM1 p Y373            0.4             NA      0.4642857      0.6571429
#> ABLIM1 p Y383             NA             NA      1.0000000             NA
#> ABLIM1 p Y406           -1.0             NA             NA     -0.4000000
#> ABLIM1 p Y410             NA             NA     -1.0000000      0.5000000
#> ABLIM1 p Y461             NA             NA      1.0000000      1.0000000
#>               SEC16A p Y1209 SEC16A p Y1291 SEC16A p Y1380 SEC16A p Y2193
#> ABLIM1 p Y357      0.7802198      0.7692308      0.4000000      0.7714286
#> ABLIM1 p Y373      0.8272727      0.6454545      0.2571429      0.8285714
#> ABLIM1 p Y383      1.0000000      0.8285714      1.0000000      0.7000000
#> ABLIM1 p Y406      0.5000000      0.4000000     -0.5000000     -1.0000000
#> ABLIM1 p Y410      1.0000000      1.0000000             NA      1.0000000
#> ABLIM1 p Y461      0.8000000      0.8000000      0.8000000      1.0000000
#>               SEC16A p Y489 SEC16A p Y813 SEC16A p Y991 SF3B2 ack K10
#> ABLIM1 p Y357     0.8214286            NA     0.6666667            -1
#> ABLIM1 p Y373     0.3714286            NA     0.4285714            NA
#> ABLIM1 p Y383            NA            NA    -1.0000000            NA
#> ABLIM1 p Y406    -1.0000000            NA    -1.0000000            NA
#> ABLIM1 p Y410            NA            NA     1.0000000            NA
#> ABLIM1 p Y461     1.0000000            NA    -1.0000000            NA
#>               SF3B2 ack K275 SF3B2 p Y806 SF3B2 ubi K280 SF3B2 ubi K387
#> ABLIM1 p Y357            0.9    0.7619048             NA            0.5
#> ABLIM1 p Y373            1.0    0.7666667             NA            0.4
#> ABLIM1 p Y383             NA    0.4000000             NA            1.0
#> ABLIM1 p Y406             NA   -0.4000000             NA             NA
#> ABLIM1 p Y410             NA   -1.0000000             NA            1.0
#> ABLIM1 p Y461             NA    1.0000000             NA            1.0
#>               SF3B2 ubi K394 SF3B2 ubi K529 SF3B2 ubi K543 SGMS2 p Y56
#> ABLIM1 p Y357            0.2      0.2166667             NA   0.6713287
#> ABLIM1 p Y373            0.2      0.3571429             NA   0.7166667
#> ABLIM1 p Y383            1.0      0.5000000             NA   0.0000000
#> ABLIM1 p Y406             NA      1.0000000             NA   1.0000000
#> ABLIM1 p Y410           -1.0     -0.5000000             NA   0.2000000
#> ABLIM1 p Y461            1.0      0.5000000             NA   0.6000000
#>               SGMS2 p Y59 SLC12A4 p Y17 SLC12A4 ubi K1010 SLC12A4 ubi K97
#> ABLIM1 p Y357   0.7368421     0.7617647         0.4285714             0.4
#> ABLIM1 p Y373   0.8593407     0.8373626         0.4285714             0.4
#> ABLIM1 p Y383   0.3928571     0.9000000         1.0000000              NA
#> ABLIM1 p Y406   0.8000000     0.4000000                NA              NA
#> ABLIM1 p Y410   0.2000000     0.3000000        -1.0000000            -1.0
#> ABLIM1 p Y461   0.4000000     0.9000000         1.0000000              NA
#>               SLC12A4 ubi K979 SLC12A4 ubi K988 SLC38A2 p Y28 SLC38A2 p Y41
#> ABLIM1 p Y357        0.6571429        0.6571429     0.6500000     0.3166667
#> ABLIM1 p Y373        0.6571429        0.6571429     0.6678571     0.4787879
#> ABLIM1 p Y383        1.0000000        1.0000000     0.9000000    -1.0000000
#> ABLIM1 p Y406               NA               NA    -0.2000000    -0.5000000
#> ABLIM1 p Y410        1.0000000        1.0000000     0.5000000     0.5000000
#> ABLIM1 p Y461        1.0000000        1.0000000     0.8857143     0.5000000
#>               SLC38A2 ubi K33 SLC38A2 ubi K38 SLC38A2 ubi K59 SLC9A1 p S693
#> ABLIM1 p Y357       0.4523810             0.5       0.4285714     0.8995098
#> ABLIM1 p Y373       0.6190476             0.5       0.4285714     0.8989011
#> ABLIM1 p Y383       0.5000000             1.0       0.5000000     0.9000000
#> ABLIM1 p Y406      -1.0000000              NA              NA    -0.4000000
#> ABLIM1 p Y410      -1.0000000              NA      -1.0000000     0.9000000
#> ABLIM1 p Y461       0.8000000             1.0       0.5000000     1.0000000
#>               SLC9A1 p Y683 SLC9A1 ubi K583 SLC9A1 ubi K612 SLC9A1 ubi K625
#> ABLIM1 p Y357     0.8676471       0.6071429       0.2857143       0.3714286
#> ABLIM1 p Y373     0.8813187       0.6071429       0.3714286       0.3714286
#> ABLIM1 p Y383     0.7000000       0.5000000       1.0000000       1.0000000
#> ABLIM1 p Y406    -0.3000000              NA              NA              NA
#> ABLIM1 p Y410     0.7000000      -1.0000000      -1.0000000      -1.0000000
#> ABLIM1 p Y461     1.0000000       0.5000000       1.0000000       1.0000000
#>               SLC9A1 ubi K690 SLC9A1 ubi K767 SMAGP p Y95 SPRED1 p Y187
#> ABLIM1 p Y357       0.7142857             0.2   0.8180451     0.9000000
#> ABLIM1 p Y373       0.5357143             0.2   0.7382353     0.9428571
#> ABLIM1 p Y383       1.0000000              NA   0.4642857            NA
#> ABLIM1 p Y406              NA              NA   0.7000000    -1.0000000
#> ABLIM1 p Y410      -0.5000000            -1.0   0.7000000     1.0000000
#> ABLIM1 p Y461       1.0000000              NA   0.6000000            NA
#>               SPRED1 p Y211 SPRED1 p Y292 SPRED1 p Y294 SPRED1 ubi K284
#> ABLIM1 p Y357           0.8     0.8626374           0.5             0.5
#> ABLIM1 p Y373           0.8     0.8909091           0.5             0.5
#> ABLIM1 p Y383           1.0     0.2000000           0.5             1.0
#> ABLIM1 p Y406            NA     1.0000000           1.0            -1.0
#> ABLIM1 p Y410            NA     1.0000000           1.0            -0.5
#> ABLIM1 p Y461           1.0     0.8000000           0.5             1.0
#>               SUPT16H ack K674 SUPT16H ack K904 SUPT16H p Y535 SUPT16H ubi K596
#> ABLIM1 p Y357        0.5729323              0.5            0.2              0.2
#> ABLIM1 p Y373        0.6250000              0.5            0.4              0.2
#> ABLIM1 p Y383        0.0000000               NA             NA               NA
#> ABLIM1 p Y406       -1.0000000               NA             NA               NA
#> ABLIM1 p Y410       -0.8000000               NA             NA               NA
#> ABLIM1 p Y461        0.3142857               NA             NA               NA
#>               SUPT16H ubi K904 SYAP1 ack K70 SYAP1 p Y60 TJP3 p Y361
#> ABLIM1 p Y357              0.2     0.8112745   0.9323529   0.8750000
#> ABLIM1 p Y373              0.2     0.7230769   0.7857143   0.6758242
#> ABLIM1 p Y383               NA     0.8000000   0.5000000   0.4642857
#> ABLIM1 p Y406               NA     0.0000000   0.4000000   0.1000000
#> ABLIM1 p Y410               NA    -0.4000000   0.6000000   0.8000000
#> ABLIM1 p Y461               NA     0.7714286   0.7714286   0.6000000
#>               TJP3 p Y364 TMEM106B p Y18 TMEM106B p Y50 TMEM106B ubi K14
#> ABLIM1 p Y357   0.9178571      0.5604396      0.5933953       0.33516484
#> ABLIM1 p Y373   0.8021978      0.7832168      0.6823529       0.05454545
#> ABLIM1 p Y383   0.4000000      0.3000000      0.7000000       0.96428571
#> ABLIM1 p Y406   1.0000000     -1.0000000     -0.9000000      -0.80000000
#> ABLIM1 p Y410   0.7000000      0.2000000      0.5000000      -0.70000000
#> ABLIM1 p Y461   0.9000000      0.6000000      0.9428571       0.80000000
#>               TMEM192 p Y213 TMEM192 ubi K254 TNK2 p T517 TNK2 p T857
#> ABLIM1 p Y357      0.6666667        0.3928571          NA           1
#> ABLIM1 p Y373      0.6147059        0.3928571          NA           1
#> ABLIM1 p Y383      0.0000000        0.5000000          NA          NA
#> ABLIM1 p Y406     -0.6000000       -0.5000000          NA          NA
#> ABLIM1 p Y410      0.5000000       -1.0000000          NA          NA
#> ABLIM1 p Y461      0.7714286        0.5000000          NA          NA
#>               TNK2 p Y284 TNK2 p Y827 TNK2 p Y859 TNK2 p Y860
#> ABLIM1 p Y357   0.7727273   0.7157895   0.8068888   0.7131063
#> ABLIM1 p Y373   0.3571429   0.5647059   0.7000000   0.7000000
#> ABLIM1 p Y383          NA   0.5714286   0.3928571   0.3000000
#> ABLIM1 p Y406          NA  -0.4000000  -0.6000000   1.0000000
#> ABLIM1 p Y410          NA   0.6000000   0.7000000   0.7000000
#> ABLIM1 p Y461  -1.0000000   0.6000000   0.6571429   0.9000000
#>               TUBA1B ack K280; TUBA4A ack K280; TUBA1A ack K280
#> ABLIM1 p Y357                                         0.7909091
#> ABLIM1 p Y373                                         0.8571429
#> ABLIM1 p Y383                                         0.8857143
#> ABLIM1 p Y406                                        -1.0000000
#> ABLIM1 p Y410                                         1.0000000
#> ABLIM1 p Y461                                         1.0000000
#>               TUBA1B ack K304; TUBA4A ack K304; TUBA1A ack K304
#> ABLIM1 p Y357                                               0.5
#> ABLIM1 p Y373                                               0.4
#> ABLIM1 p Y383                                               0.4
#> ABLIM1 p Y406                                                NA
#> ABLIM1 p Y410                                               1.0
#> ABLIM1 p Y461                                               1.0
#>               TUBA1B ack K311; TUBA4A ack K311; TUBA1A ack K311; TUBA1C ack K311
#> ABLIM1 p Y357                                                          0.6428571
#> ABLIM1 p Y373                                                          0.6000000
#> ABLIM1 p Y383                                                          1.0000000
#> ABLIM1 p Y406                                                         -1.0000000
#> ABLIM1 p Y410                                                          1.0000000
#> ABLIM1 p Y461                                                          0.4000000
#>               TUBA1B ack K336; TUBA1A ack K336; TUBA1C ack K336
#> ABLIM1 p Y357                                         0.8241758
#> ABLIM1 p Y373                                         0.9047619
#> ABLIM1 p Y383                                         0.8000000
#> ABLIM1 p Y406                                                NA
#> ABLIM1 p Y410                                         1.0000000
#> ABLIM1 p Y461                                         1.0000000
#>               TUBA1B ack K336; TUBA1C ack K336
#> ABLIM1 p Y357                               NA
#> ABLIM1 p Y373                               NA
#> ABLIM1 p Y383                               NA
#> ABLIM1 p Y406                               NA
#> ABLIM1 p Y410                               NA
#> ABLIM1 p Y461                               NA
#>               TUBA1B ack K370; TUBA4A ack K370; TUBA1A ack K370; TUBA1C ack K370; TUBA8 ack K370
#> ABLIM1 p Y357                                                                          0.8571429
#> ABLIM1 p Y373                                                                          1.0000000
#> ABLIM1 p Y383                                                                          0.5000000
#> ABLIM1 p Y406                                                                                 NA
#> ABLIM1 p Y410                                                                          1.0000000
#> ABLIM1 p Y461                                                                          1.0000000
#>               TUBA1B p Y103; TUBA4A p Y103; TUBA1A p Y103; TUBA1C p Y103; TUBA8 p Y103
#> ABLIM1 p Y357                                                                0.8633540
#> ABLIM1 p Y373                                                                0.8764706
#> ABLIM1 p Y383                                                                0.3571429
#> ABLIM1 p Y406                                                               -0.1000000
#> ABLIM1 p Y410                                                                0.6000000
#> ABLIM1 p Y461                                                                0.8857143
#>               TUBA1B p Y103; TUBA4A p Y103; TUBA1C p Y103
#> ABLIM1 p Y357                                          NA
#> ABLIM1 p Y373                                          NA
#> ABLIM1 p Y383                                          NA
#> ABLIM1 p Y406                                          NA
#> ABLIM1 p Y410                                          NA
#> ABLIM1 p Y461                                          NA
#>               TUBA1B p Y272; TUBA4A p Y272; TUBA1A p Y272
#> ABLIM1 p Y357                                   0.8438596
#> ABLIM1 p Y373                                   0.8617647
#> ABLIM1 p Y383                                   0.4000000
#> ABLIM1 p Y406                                  -0.1000000
#> ABLIM1 p Y410                                   0.6000000
#> ABLIM1 p Y461                                   1.0000000
#>               TUBA1B p Y282; TUBA4A p Y282; TUBA1A p Y282
#> ABLIM1 p Y357                                   0.7527473
#> ABLIM1 p Y373                                   0.8956044
#> ABLIM1 p Y383                                   0.9000000
#> ABLIM1 p Y406                                   0.5000000
#> ABLIM1 p Y410                                   1.0000000
#> ABLIM1 p Y461                                   1.0000000
#>               TUBA1B p Y312; TUBA4A p Y312; TUBA1C p Y312
#> ABLIM1 p Y357                                          NA
#> ABLIM1 p Y373                                          NA
#> ABLIM1 p Y383                                          NA
#> ABLIM1 p Y406                                          NA
#> ABLIM1 p Y410                                          NA
#> ABLIM1 p Y461                                          NA
#>               TUBA1B p Y357; TUBA4A p Y357; TUBA1A p Y357; TUBA1C p Y357; TUBA8 p Y357
#> ABLIM1 p Y357                                                                0.8186813
#> ABLIM1 p Y373                                                                0.8811189
#> ABLIM1 p Y383                                                                0.4000000
#> ABLIM1 p Y406                                                                1.0000000
#> ABLIM1 p Y410                                                                0.4000000
#> ABLIM1 p Y461                                                                1.0000000
#>               TUBA1B ubi K112; TUBA1A ubi K112; TUBA1C ubi K112
#> ABLIM1 p Y357                                         0.6181631
#> ABLIM1 p Y373                                         0.5780220
#> ABLIM1 p Y383                                         0.9642857
#> ABLIM1 p Y406                                        -0.8000000
#> ABLIM1 p Y410                                        -0.2000000
#> ABLIM1 p Y461                                         0.8000000
#>               TUBA1B ubi K163; TUBA4A ubi K163; TUBA1A ubi K163; TUBA1C ubi K163
#> ABLIM1 p Y357                                                          0.4787879
#> ABLIM1 p Y373                                                          0.3928571
#> ABLIM1 p Y383                                                          0.8857143
#> ABLIM1 p Y406                                                         -1.0000000
#> ABLIM1 p Y410                                                         -0.5000000
#> ABLIM1 p Y461                                                          1.0000000
#>               TUBA1B ubi K163; TUBA4A ubi K163; TUBA1C ubi K163
#> ABLIM1 p Y357                                                NA
#> ABLIM1 p Y373                                                NA
#> ABLIM1 p Y383                                                NA
#> ABLIM1 p Y406                                                NA
#> ABLIM1 p Y410                                                NA
#> ABLIM1 p Y461                                                NA
#>               TUBA1B ubi K164; TUBA4A ubi K164; TUBA1C ubi K164
#> ABLIM1 p Y357                                                NA
#> ABLIM1 p Y373                                                NA
#> ABLIM1 p Y383                                                NA
#> ABLIM1 p Y406                                                NA
#> ABLIM1 p Y410                                                NA
#> ABLIM1 p Y461                                                NA
#>               TUBA1B ubi K304; TUBA4A ubi K304; TUBA1A ubi K304
#> ABLIM1 p Y357                                         0.5296703
#> ABLIM1 p Y373                                         0.5734266
#> ABLIM1 p Y383                                         0.7714286
#> ABLIM1 p Y406                                        -0.8000000
#> ABLIM1 p Y410                                        -0.8000000
#> ABLIM1 p Y461                                         0.8000000
#>               TUBA1B ubi K311; TUBA4A ubi K311; TUBA1A ubi K311; TUBA1C ubi K311
#> ABLIM1 p Y357                                                          0.6483516
#> ABLIM1 p Y373                                                          0.4909091
#> ABLIM1 p Y383                                                          0.7000000
#> ABLIM1 p Y406                                                         -0.5000000
#> ABLIM1 p Y410                                                         -0.3000000
#> ABLIM1 p Y461                                                          1.0000000
#>               TUBA1B ubi K326; TUBA1A ubi K326; TUBA1C ubi K326
#> ABLIM1 p Y357                                         0.7598039
#> ABLIM1 p Y373                                         0.7230769
#> ABLIM1 p Y383                                         0.8571429
#> ABLIM1 p Y406                                        -0.3000000
#> ABLIM1 p Y410                                         0.0000000
#> ABLIM1 p Y461                                         1.0000000
#>               TUBA1B ubi K336; TUBA1A ubi K336; TUBA1C ubi K336
#> ABLIM1 p Y357                                         0.5000000
#> ABLIM1 p Y373                                         0.4272727
#> ABLIM1 p Y383                                         1.0000000
#> ABLIM1 p Y406                                        -0.8000000
#> ABLIM1 p Y410                                        -0.4000000
#> ABLIM1 p Y461                                         0.9000000
#>               TUBA1B ubi K336; TUBA1C ubi K336
#> ABLIM1 p Y357                               NA
#> ABLIM1 p Y373                               NA
#> ABLIM1 p Y383                               NA
#> ABLIM1 p Y406                               NA
#> ABLIM1 p Y410                               NA
#> ABLIM1 p Y461                               NA
#>               TUBA1B ubi K338; TUBA1A ubi K338; TUBA1C ubi K338
#> ABLIM1 p Y357                                         0.7406593
#> ABLIM1 p Y373                                         0.6643357
#> ABLIM1 p Y383                                         0.8214286
#> ABLIM1 p Y406                                        -0.5000000
#> ABLIM1 p Y410                                         0.0000000
#> ABLIM1 p Y461                                         1.0000000
#>               TUBA1B ubi K338; TUBA1C ubi K338 TUBA1B ubi K352; TUBA4A ubi K352
#> ABLIM1 p Y357                               NA                        0.4010989
#> ABLIM1 p Y373                               NA                        0.2500000
#> ABLIM1 p Y383                               NA                        0.6571429
#> ABLIM1 p Y406                               NA                       -0.5000000
#> ABLIM1 p Y410                               NA                       -0.8000000
#> ABLIM1 p Y461                               NA                        1.0000000
#>               TUBA1B ubi K370; TUBA4A ubi K370
#> ABLIM1 p Y357                        0.7199322
#> ABLIM1 p Y373                        0.6676471
#> ABLIM1 p Y383                        0.8571429
#> ABLIM1 p Y406                       -0.8000000
#> ABLIM1 p Y410                       -0.3000000
#> ABLIM1 p Y461                        1.0000000
#>               TUBA1B ubi K370; TUBA4A ubi K370; TUBA1C ubi K370
#> ABLIM1 p Y357                                                NA
#> ABLIM1 p Y373                                                NA
#> ABLIM1 p Y383                                                NA
#> ABLIM1 p Y406                                                NA
#> ABLIM1 p Y410                                                NA
#> ABLIM1 p Y461                                                NA
#>               TUBA1B ubi K394; TUBA4A ubi K394; TUBA1C ubi K394
#> ABLIM1 p Y357                                                NA
#> ABLIM1 p Y373                                                NA
#> ABLIM1 p Y383                                                NA
#> ABLIM1 p Y406                                                NA
#> ABLIM1 p Y410                                                NA
#> ABLIM1 p Y461                                                NA
#>               TUBA1B ubi K401; TUBA4A ubi K401; TUBA1C ubi K401
#> ABLIM1 p Y357                                                NA
#> ABLIM1 p Y373                                                NA
#> ABLIM1 p Y383                                                NA
#> ABLIM1 p Y406                                                NA
#> ABLIM1 p Y410                                                NA
#> ABLIM1 p Y461                                                NA
#>               TUBA1B ubi K60; TUBA1A ubi K60; TUBA1C ubi K60
#> ABLIM1 p Y357                                      0.7383459
#> ABLIM1 p Y373                                      0.6285714
#> ABLIM1 p Y383                                      0.9285714
#> ABLIM1 p Y406                                     -0.3000000
#> ABLIM1 p Y410                                     -0.3000000
#> ABLIM1 p Y461                                      0.8000000
#>               TUBA1B ubi K96; TUBA4A ubi K96; TUBA1A ubi K96; TUBA1C ubi K96; TUBA8 ubi K96
#> ABLIM1 p Y357                                                                     0.6274510
#> ABLIM1 p Y373                                                                     0.6659341
#> ABLIM1 p Y383                                                                     0.9285714
#> ABLIM1 p Y406                                                                    -0.5000000
#> ABLIM1 p Y410                                                                    -0.6000000
#> ABLIM1 p Y461                                                                     0.9000000
#>               TUBA1B ubi K96; TUBA4A ubi K96; TUBA1C ubi K96 USP15 p Y263
#> ABLIM1 p Y357                                             NA    0.8107143
#> ABLIM1 p Y373                                             NA    0.8736264
#> ABLIM1 p Y383                                             NA    0.4000000
#> ABLIM1 p Y406                                             NA    0.3000000
#> ABLIM1 p Y410                                             NA    0.3000000
#> ABLIM1 p Y461                                             NA    1.0000000
#>               USP15 p Y274 WEE1 ack K596 WEE1 p S139 WEE1 p Y132 ZDHHC5 p S529
#> ABLIM1 p Y357    0.8909091            NA   0.3909091   0.3626374     0.8088235
#> ABLIM1 p Y373    0.8787879            NA   0.2848485   0.3351648     0.7090909
#> ABLIM1 p Y383    0.4000000            NA  -1.0000000  -0.5000000     0.5428571
#> ABLIM1 p Y406    1.0000000            NA  -0.8000000  -0.4000000    -1.0000000
#> ABLIM1 p Y410    0.4000000            NA   0.5000000   0.2000000     1.0000000
#> ABLIM1 p Y461    1.0000000            NA   1.0000000  -0.4000000     0.8000000
#>               ZDHHC5 p Y497 ZDHHC5 p Y533 ZDHHC5 p Y630
#> ABLIM1 p Y357     1.0000000     0.7791538     0.7254902
#> ABLIM1 p Y373     0.9428571     0.6573427     0.6392857
#> ABLIM1 p Y383     0.8000000     0.5428571     1.0000000
#> ABLIM1 p Y406    -1.0000000    -0.8000000    -0.6000000
#> ABLIM1 p Y410     1.0000000     1.0000000     0.8000000
#> ABLIM1 p Y461     0.8000000     0.8000000     0.5428571
#>               ZDHHC5 p Y711; ZDHHC8 p Y761 ZNF185 p Y408 ZNF185 p Y581
#> ABLIM1 p Y357                    0.8531469     0.8951049     0.8699690
#> ABLIM1 p Y373                    0.7692308     0.8818182     0.9560440
#> ABLIM1 p Y383                    0.8000000     1.0000000     0.5000000
#> ABLIM1 p Y406                    0.1000000     1.0000000    -0.1000000
#> ABLIM1 p Y410                    0.8000000     1.0000000     0.9000000
#> ABLIM1 p Y461                    0.8857143     1.0000000     0.8857143
#>               ZNF185 p Y597
#> ABLIM1 p Y357     0.9065934
#> ABLIM1 p Y373     0.9384615
#> ABLIM1 p Y383     0.8000000
#> ABLIM1 p Y406    -0.3000000
#> ABLIM1 p Y410     0.7000000
#> ABLIM1 p Y461     0.9428571
```
