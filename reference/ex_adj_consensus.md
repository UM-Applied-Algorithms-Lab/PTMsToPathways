# Adjacency Consensus Matrix

A matrix containing values of 0s and 1s depending on if the PTMs are in
a cocluster with other PTMs.

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
#>               KRT7 p S37 KRT7 p S38 INPPL1 p S890 KDM6A p S388 DIAPH1 p S373
#> KRT7 p S37             0          0             0            0             0
#> KRT7 p S38             0          0             0            0             0
#> INPPL1 p S890          0          0             0            0             0
#> KDM6A p S388           0          0             0            0             0
#> DIAPH1 p S373          0          0             0            0             0
#> CTNND1 p S252          0          0             0            0             0
#>               CTNND1 p S252 CTNND1 p S225 CTNND1 p S230 STAM2 p S375
#> KRT7 p S37                0             0             0            0
#> KRT7 p S38                0             0             0            0
#> INPPL1 p S890             0             0             0            0
#> KDM6A p S388              0             0             0            0
#> DIAPH1 p S373             0             0             0            0
#> CTNND1 p S252             0             0             0            0
#>               EGFR p S1166 SPTA1 p S37 KRT18 p S34 KRT18 p S23 LDHB p S238
#> KRT7 p S37               0           0           0           0           0
#> KRT7 p S38               0           0           0           0           0
#> INPPL1 p S890            0           0           0           0           0
#> KDM6A p S388             0           0           0           0           0
#> DIAPH1 p S373            0           0           0           0           0
#> CTNND1 p S252            0           0           0           0           0
#>               ANXA2 p S26; ANXA2P2 p S26
#> KRT7 p S37                             0
#> KRT7 p S38                             0
#> INPPL1 p S890                          0
#> KDM6A p S388                           0
#> DIAPH1 p S373                          0
#> CTNND1 p S252                          0
#>               HSP90AA1 p S63; HSP90AA2P p S63; HSP90AB1 p S58; HSP90AB3P p S58; HSP90AB2P p S58
#> KRT7 p S37                                                                                    0
#> KRT7 p S38                                                                                    0
#> INPPL1 p S890                                                                                 0
#> KDM6A p S388                                                                                  0
#> DIAPH1 p S373                                                                                 0
#> CTNND1 p S252                                                                                 0
#>               MET p S1236 HNRNPA1 p S365 MUC1 p S1227 CEBPB p S141 CBL p S675
#> KRT7 p S37              0              0            0            0          0
#> KRT7 p S38              0              0            0            0          0
#> INPPL1 p S890           0              0            0            0          0
#> KDM6A p S388            0              0            0            0          0
#> DIAPH1 p S373           0              0            0            0          0
#> CTNND1 p S252           0              0            0            0          0
#>               PTPRE p S694 EPHA2 p S577 PTPN6 p S534 SHC1 p S426 RFC2 p S162
#> KRT7 p S37               0            0            0           0           0
#> KRT7 p S38               0            0            0           0           0
#> INPPL1 p S890            0            0            0           0           0
#> KDM6A p S388             0            0            0           0           0
#> DIAPH1 p S373            0            0            0           0           0
#> CTNND1 p S252            0            0            0           0           0
#>               IRS1 p S629 RPS27 p S30; RPS27L p S30 FRK p S496 FRK p S389
#> KRT7 p S37              0                         0          0          0
#> KRT7 p S38              0                         0          0          0
#> INPPL1 p S890           0                         0          0          0
#> KDM6A p S388            0                         0          0          0
#> DIAPH1 p S373           0                         0          0          0
#> CTNND1 p S252           0                         0          0          0
#>               SYK p S202 SYK p S295 PXN p S85 PXN p S90 PXN p S119
#> KRT7 p S37             0          0         0         0          0
#> KRT7 p S38             0          0         0         0          0
#> INPPL1 p S890          0          0         0         0          0
#> KDM6A p S388           0          0         0         0          0
#> DIAPH1 p S373          0          0         0         0          0
#> CTNND1 p S252          0          0         0         0          0
#>               GSK3B p S215; GSK3A p S278 ANXA11 p S480 HNRNPA3 p S358
#> KRT7 p S37                             0             0              0
#> KRT7 p S38                             0             0              0
#> INPPL1 p S890                          0             0              0
#> KDM6A p S388                           0             0              0
#> DIAPH1 p S373                          0             0              0
#> CTNND1 p S252                          0             0              0
#>               EPHB4 p S575 BCAR1 p S407 MAGOH p S38; MAGOHB p S40
#> KRT7 p S37               0            0                         0
#> KRT7 p S38               0            0                         0
#> INPPL1 p S890            0            0                         0
#> KDM6A p S388             0            0                         0
#> DIAPH1 p S373            0            0                         0
#> CTNND1 p S252            0            0                         0
#>               DYNLL1 p S64; DYNLL2 p S64 PRKCD p S304 PCDH1 p S1018
#> KRT7 p S37                             0            0             0
#> KRT7 p S38                             0            0             0
#> INPPL1 p S890                          0            0             0
#> KDM6A p S388                           0            0             0
#> DIAPH1 p S373                          0            0             0
#> CTNND1 p S252                          0            0             0
#>               AHNAK p S5832 AHNAK p S5841 ARHGEF5 p S1139 SRSF9 p S178
#> KRT7 p S37                0             0               0            0
#> KRT7 p S38                0             0               0            0
#> INPPL1 p S890             0             0               0            0
#> KDM6A p S388              0             0               0            0
#> DIAPH1 p S373             0             0               0            0
#> CTNND1 p S252             0             0               0            0
#>               RIPK1 p S389 URB2 p S18 EIF2B1 p S131 CTTN p S156 CTTN p S447
#> KRT7 p S37               0          0             0           0           0
#> KRT7 p S38               0          0             0           0           0
#> INPPL1 p S890            0          0             0           0           0
#> KDM6A p S388             0          0             0           0           0
#> DIAPH1 p S373            0          0             0           0           0
#> CTNND1 p S252            0          0             0           0           0
#>               CTTN p S150 CTTN p S417 CTTN p S418 PRKD1 p S251 SHB p S265
#> KRT7 p S37              0           0           0            0          0
#> KRT7 p S38              0           0           0            0          0
#> INPPL1 p S890           0           0           0            0          0
#> KDM6A p S388            0           0           0            0          0
#> DIAPH1 p S373           0           0           0            0          0
#> CTNND1 p S252           0           0           0            0          0
#>               SHB p S247 HSP90AB4P p S34 TNS3 p S776 TNS3 p S602 TNS3 p S332
#> KRT7 p S37             0               0           0           0           0
#> KRT7 p S38             0               0           0           0           0
#> INPPL1 p S890          0               0           0           0           0
#> KDM6A p S388           0               0           0           0           0
#> DIAPH1 p S373          0               0           0           0           0
#> CTNND1 p S252          0               0           0           0           0
#>               NOL8 p S723 SPRED2 p S250 ZC3H18 p S487 ZC3H18 p S492 LSR p S365
#> KRT7 p S37              0             0             0             0          0
#> KRT7 p S38              0             0             0             0          0
#> INPPL1 p S890           0             0             0             0          0
#> KDM6A p S388            0             0             0             0          0
#> DIAPH1 p S373           0             0             0             0          0
#> CTNND1 p S252           0             0             0             0          0
#>               LSR p S371 ARHGAP12 p S240 AFAP1L2 p S414 DCBLD1 p S619
#> KRT7 p S37             0               0              0             0
#> KRT7 p S38             0               0              0             0
#> INPPL1 p S890          0               0              0             0
#> KDM6A p S388           0               0              0             0
#> DIAPH1 p S373          0               0              0             0
#> CTNND1 p S252          0               0              0             0
#>               GPRC5A p S345 GPRC5A p S301 S100A16 p S27 PKP4 p S273 DOK1 p S450
#> KRT7 p S37                0             0             0           0           0
#> KRT7 p S38                0             0             0           0           0
#> INPPL1 p S890             0             0             0           0           0
#> KDM6A p S388              0             0             0           0           0
#> DIAPH1 p S373             0             0             0           0           0
#> CTNND1 p S252             0             0             0           0           0
#>               CDCP1 p S803 GAREM1 p S700 EML4 p S242 S100A14 p S33
#> KRT7 p S37               0             0           0             0
#> KRT7 p S38               0             0           0             0
#> INPPL1 p S890            0             0           0             0
#> KDM6A p S388             0             0           0             0
#> DIAPH1 p S373            0             0           0             0
#> CTNND1 p S252            0             0           0             0
#>               ARHGAP35 p S1106 PAG1 p S354 TJP2 p S266 TJP2 p S1006 ALK p S1509
#> KRT7 p S37                   0           0           0            0           0
#> KRT7 p S38                   0           0           0            0           0
#> INPPL1 p S890                0           0           0            0           0
#> KDM6A p S388                 0           0           0            0           0
#> DIAPH1 p S373                0           0           0            0           0
#> CTNND1 p S252                0           0           0            0           0
#>               DAPP1 p S141 SHANK2 p S611 SHANK2 p S589 ICK p S152 GAB2 p S622
#> KRT7 p S37               0             0             0          0           0
#> KRT7 p S38               0             0             0          0           0
#> INPPL1 p S890            0             0             0          0           0
#> KDM6A p S388             0             0             0          0           0
#> DIAPH1 p S373            0             0             0          0           0
#> CTNND1 p S252            0             0             0          0           0
#>               GAB2 p S623 IRS2 p S820 IRS2 p S740 CDC42BPB p S1640 F11R p S284
#> KRT7 p S37              0           0           0                0           0
#> KRT7 p S38              0           0           0                0           0
#> INPPL1 p S890           0           0           0                0           0
#> KDM6A p S388            0           0           0                0           0
#> DIAPH1 p S373           0           0           0                0           0
#> CTNND1 p S252           0           0           0                0           0
#>               PIK3C2B p T1400 MAPK13 p T180 MAPK13 p T185 KDM6A p T387
#> KRT7 p S37                  0             0             0            0
#> KRT7 p S38                  0             0             0            0
#> INPPL1 p S890               0             0             0            0
#> KDM6A p S388                0             0             0            1
#> DIAPH1 p S373               0             0             0            0
#> CTNND1 p S252               0             0             0            0
#>               SPAG7 p T188 TIPRL p T208 ABL1 p T392; ABL2 p T438
#> KRT7 p S37               0            0                        0
#> KRT7 p S38               0            0                        0
#> INPPL1 p S890            0            0                        0
#> KDM6A p S388             0            0                        0
#> DIAPH1 p S373            0            0                        0
#> CTNND1 p S252            0            0                        0
#>               ABL1 p T394; ABL2 p T440 EGFR p T1141 ERBB2 p T875
#> KRT7 p S37                           0            0            0
#> KRT7 p S38                           0            0            0
#> INPPL1 p S890                        0            0            0
#> KDM6A p S388                         0            0            0
#> DIAPH1 p S373                        0            0            0
#> CTNND1 p S252                        0            0            0
#>               LCK p T395; SRC p T420; FYN p T421; YES1 p T427
#> KRT7 p S37                                                  0
#> KRT7 p S38                                                  0
#> INPPL1 p S890                                               0
#> KDM6A p S388                                                0
#> DIAPH1 p S373                                               0
#> CTNND1 p S252                                               0
#>               CDK1 p T14; CDK2 p T14; CDK3 p T14 LYN p T398; HCK p T412
#> KRT7 p S37                                     0                      0
#> KRT7 p S38                                     0                      0
#> INPPL1 p S890                                  0                      0
#> KDM6A p S388                                   0                      0
#> DIAPH1 p S373                                  0                      0
#> CTNND1 p S252                                  0                      0
#>               G6PD p T402 PKM p T80 AKR1B1 p T192 MAOA p T435 MAOA p T437
#> KRT7 p S37              0         0             0           0           0
#> KRT7 p S38              0         0             0           0           0
#> INPPL1 p S890           0         0             0           0           0
#> KDM6A p S388            0         0             0           0           0
#> DIAPH1 p S373           0         0             0           0           0
#> CTNND1 p S252           0         0             0           0           0
#>               MAOA p T439 EPHA1 p T780 TGM2 p T368 GART p T349 ACP1 p T85
#> KRT7 p S37              0            0           0           0          0
#> KRT7 p S38              0            0           0           0          0
#> INPPL1 p S890           0            0           0           0          0
#> KDM6A p S388            0            0           0           0          0
#> DIAPH1 p S373           0            0           0           0          0
#> CTNND1 p S252           0            0           0           0          0
#>               MAPK3 p T207 PIK3R1 p T471 PIK3R1 p T369 MAPK1 p T185
#> KRT7 p S37               0             0             0            0
#> KRT7 p S38               0             0             0            0
#> INPPL1 p S890            0             0             0            0
#> KDM6A p S388             0             0             0            0
#> DIAPH1 p S373            0             0             0            0
#> CTNND1 p S252            0             0             0            0
#>               EPHA2 p T587 EPHA2 p T593 EPHA2 p T771
#> KRT7 p S37               0            0            0
#> KRT7 p S38               0            0            0
#> INPPL1 p S890            0            0            0
#> KDM6A p S388             0            0            0
#> DIAPH1 p S373            0            0            0
#> CTNND1 p S252            0            0            0
#>               EPHA3 p T781; EPHA4 p T781; EPHA5 p T835 RFC2 p T157 RFC2 p T164
#> KRT7 p S37                                           0           0           0
#> KRT7 p S38                                           0           0           0
#> INPPL1 p S890                                        0           0           0
#> KDM6A p S388                                         0           0           0
#> DIAPH1 p S373                                        0           0           0
#> CTNND1 p S252                                        0           0           0
#>               IRS1 p T88 MAPK12 p T188 BCAR1 p T385 GSDMD p T161
#> KRT7 p S37             0             0            0            0
#> KRT7 p S38             0             0            0            0
#> INPPL1 p S890          0             0            0            0
#> KDM6A p S388           0             0            0            0
#> DIAPH1 p S373          0             0            0            0
#> CTNND1 p S252          0             0            0            0
#>               ACTG1 p T297; ACTB p T297 GRB2 p T159 RPS21 p T52 RACK1 p T229
#> KRT7 p S37                            0           0           0            0
#> KRT7 p S38                            0           0           0            0
#> INPPL1 p S890                         0           1           0            0
#> KDM6A p S388                          0           0           0            0
#> DIAPH1 p S373                         0           0           0            0
#> CTNND1 p S252                         0           0           0            0
#>               EEF1A1 p T142; EEF1A1P5 p T142; EEF1A2 p T142 CDK5 p T14
#> KRT7 p S37                                                0          0
#> KRT7 p S38                                                0          0
#> INPPL1 p S890                                             0          0
#> KDM6A p S388                                              0          0
#> DIAPH1 p S373                                             0          0
#> CTNND1 p S252                                             0          0
#>               CDK16 p T175; CDK17 p T202 NFKB2 p T76 CAV1 p T15 PTK2 p T929
#> KRT7 p S37                             0           0          0           0
#> KRT7 p S38                             0           0          0           0
#> INPPL1 p S890                          0           0          0           0
#> KDM6A p S388                           0           0          0           0
#> DIAPH1 p S373                          0           0          0           0
#> CTNND1 p S252                          0           0          0           0
#>               PTK2 p T575 PTPN11 p T547 PTPN11 p T59
#> KRT7 p S37              0             0            0
#> KRT7 p S38              0             0            0
#> INPPL1 p S890           0             0            0
#> KDM6A p S388            0             0            0
#> DIAPH1 p S373           0             0            0
#> CTNND1 p S252           0             0            0
#>               ZNF33B p T597; ZNF33A p T596 TNK2 p T517 TNK2 p T829 SRSF1 p T187
#> KRT7 p S37                               0           0           0            0
#> KRT7 p S38                               0           0           0            0
#> INPPL1 p S890                            0           0           0            0
#> KDM6A p S388                             0           0           0            0
#> DIAPH1 p S373                            0           0           0            0
#> CTNND1 p S252                            0           0           0            0
#>               EPS8 p T499 ADAM9 p T761 MAPK14 p T180 MAPK14 p T185 TJAP1 p T354
#> KRT7 p S37              0            0             0             0            0
#> KRT7 p S38              0            0             0             0            0
#> INPPL1 p S890           0            0             0             1            0
#> KDM6A p S388            0            0             0             0            0
#> DIAPH1 p S373           0            0             0             0            0
#> CTNND1 p S252           0            0             0             0            0
#>               CRYBG3 p T228 PRAG1 p T407 HIPK2 p T360; HIPK1 p T351
#> KRT7 p S37                0            0                          0
#> KRT7 p S38                0            0                          0
#> INPPL1 p S890             0            0                          0
#> KDM6A p S388              0            0                          0
#> DIAPH1 p S373             0            0                          0
#> CTNND1 p S252             0            0                          0
#>               ARHGAP12 p T230 ARHGAP12 p T231 GPRC5A p T315 UTP15 p T87
#> KRT7 p S37                  0               0             0           0
#> KRT7 p S38                  0               0             0           0
#> INPPL1 p S890               0               0             0           0
#> KDM6A p S388                0               0             0           0
#> DIAPH1 p S373               0               0             0           0
#> CTNND1 p S252               0               0             0           0
#>               CSRNP3 p T271 PIK3R3 p T203 DYRK4 p T263; DYRK2 p T381 EMG1 p T60
#> KRT7 p S37                0             0                          0          0
#> KRT7 p S38                0             0                          0          0
#> INPPL1 p S890             0             0                          0          0
#> KDM6A p S388              0             0                          0          0
#> DIAPH1 p S373             0             0                          0          0
#> CTNND1 p S252             0             0                          0          0
#>               LPP p T316 C11orf52 p T101 C11orf52 p T105 PDLIM5 p T248
#> KRT7 p S37             0               0               0             0
#> KRT7 p S38             0               0               0             0
#> INPPL1 p S890          0               0               0             0
#> KDM6A p S388           0               0               0             0
#> DIAPH1 p S373          0               0               0             0
#> CTNND1 p S252          0               0               0             0
#>               DCBLD2 p T734 CNN2 p T186 PKP4 p T477 PKP4 p T412 PKP4 p T1166
#> KRT7 p S37                0           0           0           0            0
#> KRT7 p S38                0           0           0           0            0
#> INPPL1 p S890             0           0           0           0            0
#> KDM6A p S388              0           0           0           0            0
#> DIAPH1 p S373             0           0           0           0            0
#> CTNND1 p S252             0           0           0           0            0
#>               PKP2 p T216 ESYT1 p T824 CDCP1 p T807 PLEKHA5 p T399 EML4 p T252
#> KRT7 p S37              0            0            0              0           0
#> KRT7 p S38              0            0            0              0           0
#> INPPL1 p S890           0            0            0              0           0
#> KDM6A p S388            0            0            0              0           0
#> DIAPH1 p S373           0            0            0              0           0
#> CTNND1 p S252           0            0            0              0           0
#>               CDV3 p T182 ALK p T1506 ANKRD26 p T295 ICK p T157
#> KRT7 p S37              0           0              0          0
#> KRT7 p S38              0           0              0          0
#> INPPL1 p S890           0           0              0          0
#> KDM6A p S388            0           0              0          0
#> DIAPH1 p S373           0           0              0          0
#> CTNND1 p S252           0           0              0          0
#>               KRT8 p Y267; KRT75 p Y267; KRT8 p Y340; KRT75 p Y347; KRT8 p Y327; KRT75 p Y327
#> KRT7 p S37                                                                                  0
#> KRT7 p S38                                                                                  0
#> INPPL1 p S890                                                                               0
#> KDM6A p S388                                                                                0
#> DIAPH1 p S373                                                                               0
#> CTNND1 p S252                                                                               0
#>               KRT8 p Y10 KRT8 p Y25 KRT19 p Y391 KRT7 p Y205; KRT7 p Y246
#> KRT7 p S37             0          0            0                        0
#> KRT7 p S38             0          0            0                        0
#> INPPL1 p S890          0          0            0                        0
#> KDM6A p S388           0          0            0                        0
#> DIAPH1 p S373          0          0            0                        0
#> CTNND1 p S252          0          0            0                        0
#>               KRT7 p Y40 KRT7 p Y55 SH3PXD2B p Y25
#> KRT7 p S37             0          0              0
#> KRT7 p S38             0          0              0
#> INPPL1 p S890          0          0              0
#> KDM6A p S388           0          0              0
#> DIAPH1 p S373          0          0              0
#> CTNND1 p S252          0          0              0
#>               PIPSL p Y89; PIP5K1C p Y136; PIP5K1A p Y142 ARHGAP32 p Y1520
#> KRT7 p S37                                              0                0
#> KRT7 p S38                                              0                0
#> INPPL1 p S890                                           0                0
#> KDM6A p S388                                            0                0
#> DIAPH1 p S373                                           0                0
#> CTNND1 p S252                                           0                0
#>               ARHGAP32 p Y1557 ARHGAP32 p Y1537 CYSRT1 p Y12 AJM1 p Y469
#> KRT7 p S37                   0                0            0           0
#> KRT7 p S38                   0                0            0           0
#> INPPL1 p S890                0                0            0           0
#> KDM6A p S388                 0                0            0           0
#> DIAPH1 p S373                0                0            0           0
#> CTNND1 p S252                0                0            0           0
#>               DDX39A p Y38; DDX39B p Y39 ACOT7 p Y194 AIP p Y202 AIP p Y203
#> KRT7 p S37                             0            0          0          0
#> KRT7 p S38                             0            0          0          0
#> INPPL1 p S890                          0            0          0          0
#> KDM6A p S388                           0            0          0          0
#> DIAPH1 p S373                          0            0          0          0
#> CTNND1 p S252                          0            0          0          0
#>               ARVCF p Y201 WASL p Y256 PIK3R2 p Y505 DDX3X p Y69; DDX3Y p Y69
#> KRT7 p S37               0           0             0                        0
#> KRT7 p S38               0           0             0                        0
#> INPPL1 p S890            0           0             0                        0
#> KDM6A p S388             0           0             0                        0
#> DIAPH1 p S373            0           0             0                        0
#> CTNND1 p S252            0           0             0                        0
#>               DDX3X p Y266; DDX3Y p Y264 PIK3C2B p Y1401 PIK3C2B p Y1541
#> KRT7 p S37                             0               0               0
#> KRT7 p S38                             0               0               0
#> INPPL1 p S890                          0               0               0
#> KDM6A p S388                           0               0               0
#> DIAPH1 p S373                          0               0               0
#> CTNND1 p S252                          0               0               0
#>               CLDN4 p Y208 ADAM10 p Y741 HGS p Y286 SEC16A p Y813
#> KRT7 p S37               0             0          0             0
#> KRT7 p S38               0             0          0             0
#> INPPL1 p S890            0             0          0             0
#> KDM6A p S388             0             0          0             0
#> DIAPH1 p S373            0             0          0             0
#> CTNND1 p S252            0             0          0             0
#>               SEC16A p Y1031 ZNF185 p Y581 MAPK13 p Y182 INPPL1 p Y671
#> KRT7 p S37                 0             0             0             0
#> KRT7 p S38                 0             0             0             0
#> INPPL1 p S890              0             0             0             0
#> KDM6A p S388               0             0             0             0
#> DIAPH1 p S373              0             0             0             0
#> CTNND1 p S252              0             0             0             0
#>               INPPL1 p Y886 INPPL1 p Y1162 INPPL1 p Y986 INPPL1 p Y1135
#> KRT7 p S37                0              0             0              0
#> KRT7 p S38                0              0             0              0
#> INPPL1 p S890             0              0             0              0
#> KDM6A p S388              0              0             0              0
#> DIAPH1 p S373             0              0             0              0
#> CTNND1 p S252             0              0             0              0
#>               TPD52L2 p Y106 EPB41L2 p Y623 ATP8B1 p Y1217 SPRY2 p Y55
#> KRT7 p S37                 0              0              0           0
#> KRT7 p S38                 0              0              0           0
#> INPPL1 p S890              0              0              0           0
#> KDM6A p S388               0              0              0           0
#> DIAPH1 p S373              0              0              0           0
#> CTNND1 p S252              0              0              0           0
#>               SPRY1 p Y89 ENSA p Y64; ARPP19 p Y59 ENSA p Y70; ARPP19 p Y65
#> KRT7 p S37              0                        0                        0
#> KRT7 p S38              0                        0                        0
#> INPPL1 p S890           0                        0                        0
#> KDM6A p S388            0                        0                        0
#> DIAPH1 p S373           0                        0                        0
#> CTNND1 p S252           0                        0                        0
#>               NUDT21 p Y40 SYNCRIP p Y373 SYNCRIP p Y205 BUB1B p Y404
#> KRT7 p S37               0              0              0            0
#> KRT7 p S38               0              0              0            0
#> INPPL1 p S890            0              0              0            0
#> KDM6A p S388             0              0              0            0
#> DIAPH1 p S373            0              0              0            0
#> CTNND1 p S252            0              0              0            0
#>               CTNND1 p Y257 CTNND1 p Y280 CTNND1 p Y217 CTNND1 p Y228
#> KRT7 p S37                0             0             0             0
#> KRT7 p S38                0             0             0             0
#> INPPL1 p S890             0             0             0             0
#> KDM6A p S388              0             0             0             0
#> DIAPH1 p S373             0             0             0             0
#> CTNND1 p S252             0             0             0             0
#>               CTNND1 p Y213 CTNND1 p Y904 CTNND1 p Y335 CTNND1 p Y248
#> KRT7 p S37                0             0             0             0
#> KRT7 p S38                0             0             0             0
#> INPPL1 p S890             0             0             0             0
#> KDM6A p S388              0             0             0             0
#> DIAPH1 p S373             0             0             0             0
#> CTNND1 p S252             0             0             0             0
#>               TOM1 p Y386
#> KRT7 p S37              0
#> KRT7 p S38              0
#> INPPL1 p S890           0
#> KDM6A p S388            0
#> DIAPH1 p S373           0
#> CTNND1 p S252           0
#>               LILRA1 p Y291; LILRA4 p Y289; LILRB2 p Y290; LILRB1 p Y291
#> KRT7 p S37                                                             0
#> KRT7 p S38                                                             0
#> INPPL1 p S890                                                          0
#> KDM6A p S388                                                           0
#> DIAPH1 p S373                                                          0
#> CTNND1 p S252                                                          0
#>               FAM20B p Y138 FAM20B p Y141 WDR1 p Y238 ROCK2 p Y722 FLNB p Y2502
#> KRT7 p S37                0             0           0            0            0
#> KRT7 p S38                0             0           0            0            0
#> INPPL1 p S890             0             0           0            0            0
#> KDM6A p S388              0             0           0            0            0
#> DIAPH1 p S373             0             0           0            0            0
#> CTNND1 p S252             0             0           0            0            0
#>               SPAG7 p Y189 TIPRL p Y209 BCAR3 p Y266 BCAR3 p Y117 BCAR3 p Y212
#> KRT7 p S37               0            0            0            0            0
#> KRT7 p S38               0            0            0            0            0
#> INPPL1 p S890            0            0            0            0            0
#> KDM6A p S388             0            0            0            0            0
#> DIAPH1 p S373            0            0            0            0            0
#> CTNND1 p S252            0            0            0            0            0
#>               BCAR3 p Y42 FLOT1 p Y203 CPD p Y1344 CDKL5 p Y171 SCEL p Y58
#> KRT7 p S37              0            0           0            0          0
#> KRT7 p S38              0            0           0            0          0
#> INPPL1 p S890           0            0           0            0          0
#> KDM6A p S388            0            0           0            0          0
#> DIAPH1 p S373           0            0           0            0          0
#> CTNND1 p S252           0            0           0            0          0
#>               SCEL p Y295 SPDEF p Y329 MPZL1 p Y263 CLDN7 p Y210 ADGRL2 p Y1372
#> KRT7 p S37              0            0            0            0              0
#> KRT7 p S38              0            0            0            0              0
#> INPPL1 p S890           0            0            0            0              0
#> KDM6A p S388            0            0            0            0              0
#> DIAPH1 p S373           0            0            0            0              0
#> CTNND1 p S252           0            0            0            0              0
#>               ADGRL2 p Y1406 SNAP29 p Y160 PTBP3 p Y127 CLDN1 p Y210
#> KRT7 p S37                 0             0            0            0
#> KRT7 p S38                 0             0            0            0
#> INPPL1 p S890              0             0            0            0
#> KDM6A p S388               0             0            0            0
#> DIAPH1 p S373              0             0            0            0
#> CTNND1 p S252              0             0            0            0
#>               LDHA p Y239 ABL1 p Y393; ABL2 p Y439 ABL1 p Y185 EGFR p Y869
#> KRT7 p S37              0                        0           0           0
#> KRT7 p S38              0                        0           0           0
#> INPPL1 p S890           0                        0           0           0
#> KDM6A p S388            0                        0           0           0
#> DIAPH1 p S373           0                        0           0           0
#> CTNND1 p S252           0                        0           0           0
#>               EGFR p Y1172 EGFR p Y1197 EGFR p Y1110
#> KRT7 p S37               0            0            0
#> KRT7 p S38               0            0            0
#> INPPL1 p S890            0            0            0
#> KDM6A p S388             0            0            0
#> DIAPH1 p S373            0            0            0
#> CTNND1 p S252            0            0            0
#>               EGFR p Y727; ERBB4 p Y733; ERBB2 p Y735 EGFR p Y1092 PGK1 p Y196
#> KRT7 p S37                                          0            0           0
#> KRT7 p S38                                          0            0           0
#> INPPL1 p S890                                       0            0           0
#> KDM6A p S388                                        0            0           0
#> DIAPH1 p S373                                       0            0           0
#> CTNND1 p S252                                       0            0           0
#>               MBP p Y148 ALDOA p Y204; ALDOC p Y204 ALDOA p Y3 ALDOA p Y5
#> KRT7 p S37             0                          0          0          0
#> KRT7 p S38             0                          0          0          0
#> INPPL1 p S890          0                          0          0          0
#> KDM6A p S388           0                          0          0          0
#> DIAPH1 p S373          0                          0          0          0
#> CTNND1 p S252          0                          0          0          0
#>               ERBB2 p Y877 CAPNS1 p Y87 ATP1A1 p Y260 ATP1A1 p Y55
#> KRT7 p S37               0            0             0            0
#> KRT7 p S38               0            0             0            0
#> INPPL1 p S890            0            0             0            0
#> KDM6A p S388             0            0             0            0
#> DIAPH1 p S373            0            0             0            0
#> CTNND1 p S252            0            0             0            0
#>               SLC25A5 p Y191 SLC25A5 p Y195 EIF2S1 p Y147 EIF2S1 p Y150
#> KRT7 p S37                 0              0             0             0
#> KRT7 p S38                 0              0             0             0
#> INPPL1 p S890              0              0             0             0
#> KDM6A p S388               0              0             0             1
#> DIAPH1 p S373              0              0             0             0
#> CTNND1 p S252              0              0             0             0
#>               RPLP0 p Y24; RPLP0P6 p Y24 ITGB1 p Y783 KRT18 p Y94 KRT18 p Y36
#> KRT7 p S37                             0            0           0           0
#> KRT7 p S38                             0            0           0           0
#> INPPL1 p S890                          0            0           0           0
#> KDM6A p S388                           0            0           0           0
#> DIAPH1 p S373                          0            0           0           0
#> CTNND1 p S252                          0            0           0           0
#>               KRT18 p Y24 KRT18 p Y13 INSR p Y1185; IGF1R p Y1161
#> KRT7 p S37              0           0                           0
#> KRT7 p S38              0           0                           0
#> INPPL1 p S890           0           0                           0
#> KDM6A p S388            0           0                           0
#> DIAPH1 p S373           0           0                           0
#> CTNND1 p S252           0           0                           0
#>               INSR p Y1189; IGF1R p Y1165
#> KRT7 p S37                              0
#> KRT7 p S38                              0
#> INPPL1 p S890                           0
#> KDM6A p S388                            0
#> DIAPH1 p S373                           0
#> CTNND1 p S252                           0
#>               LCK p Y394; SRC p Y419; FYN p Y420; YES1 p Y426 LCK p Y192
#> KRT7 p S37                                                  0          0
#> KRT7 p S38                                                  0          0
#> INPPL1 p S890                                               0          0
#> KDM6A p S388                                                0          0
#> DIAPH1 p S373                                               0          0
#> CTNND1 p S252                                               0          0
#>               FYN p Y28 FYN p Y185; FGR p Y180; YES1 p Y194
#> KRT7 p S37            0                                   0
#> KRT7 p S38            0                                   0
#> INPPL1 p S890         0                                   0
#> KDM6A p S388          0                                   0
#> DIAPH1 p S373         0                                   0
#> CTNND1 p S252         0                                   0
#>               FYN p Y213; YES1 p Y222 FYN p Y214; YES1 p Y223
#> KRT7 p S37                          0                       0
#> KRT7 p S38                          0                       0
#> INPPL1 p S890                       0                       0
#> KDM6A p S388                        0                       0
#> DIAPH1 p S373                       0                       0
#> CTNND1 p S252                       0                       0
#>               CDK1 p Y15; CDK2 p Y15; CDK3 p Y15
#> KRT7 p S37                                     0
#> KRT7 p S38                                     0
#> INPPL1 p S890                                  0
#> KDM6A p S388                                   0
#> DIAPH1 p S373                                  0
#> CTNND1 p S252                                  0
#>               CDK1 p Y19; CDK2 p Y19; CDK3 p Y19
#> KRT7 p S37                                     0
#> KRT7 p S38                                     0
#> INPPL1 p S890                                  0
#> KDM6A p S388                                   0
#> DIAPH1 p S373                                  0
#> CTNND1 p S252                                  0
#>               ENO1 p Y44; ENO2 p Y44; ENO3 p Y44 ENO1 p Y189 ENO1 p Y287
#> KRT7 p S37                                     0           0           0
#> KRT7 p S38                                     0           0           0
#> INPPL1 p S890                                  0           0           0
#> KDM6A p S388                                   0           0           0
#> DIAPH1 p S373                                  0           0           0
#> CTNND1 p S252                                  0           0           0
#>               LDHB p Y240 ANXA2 p Y30; ANXA2P2 p Y30 ANXA2 p Y24; ANXA2P2 p Y24
#> KRT7 p S37              0                          0                          0
#> KRT7 p S38              0                          0                          0
#> INPPL1 p S890           0                          0                          0
#> KDM6A p S388            0                          0                          0
#> DIAPH1 p S373           0                          0                          0
#> CTNND1 p S252           0                          0                          0
#>               ANXA2 p Y316; ANXA2P2 p Y316 ANXA2 p Y317; ANXA2P2 p Y317
#> KRT7 p S37                               0                            0
#> KRT7 p S38                               0                            0
#> INPPL1 p S890                            0                            0
#> KDM6A p S388                             0                            0
#> DIAPH1 p S373                            0                            0
#> CTNND1 p S252                            0                            0
#>               ANXA2 p Y238; ANXA2P2 p Y238 PFN1 p Y129 HSP90AA1 p Y627
#> KRT7 p S37                               0           0               0
#> KRT7 p S38                               0           0               0
#> INPPL1 p S890                            0           0               0
#> KDM6A p S388                             0           0               0
#> DIAPH1 p S373                            0           0               0
#> CTNND1 p S252                            0           0               0
#>               HSP90AA1 p Y492; HSP90AA5P p Y177
#> KRT7 p S37                                    0
#> KRT7 p S38                                    0
#> INPPL1 p S890                                 0
#> KDM6A p S388                                  0
#> DIAPH1 p S373                                 0
#> CTNND1 p S252                                 0
#>               HSP90AA1 p Y61; HSP90AA2P p Y61; HSP90AB1 p Y56; HSP90AB3P p Y56; HSP90AB2P p Y56
#> KRT7 p S37                                                                                    0
#> KRT7 p S38                                                                                    0
#> INPPL1 p S890                                                                                 0
#> KDM6A p S388                                                                                  0
#> DIAPH1 p S373                                                                                 0
#> CTNND1 p S252                                                                                 0
#>               HSP90AA1 p Y284; HSP90AA2P p Y283; HSP90AB1 p Y276; HSP90AB2P p Y198
#> KRT7 p S37                                                                       0
#> KRT7 p S38                                                                       0
#> INPPL1 p S890                                                                    0
#> KDM6A p S388                                                                     0
#> DIAPH1 p S373                                                                    0
#> CTNND1 p S252                                                                    0
#>               LYN p Y194 LYN p Y32 LYN p Y397; HCK p Y411
#> KRT7 p S37             0         0                      0
#> KRT7 p S38             0         0                      0
#> INPPL1 p S890          0         0                      0
#> KDM6A p S388           0         0                      0
#> DIAPH1 p S373          0         0                      0
#> CTNND1 p S252          0         0                      0
#>               HSP90AB1 p Y484; HSP90AB2P p Y260 MET p Y1234 SNRNP70 p Y126
#> KRT7 p S37                                    0           0              0
#> KRT7 p S38                                    0           0              0
#> INPPL1 p S890                                 0           0              0
#> KDM6A p S388                                  0           0              0
#> DIAPH1 p S373                                 0           0              0
#> CTNND1 p S252                                 0           0              0
#>               RPSA p Y156 HNRNPA1 p Y366 HNRNPA1 p Y341 HNRNPA1 p Y347
#> KRT7 p S37              0              0              0              0
#> KRT7 p S38              0              0              0              0
#> INPPL1 p S890           0              0              0              0
#> KDM6A p S388            0              0              0              0
#> DIAPH1 p S373           0              0              0              0
#> CTNND1 p S252           0              0              0              0
#>               CALM3 p Y100; CALM2 p Y100; CALM1 p Y100 ESD p Y202 EPB41 p Y660
#> KRT7 p S37                                           1          0            0
#> KRT7 p S38                                           0          0            0
#> INPPL1 p S890                                        0          0            0
#> KDM6A p S388                                         0          0            0
#> DIAPH1 p S373                                        0          0            0
#> CTNND1 p S252                                        0          0            0
#>               UMPS p Y37 BCR p Y177 G6PD p Y202 G6PD p Y503 G6PD p Y507
#> KRT7 p S37             0          0           0           0           0
#> KRT7 p S38             0          0           0           0           0
#> INPPL1 p S890          0          0           0           0           0
#> KDM6A p S388           0          0           0           0           0
#> DIAPH1 p S373          0          0           0           0           0
#> CTNND1 p S252          0          0           0           0           0
#>               G6PD p Y401 PABPC1 p Y54; PABPC4 p Y54 ACTN1 p Y193 PKM p Y83
#> KRT7 p S37              0                          0            0         0
#> KRT7 p S38              0                          0            0         0
#> INPPL1 p S890           0                          0            0         0
#> KDM6A p S388            0                          0            0         0
#> DIAPH1 p S373           0                          0            0         0
#> CTNND1 p S252           0                          0            0         0
#>               PKM p Y105 SNRPN p Y15; SNRPB p Y15 GLUL p Y185 GLUL p Y180
#> KRT7 p S37             0                        0           0           0
#> KRT7 p S38             0                        0           0           0
#> INPPL1 p S890          0                        0           0           0
#> KDM6A p S388           0                        0           0           0
#> DIAPH1 p S373          0                        0           0           0
#> CTNND1 p S252          0                        0           0           0
#>               AKR1B1 p Y49 AKR1B1 p Y190 EZR p Y270; MSN p Y270; RDX p Y270
#> KRT7 p S37               0             0                                  0
#> KRT7 p S38               0             0                                  0
#> INPPL1 p S890            0             0                                  0
#> KDM6A p S388             0             0                                  0
#> DIAPH1 p S373            0             0                                  0
#> CTNND1 p S252            0             0                                  0
#>               VAV1 p Y541 VAV1 p Y423 NQO1 p Y20 DSP p Y56 DSP p Y28
#> KRT7 p S37              0           0          0         0         0
#> KRT7 p S38              0           0          0         0         0
#> INPPL1 p S890           0           0          0         0         0
#> KDM6A p S388            0           0          0         0         0
#> DIAPH1 p S373           0           0          0         0         0
#> CTNND1 p S252           0           0          0         0         0
#>               MUC1 p Y1203 MUC1 p Y1212 MUC1 p Y1229 ITGB4 p Y1510 CBR1 p Y194
#> KRT7 p S37               0            0            0             0           0
#> KRT7 p S38               0            0            0             0           0
#> INPPL1 p S890            0            0            0             0           0
#> KDM6A p S388             0            0            0             0           0
#> DIAPH1 p S373            0            0            0             0           0
#> CTNND1 p S252            0            0            0             0           0
#>               FER p Y714 GOT1 p Y381 CEBPB p Y139 DDX5 p Y59
#> KRT7 p S37             0           0            0          0
#> KRT7 p S38             0           0            0          0
#> INPPL1 p S890          0           0            0          0
#> KDM6A p S388           0           0            0          0
#> DIAPH1 p S373          0           0            0          0
#> CTNND1 p S252          0           0            0          0
#>               DDX5 p Y202; DDX17 p Y279 DDX5 p Y442 RPL35A p Y34 VCL p Y822
#> KRT7 p S37                            0           0            0          0
#> KRT7 p S38                            0           0            0          0
#> INPPL1 p S890                         0           0            0          0
#> KDM6A p S388                          0           0            0          0
#> DIAPH1 p S373                         0           0            0          0
#> CTNND1 p S252                         0           0            0          0
#>               PTPRA p Y798 PGAM1 p Y92; PGAM2 p Y92; PGAM4 p Y92 SDC1 p Y309
#> KRT7 p S37               0                                     0           0
#> KRT7 p S38               0                                     0           0
#> INPPL1 p S890            0                                     0           0
#> KDM6A p S388             0                                     0           0
#> DIAPH1 p S373            0                                     0           0
#> CTNND1 p S252            0                                     0           0
#>               PLCG1 p Y428 RASA1 p Y460 ENDOU p Y394 EPHA1 p Y781 ERBB3 p Y1307
#> KRT7 p S37               0            0            0            0             0
#> KRT7 p S38               0            0            0            0             0
#> INPPL1 p S890            0            0            0            0             0
#> KDM6A p S388             0            0            0            0             0
#> DIAPH1 p S373            0            0            0            0             0
#> CTNND1 p S252            0            0            0            0             0
#>               ERBB3 p Y1328 TGM2 p Y369 GART p Y348 HNRNPA2B1 p Y331
#> KRT7 p S37                0           0           0                0
#> KRT7 p S38                0           0           0                0
#> INPPL1 p S890             0           0           0                0
#> KDM6A p S388              0           0           0                0
#> DIAPH1 p S373             0           0           0                0
#> CTNND1 p S252             0           0           0                0
#>               HNRNPA2B1 p Y336 HNRNPA2B1 p Y347 HNRNPA2B1 p Y174 CBL p Y674
#> KRT7 p S37                   0                0                0          0
#> KRT7 p S38                   0                0                0          0
#> INPPL1 p S890                0                0                0          0
#> KDM6A p S388                 0                0                0          0
#> DIAPH1 p S373                0                0                0          0
#> CTNND1 p S252                0                0                0          0
#>               RPS3 p Y120 PTPRE p Y696 AHCY p Y193 CFL1 p Y140 ATP5PB p Y165
#> KRT7 p S37              0            0           0           0             0
#> KRT7 p S38              0            0           0           0             0
#> INPPL1 p S890           0            0           0           0             0
#> KDM6A p S388            0            0           0           0             0
#> DIAPH1 p S373           0            0           0           0             0
#> CTNND1 p S252           0            0           0           0             0
#>               PSMA2 p Y76 PSMA2 p Y57 DDX6 p Y313 PTBP1 p Y127 TARS p Y298
#> KRT7 p S37              0           0           0            0           0
#> KRT7 p S38              0           0           0            0           0
#> INPPL1 p S890           0           0           0            0           0
#> KDM6A p S388            0           0           0            0           0
#> DIAPH1 p S373           0           0           0            0           0
#> CTNND1 p S252           0           0           0            0           0
#>               VARS p Y469 MAPK3 p Y204 PIK3R1 p Y467 PSMB5 p Y220 MAPK1 p Y187
#> KRT7 p S37              0            0             0            0            0
#> KRT7 p S38              0            0             0            0            0
#> INPPL1 p S890           0            0             0            0            0
#> KDM6A p S388            0            0             0            0            0
#> DIAPH1 p S373           0            0             0            0            0
#> CTNND1 p S252           0            0             0            0            0
#>               PTPRK p Y916; PTPRM p Y929 EPHA2 p Y960 EPHA2 p Y575 EPHA2 p Y588
#> KRT7 p S37                             0            0            0            0
#> KRT7 p S38                             0            0            0            0
#> INPPL1 p S890                          0            0            0            0
#> KDM6A p S388                           0            0            0            0
#> DIAPH1 p S373                          0            0            0            0
#> CTNND1 p S252                          0            0            0            0
#>               EPHA2 p Y594 EPHA2 p Y772
#> KRT7 p S37               0            0
#> KRT7 p S38               0            0
#> INPPL1 p S890            0            0
#> KDM6A p S388             0            0
#> DIAPH1 p S373            0            0
#> CTNND1 p S252            0            0
#>               EPHA3 p Y779; EPHA4 p Y779; EPHA5 p Y833 EPHB2 p Y780
#> KRT7 p S37                                           0            0
#> KRT7 p S38                                           0            0
#> INPPL1 p S890                                        0            0
#> KDM6A p S388                                         0            0
#> DIAPH1 p S373                                        0            0
#> CTNND1 p S252                                        0            0
#>               PTPN6 p Y536 PTPN6 p Y564 SHC1 p Y427 SHC1 p Y315 TYK2 p Y292
#> KRT7 p S37               0            0           0           0           0
#> KRT7 p S38               0            0           0           0           0
#> INPPL1 p S890            0            0           0           0           0
#> KDM6A p S388             0            0           0           0           0
#> DIAPH1 p S373            0            0           0           0           0
#> CTNND1 p S252            0            0           0           0           0
#>               ERP29 p Y66 AXL p Y866 SDC4 p Y197 ATIC p Y104 HNRNPH3 p Y296
#> KRT7 p S37              1          0           0           0              0
#> KRT7 p S38              0          0           0           0              0
#> INPPL1 p S890           0          0           0           0              0
#> KDM6A p S388            0          0           0           0              0
#> DIAPH1 p S373           0          0           0           0              0
#> CTNND1 p S252           0          0           0           0              0
#>               S100A11 p Y30 CDH5 p Y685 HSPA4 p Y336
#> KRT7 p S37                0           0            0
#> KRT7 p S38                0           0            0
#> INPPL1 p S890             0           0            0
#> KDM6A p S388              0           0            0
#> DIAPH1 p S373             0           0            0
#> CTNND1 p S252             0           0            0
#>               CTNNA1 p Y419; CTNNA2 p Y417 IRS1 p Y941 IRS1 p Y989 IRS1 p Y612
#> KRT7 p S37                               0           0           0           0
#> KRT7 p S38                               0           0           0           0
#> INPPL1 p S890                            0           0           0           0
#> KDM6A p S388                             0           0           0           0
#> DIAPH1 p S373                            0           0           0           0
#> CTNND1 p S252                            0           0           0           0
#>               IRS1 p Y632 IRS1 p Y46 AGL p Y584 MYH9 p Y754 MYH9 p Y1408
#> KRT7 p S37              0          0          0           0            1
#> KRT7 p S38              0          0          0           0            0
#> INPPL1 p S890           0          0          0           0            0
#> KDM6A p S388            0          0          0           0            0
#> DIAPH1 p S373           0          0          0           0            0
#> CTNND1 p S252           0          0          0           0            0
#>               MYH9 p Y1805 COPB2 p Y101 NUDT1 p Y48 GMPR p Y318; GMPR2 p Y318
#> KRT7 p S37               0            0           0                         0
#> KRT7 p S38               0            0           0                         0
#> INPPL1 p S890            0            0           0                         0
#> KDM6A p S388             0            0           0                         0
#> DIAPH1 p S373            0            0           0                         0
#> CTNND1 p S252            0            0           0                         0
#>               TAGLN2 p Y192; TAGLN3 p Y192 TAGLN2 p Y8 RBMX p Y335 IL6ST p Y905
#> KRT7 p S37                               0           0           0            0
#> KRT7 p S38                               0           0           0            0
#> INPPL1 p S890                            0           0           0            0
#> KDM6A p S388                             0           0           0            0
#> DIAPH1 p S373                            0           0           0            0
#> CTNND1 p S252                            0           0           0            1
#>               CEACAM3 p Y241 CEACAM3 p Y230 STAT3 p Y705
#> KRT7 p S37                 0              0            0
#> KRT7 p S38                 0              0            0
#> INPPL1 p S890              0              0            0
#> KDM6A p S388               0              0            0
#> DIAPH1 p S373              0              0            0
#> CTNND1 p S252              0              0            0
#>               NAA10 p Y106; NAA11 p Y106 EIF1 p Y30; EIF1B p Y30 PI4KA p Y1154
#> KRT7 p S37                             0                       0             0
#> KRT7 p S38                             0                       0             0
#> INPPL1 p S890                          0                       0             0
#> KDM6A p S388                           0                       0             0
#> DIAPH1 p S373                          0                       0             0
#> CTNND1 p S252                          0                       0             0
#>               TEC p Y519 FRK p Y46 FRK p Y497 FRK p Y387 SYK p Y203 SYK p Y296
#> KRT7 p S37             0         0          0          0          0          0
#> KRT7 p S38             0         0          0          0          0          0
#> INPPL1 p S890          0         0          0          0          0          0
#> KDM6A p S388           0         0          0          0          0          0
#> DIAPH1 p S373          0         0          0          0          0          0
#> CTNND1 p S252          0         0          0          0          0          0
#>               MAPK8 p Y185; MAPK10 p Y223 MAPK9 p Y185 CRK p Y136 CRK p Y251
#> KRT7 p S37                              0            0          0          0
#> KRT7 p S38                              0            0          0          0
#> INPPL1 p S890                           0            0          0          0
#> KDM6A p S388                            0            0          0          0
#> DIAPH1 p S373                           0            0          0          0
#> CTNND1 p S252                           0            0          0          0
#>               CRKL p Y251 RPS10 p Y12 IQGAP1 p Y1510 PLA2G4A p Y535 QARS p Y491
#> KRT7 p S37              0           0              0              0           0
#> KRT7 p S38              0           0              0              0           0
#> INPPL1 p S890           0           0              0              0           0
#> KDM6A p S388            0           0              0              0           0
#> DIAPH1 p S373           0           0              0              0           0
#> CTNND1 p S252           0           0              0              0           0
#>               PITPNB p Y91; PITPNA p Y91 PITPNB p Y93; PITPNA p Y93 PXN p Y88
#> KRT7 p S37                             0                          0         0
#> KRT7 p S38                             0                          0         0
#> INPPL1 p S890                          0                          0         0
#> KDM6A p S388                           0                          0         0
#> DIAPH1 p S373                          0                          0         0
#> CTNND1 p S252                          0                          0         0
#>               PXN p Y118 PCYT1A p Y213; PCYT1B p Y213 PSMB2 p Y146 PSMB2 p Y147
#> KRT7 p S37             0                            0            0            0
#> KRT7 p S38             0                            0            0            0
#> INPPL1 p S890          0                            0            0            0
#> KDM6A p S388           0                            0            0            0
#> DIAPH1 p S373          0                            0            0            0
#> CTNND1 p S252          0                            0            0            0
#>               GSK3B p Y216; GSK3A p Y279 GMPS p Y526 CRIP1 p Y12 EMD p Y161
#> KRT7 p S37                             0           0           0          0
#> KRT7 p S38                             0           0           0          0
#> INPPL1 p S890                          0           0           0          0
#> KDM6A p S388                           0           0           0          0
#> DIAPH1 p S373                          0           0           0          0
#> CTNND1 p S252                          0           0           0          0
#>               VASP p Y39 DNM2 p Y231; DNM1 p Y231 CCT8 p Y30 ANXA11 p Y482
#> KRT7 p S37             0                        0          0             0
#> KRT7 p S38             0                        0          0             0
#> INPPL1 p S890          0                        0          0             0
#> KDM6A p S388           0                        0          0             0
#> DIAPH1 p S373          0                        0          0             0
#> CTNND1 p S252          0                        0          0             0
#>               RAB13 p Y5 HNRNPA3 p Y360 HNRNPM p Y64 ARHGDIA p Y133
#> KRT7 p S37             0              0            0              0
#> KRT7 p S38             0              0            0              0
#> INPPL1 p S890          0              0            0              0
#> KDM6A p S388           0              0            0              0
#> DIAPH1 p S373          0              0            0              0
#> CTNND1 p S252          0              0            0              0
#>               EFNB2 p Y304 CRIP2 p Y13 CRIP2 p Y134 ACLY p Y682 COPA p Y249
#> KRT7 p S37               0           0            0           0           0
#> KRT7 p S38               0           0            0           0           0
#> INPPL1 p S890            0           0            0           0           0
#> KDM6A p S388             0           0            0           0           0
#> DIAPH1 p S373            0           0            0           0           0
#> CTNND1 p S252            0           0            0           0           0
#>               CLTCL1 p Y1096; CLTC p Y1096 MAPK12 p Y185 PTTG1IP p Y174
#> KRT7 p S37                               0             0              0
#> KRT7 p S38                               0             0              0
#> INPPL1 p S890                            0             0              0
#> KDM6A p S388                             0             0              0
#> DIAPH1 p S373                            0             0              0
#> CTNND1 p S252                            0             0              0
#>               RARS p Y291 PRKAG1 p Y39 EPHB4 p Y574 AK2 p Y12 FGF8 p Y72
#> KRT7 p S37              0            0            0         0          0
#> KRT7 p S38              0            0            0         0          0
#> INPPL1 p S890           0            0            0         0          0
#> KDM6A p S388            0            0            0         0          0
#> DIAPH1 p S373           0            0            0         0          0
#> CTNND1 p S252           0            0            0         0          0
#>               FGF8 p Y75 AFDN p Y1230 EIF3B p Y525 EIF3B p Y339 BCAR1 p Y128
#> KRT7 p S37             0            0            0            0            0
#> KRT7 p S38             0            0            0            0            0
#> INPPL1 p S890          0            0            0            0            0
#> KDM6A p S388           0            0            0            0            0
#> DIAPH1 p S373          0            0            0            0            0
#> CTNND1 p S252          0            0            0            0            1
#>               BCAR1 p Y306 BCAR1 p Y249 BCAR1 p Y387 BCAR1 p Y234 BCAR1 p Y410
#> KRT7 p S37               0            0            0            0            0
#> KRT7 p S38               0            0            0            0            0
#> INPPL1 p S890            0            0            0            0            0
#> KDM6A p S388             0            0            0            0            0
#> DIAPH1 p S373            0            0            0            0            0
#> CTNND1 p S252            0            0            0            0            0
#>               GSDMD p Y158
#> KRT7 p S37               0
#> KRT7 p S38               0
#> INPPL1 p S890            0
#> KDM6A p S388             0
#> DIAPH1 p S373            0
#> CTNND1 p S252            0
#>               ACTG1 p Y53; ACTB p Y53; ACTA1 p Y55; ACTC1 p Y55; ACTG2 p Y54; ACTA2 p Y55
#> KRT7 p S37                                                                              0
#> KRT7 p S38                                                                              0
#> INPPL1 p S890                                                                           0
#> KDM6A p S388                                                                            0
#> DIAPH1 p S373                                                                           0
#> CTNND1 p S252                                                                           0
#>               ACTG1 p Y198; ACTB p Y198 ACTG1 p Y294; ACTB p Y294
#> KRT7 p S37                            0                         0
#> KRT7 p S38                            0                         0
#> INPPL1 p S890                         0                         0
#> KDM6A p S388                          0                         0
#> DIAPH1 p S373                         0                         0
#> CTNND1 p S252                         0                         0
#>               EIF4A1 p Y70; EIF4A2 p Y71 EIF4A1 p Y250; EIF4A2 p Y251
#> KRT7 p S37                             0                            0
#> KRT7 p S38                             0                            0
#> INPPL1 p S890                          0                            0
#> KDM6A p S388                           0                            0
#> DIAPH1 p S373                          0                            0
#> CTNND1 p S252                          0                            0
#>               S100A10 p Y25 RPL15 p Y59 MAGOH p Y40; MAGOHB p Y42 HNRNPK p Y380
#> KRT7 p S37                0           0                         0             0
#> KRT7 p S38                0           0                         0             0
#> INPPL1 p S890             0           0                         0             0
#> KDM6A p S388              0           0                         0             0
#> DIAPH1 p S373             0           0                         0             0
#> CTNND1 p S252             0           0                         0             0
#>               PPP1CA p Y306 PPP1CB p Y306 YWHAE p Y131 RAN p Y147 RAN p Y155
#> KRT7 p S37                0             0            0          0          0
#> KRT7 p S38                0             0            0          0          0
#> INPPL1 p S890             0             0            0          0          0
#> KDM6A p S388              0             0            0          0          0
#> DIAPH1 p S373             0             0            0          0          0
#> CTNND1 p S252             0             0            0          0          0
#>               GNB2 p Y59; GNB1 p Y59 GRB2 p Y209 TRA2B p Y260
#> KRT7 p S37                         0           0            0
#> KRT7 p S38                         0           0            0
#> INPPL1 p S890                      0           0            0
#> KDM6A p S388                       0           0            0
#> DIAPH1 p S373                      0           0            0
#> CTNND1 p S252                      0           0            0
#>               GNAS p Y339; GNAS p Y982 YWHAZ p Y128 DYNLL1 p Y65; DYNLL2 p Y65
#> KRT7 p S37                           0            0                          0
#> KRT7 p S38                           0            0                          0
#> INPPL1 p S890                        0            0                          0
#> KDM6A p S388                         0            0                          0
#> DIAPH1 p S373                        0            0                          0
#> CTNND1 p S252                        0            0                          0
#>               RPS21 p Y53 RACK1 p Y52 RACK1 p Y228
#> KRT7 p S37              0           0            0
#> KRT7 p S38              0           0            0
#> INPPL1 p S890           0           0            0
#> KDM6A p S388            0           0            0
#> DIAPH1 p S373           0           0            0
#> CTNND1 p S252           0           0            0
#>               EEF1A1 p Y141; EEF1A1P5 p Y141; EEF1A2 p Y141
#> KRT7 p S37                                                0
#> KRT7 p S38                                                0
#> INPPL1 p S890                                             0
#> KDM6A p S388                                              0
#> DIAPH1 p S373                                             0
#> CTNND1 p S252                                             0
#>               EEF1A1 p Y177; EEF1A1P5 p Y177
#> KRT7 p S37                                 0
#> KRT7 p S38                                 0
#> INPPL1 p S890                              0
#> KDM6A p S388                               0
#> DIAPH1 p S373                              0
#> CTNND1 p S252                              0
#>               EEF1A1 p Y29; EEF1A1P5 p Y29; EEF1A2 p Y29
#> KRT7 p S37                                             0
#> KRT7 p S38                                             0
#> INPPL1 p S890                                          0
#> KDM6A p S388                                           0
#> DIAPH1 p S373                                          0
#> CTNND1 p S252                                          0
#>               TUBA1B p Y103; TUBA4A p Y103; TUBA1C p Y103
#> KRT7 p S37                                              0
#> KRT7 p S38                                              0
#> INPPL1 p S890                                           0
#> KDM6A p S388                                            0
#> DIAPH1 p S373                                           0
#> CTNND1 p S252                                           0
#>               TUBA1B p Y312; TUBAL3 p Y319; TUBA4A p Y312; TUBA1C p Y312
#> KRT7 p S37                                                             0
#> KRT7 p S38                                                             0
#> INPPL1 p S890                                                          0
#> KDM6A p S388                                                           0
#> DIAPH1 p S373                                                          0
#> CTNND1 p S252                                                          0
#>               SIRPA p Y496 SHC2 p Y414 HDLBP p Y437 CDK5 p Y15
#> KRT7 p S37               0           0            0          0
#> KRT7 p S38               0           0            0          0
#> INPPL1 p S890            0           0            0          0
#> KDM6A p S388             0           0            0          0
#> DIAPH1 p S373            0           0            0          0
#> CTNND1 p S252            0           0            0          0
#>               CDK16 p Y176; CDK17 p Y203 CLTC p Y634 CLTC p Y1438 NFKB2 p Y77
#> KRT7 p S37                             0           0            0           0
#> KRT7 p S38                             0           0            0           0
#> INPPL1 p S890                          0           0            0           0
#> KDM6A p S388                           0           0            0           0
#> DIAPH1 p S373                          0           0            0           0
#> CTNND1 p S252                          0           0            0           0
#>               SPTBN1 p Y1680; SPTBN2 p Y1676 TIAL1 p Y140 FABP5 p Y131
#> KRT7 p S37                                 0            0            0
#> KRT7 p S38                                 0            0            0
#> INPPL1 p S890                              0            0            0
#> KDM6A p S388                               0            0            0
#> DIAPH1 p S373                              0            0            0
#> CTNND1 p S252                              0            0            0
#>               DSC2 p Y839 NUCB1 p Y179 CAV1 p Y14 SSBP1 p Y99 MST1R p Y1238
#> KRT7 p S37              0            0          0           0             0
#> KRT7 p S38              0            0          0           0             0
#> INPPL1 p S890           0            0          0           0             0
#> KDM6A p S388            0            0          0           0             0
#> DIAPH1 p S373           0            0          0           0             0
#> CTNND1 p S252           0            0          0           0             0
#>               PTK2 p Y861 PTK2 p Y925 PTK2 p Y397 PTK2 p Y570 PTK2 p Y576
#> KRT7 p S37              0           1           0           0           0
#> KRT7 p S38              0           0           0           0           0
#> INPPL1 p S890           0           0           0           0           0
#> KDM6A p S388            0           0           0           0           0
#> DIAPH1 p S373           0           0           0           0           0
#> CTNND1 p S252           0           0           0           0           0
#>               PTK2 p Y577 PRKCD p Y630 PRKCD p Y374 PRKCD p Y334 PRKCD p Y313
#> KRT7 p S37              0            0            0            0            0
#> KRT7 p S38              0            0            0            0            0
#> INPPL1 p S890           0            0            0            0            0
#> KDM6A p S388            0            0            0            0            0
#> DIAPH1 p S373           0            0            0            0            0
#> CTNND1 p S252           0            0            0            0            0
#>               PTPN11 p Y546 PTPN11 p Y62 PTPN11 p Y584 PTPN11 p Y279
#> KRT7 p S37                0            0             0             0
#> KRT7 p S38                0            0             0             0
#> INPPL1 p S890             0            0             0             0
#> KDM6A p S388              0            0             0             0
#> DIAPH1 p S373             0            0             0             0
#> CTNND1 p S252             0            0             0             0
#>               GFPT1 p Y553 APLP2 p Y755 ZNF33B p Y595; ZNF33A p Y594
#> KRT7 p S37               0            0                            0
#> KRT7 p S38               0            0                            0
#> INPPL1 p S890            0            0                            0
#> KDM6A p S388             0            0                            0
#> DIAPH1 p S373            0            0                            0
#> CTNND1 p S252            0            0                            0
#>               PRDX1 p Y194 TJP1 p Y1524 TJP1 p Y1061 SOS1 p Y681 SOS2 p Y679
#> KRT7 p S37               0            0            0           0           0
#> KRT7 p S38               0            0            0           0           0
#> INPPL1 p S890            0            0            0           0           0
#> KDM6A p S388             0            0            0           0           0
#> DIAPH1 p S373            0            0            0           0           0
#> CTNND1 p S252            0            0            0           0           0
#>               TNK2 p Y284 TNK2 p Y859 TNK2 p Y827 SRSF1 p Y189 PCDH1 p Y897
#> KRT7 p S37              0           0           1            0            0
#> KRT7 p S38              0           0           0            0            0
#> INPPL1 p S890           0           0           0            0            0
#> KDM6A p S388            0           0           0            0            0
#> DIAPH1 p S373           0           0           0            0            0
#> CTNND1 p S252           0           0           0            0            0
#>               AHNAK p Y5836 AHNAK p Y964 AHNAK p Y715 AHNAK p Y160
#> KRT7 p S37                0            0            0            0
#> KRT7 p S38                0            0            0            0
#> INPPL1 p S890             0            0            0            0
#> KDM6A p S388              0            0            0            0
#> DIAPH1 p S373             0            0            0            0
#> CTNND1 p S252             0            0            0            0
#>               ARHGEF5 p Y656 ARHGEF5 p Y1140 ARHGEF5 p Y1370 EPS8 p Y525
#> KRT7 p S37                 0               0               0           0
#> KRT7 p S38                 0               0               0           0
#> INPPL1 p S890              0               0               0           0
#> KDM6A p S388               0               0               0           0
#> DIAPH1 p S373              0               0               0           0
#> CTNND1 p S252              0               0               0           0
#>               EPS8 p Y485 EPS8 p Y491 EPS8 p Y774 TRAP1 p Y498 TRAP1 p Y499
#> KRT7 p S37              0           0           0            0            0
#> KRT7 p S38              0           0           0            0            0
#> INPPL1 p S890           0           0           0            0            0
#> KDM6A p S388            0           0           0            0            0
#> DIAPH1 p S373           0           0           0            0            0
#> CTNND1 p S252           0           0           0            0            0
#>               ANK3 p Y533 ANK3 p Y632; ANK2 p Y630 DLG1 p Y760 MYO1E p Y7
#> KRT7 p S37              0                        0           0          0
#> KRT7 p S38              0                        0           0          0
#> INPPL1 p S890           0                        0           0          0
#> KDM6A p S388            0                        0           0          0
#> DIAPH1 p S373           0                        0           0          0
#> CTNND1 p S252           0                        0           0          0
#>               PRKAA1 p Y455 PRKAA1 p Y442 HNRNPA0 p Y180 CBLB p Y889
#> KRT7 p S37                0             0              0           0
#> KRT7 p S38                0             0              0           0
#> INPPL1 p S890             0             0              0           0
#> KDM6A p S388              0             0              0           0
#> DIAPH1 p S373             0             0              0           0
#> CTNND1 p S252             0             0              0           0
#>               SRSF9 p Y179 GRB10 p Y404 EIF3I p Y308 GOLGA4 p Y2148
#> KRT7 p S37               0            0            0              0
#> KRT7 p S38               0            0            0              0
#> INPPL1 p S890            0            0            0              0
#> KDM6A p S388             0            0            0              0
#> DIAPH1 p S373            0            0            0              0
#> CTNND1 p S252            0            0            0              0
#>               ADAM9 p Y769 TNK1 p Y661 GAB1 p Y406 GAB1 p Y627 GAB1 p Y47
#> KRT7 p S37               0           0           0           0          0
#> KRT7 p S38               0           0           0           0          0
#> INPPL1 p S890            0           0           0           0          0
#> KDM6A p S388             0           0           0           0          0
#> DIAPH1 p S373            0           0           0           0          0
#> CTNND1 p S252            0           0           0           0          0
#>               GAB1 p Y48 GAB1 p Y659 PRPF4B p Y849 RIPK1 p Y387 HDAC1 p Y221
#> KRT7 p S37             0           0             0            0            0
#> KRT7 p S38             0           0             0            0            0
#> INPPL1 p S890          0           0             0            0            0
#> KDM6A p S388           0           0             0            0            0
#> DIAPH1 p S373          0           0             0            0            0
#> CTNND1 p S252          0           0             0            0            0
#>               HDAC1 p Y222 DCTN2 p Y6 DYRK1A p Y319; DYRK1B p Y271
#> KRT7 p S37               0          0                            0
#> KRT7 p S38               0          0                            0
#> INPPL1 p S890            0          0                            0
#> KDM6A p S388             0          0                            0
#> DIAPH1 p S373            0          0                            0
#> CTNND1 p S252            0          0                            0
#>               DYRK1A p Y321; DYRK1B p Y273 CTTN p Y154 CTTN p Y446 CTTN p Y453
#> KRT7 p S37                               0           0           0           0
#> KRT7 p S38                               0           0           0           0
#> INPPL1 p S890                            0           0           0           0
#> KDM6A p S388                             0           0           0           0
#> DIAPH1 p S373                            0           0           0           0
#> CTNND1 p S252                            0           0           0           0
#>               CTTN p Y228 CTTN p Y421 CTTN p Y265 CTTN p Y334 CTTN p Y178
#> KRT7 p S37              0           0           0           0           0
#> KRT7 p S38              0           0           0           0           0
#> INPPL1 p S890           0           0           0           0           0
#> KDM6A p S388            0           0           0           0           0
#> DIAPH1 p S373           0           0           0           0           0
#> CTNND1 p S252           0           0           0           0           0
#>               CTTN p Y141 CTTN p Y104 CTTN p Y199 CTTN p Y162 TRIM25 p Y278
#> KRT7 p S37              0           0           0           0             0
#> KRT7 p S38              0           0           0           0             0
#> INPPL1 p S890           0           0           0           0             0
#> KDM6A p S388            0           0           0           0             0
#> DIAPH1 p S373           0           0           0           0             0
#> CTNND1 p S252           0           0           0           0             0
#>               PTK2B p Y579 PTK2B p Y580 GRB7 p Y259 NEDD9 p Y345 NEDD9 p Y241
#> KRT7 p S37               0            0           0            0            0
#> KRT7 p S38               0            0           0            0            0
#> INPPL1 p S890            0            0           0            0            0
#> KDM6A p S388             0            0           0            0            0
#> DIAPH1 p S373            0            0           0            0            0
#> CTNND1 p S252            0            0           0            0            0
#>               NEDD9 p Y106 NEDD9 p Y223 NEDD9 p Y317 NEDD9 p Y92 NEDD9 p Y629
#> KRT7 p S37               0            0            0           0            0
#> KRT7 p S38               0            0            0           0            0
#> INPPL1 p S890            0            0            0           0            0
#> KDM6A p S388             0            0            0           0            0
#> DIAPH1 p S373            0            0            0           0            0
#> CTNND1 p S252            0            1            0           0            0
#>               NEDD9 p Y164 NEDD9 p Y166 NEDD9 p Y168 EIF4H p Y12 PLEC p Y4155
#> KRT7 p S37               0            0            0           0            0
#> KRT7 p S38               0            0            0           0            0
#> INPPL1 p S890            0            0            0           0            0
#> KDM6A p S388             0            0            0           0            0
#> DIAPH1 p S373            0            0            0           0            0
#> CTNND1 p S252            0            0            0           0            0
#>               RNPS1 p Y205 SHB p Y268 SHB p Y246 SHB p Y114 SLC1A5 p Y524
#> KRT7 p S37               0          0          0          0             0
#> KRT7 p S38               0          0          0          0             0
#> INPPL1 p S890            0          0          0          0             0
#> KDM6A p S388             0          0          0          0             0
#> DIAPH1 p S373            0          0          0          0             0
#> CTNND1 p S252            0          0          1          0             0
#>               MAPK11 p Y182 MAPK14 p Y182 OCLN p Y337 OCLN p Y315 OCLN p Y368
#> KRT7 p S37                0             0           0           0           0
#> KRT7 p S38                0             0           0           0           0
#> INPPL1 p S890             0             0           0           0           0
#> KDM6A p S388              0             0           0           0           0
#> DIAPH1 p S373             0             0           0           0           0
#> CTNND1 p S252             0             0           0           0           0
#>               MAN2A1 p Y33 TXNRD1 p Y281 TXNRD1 p Y163 ACTBL2 p Y88
#> KRT7 p S37               0             0             0            0
#> KRT7 p S38               0             0             0            0
#> INPPL1 p S890            0             0             0            0
#> KDM6A p S388             0             0             0            0
#> DIAPH1 p S373            0             0             0            0
#> CTNND1 p S252            0             0             0            0
#>               HSP90AB4P p Y32 DOCK11 p Y1223 FNBP1L p Y291 KIAA1217 p Y520
#> KRT7 p S37                  0              0             0               0
#> KRT7 p S38                  0              0             0               0
#> INPPL1 p S890               0              0             0               0
#> KDM6A p S388                0              0             0               0
#> DIAPH1 p S373               0              0             0               0
#> CTNND1 p S252               0              0             0               0
#>               KIAA1217 p Y393 KIAA1217 p Y244 KIAA1217 p Y245 TUT7 p Y77
#> KRT7 p S37                  0               0               0          0
#> KRT7 p S38                  0               0               0          0
#> INPPL1 p S890               0               0               0          0
#> KDM6A p S388                0               0               0          0
#> DIAPH1 p S373               0               0               0          0
#> CTNND1 p S252               0               0               0          0
#>               ANO1 p Y51 ANO1 p Y7 TNS2 p Y483 TNS3 p Y855 TNS3 p Y780
#> KRT7 p S37             0         0           0           0           0
#> KRT7 p S38             0         0           0           0           0
#> INPPL1 p S890          0         0           0           0           0
#> KDM6A p S388           0         0           0           0           0
#> DIAPH1 p S373          0         0           0           0           0
#> CTNND1 p S252          0         0           0           0           0
#>               TNS3 p Y601 TNS3 p Y354 KIAA0895L p Y393 LAMTOR1 p Y40
#> KRT7 p S37              0           0                0             0
#> KRT7 p S38              0           0                0             0
#> INPPL1 p S890           0           0                0             0
#> KDM6A p S388            0           0                0             0
#> DIAPH1 p S373           0           0                0             0
#> CTNND1 p S252           0           0                0             0
#>               PLEKHA7 p Y1011 CAVIN1 p Y308 SHC4 p Y424 TMC5 p Y55
#> KRT7 p S37                  0             0           0          0
#> KRT7 p S38                  0             0           0          0
#> INPPL1 p S890               0             0           0          0
#> KDM6A p S388                0             0           0          0
#> DIAPH1 p S373               0             0           0          0
#> CTNND1 p S252               0             0           0          0
#>               KIAA1549L p Y1417 KIAA1549L p Y1418 PAXIP1 p Y738 RAPH1 p Y1226
#> KRT7 p S37                    0                 0             0             0
#> KRT7 p S38                    0                 0             0             0
#> INPPL1 p S890                 0                 0             0             0
#> KDM6A p S388                  0                 0             0             0
#> DIAPH1 p S373                 0                 0             0             0
#> CTNND1 p S252                 0                 0             0             0
#>               SPATC1 p Y504 SND1 p Y109 CYFIP1 p Y108; CYFIP2 p Y108
#> KRT7 p S37                0           0                            0
#> KRT7 p S38                0           0                            0
#> INPPL1 p S890             0           0                            0
#> KDM6A p S388              0           0                            0
#> DIAPH1 p S373             0           0                            0
#> CTNND1 p S252             0           0                            0
#>               DCXR p Y149 LSR p Y323 LSR p Y328 LSR p Y551 LSR p Y372
#> KRT7 p S37              0          0          0          0          0
#> KRT7 p S38              0          0          0          0          0
#> INPPL1 p S890           0          0          0          0          0
#> KDM6A p S388            0          0          0          0          0
#> DIAPH1 p S373           0          0          0          0          0
#> CTNND1 p S252           0          0          0          0          0
#>               LSR p Y406 NIT1 p Y143 GPSM1 p Y311 PRAG1 p Y413
#> KRT7 p S37             0           0            0            0
#> KRT7 p S38             0           0            0            0
#> INPPL1 p S890          0           0            0            0
#> KDM6A p S388           0           0            0            0
#> DIAPH1 p S373          0           0            0            0
#> CTNND1 p S252          0           0            0            0
#>               HIPK2 p Y361; HIPK1 p Y352 MISP p Y95 MISP p Y350 ARHGAP12 p Y243
#> KRT7 p S37                             0          0           0               0
#> KRT7 p S38                             0          0           0               0
#> INPPL1 p S890                          0          0           0               0
#> KDM6A p S388                           0          0           0               0
#> DIAPH1 p S373                          0          0           0               0
#> CTNND1 p S252                          0          0           0               0
#>               RBM12B p Y326 ELOA2 p Y389 SYTL1 p Y304 SYTL1 p Y308 ABI1 p Y213
#> KRT7 p S37                0            0            0            0           0
#> KRT7 p S38                0            0            0            0           0
#> INPPL1 p S890             0            0            0            0           0
#> KDM6A p S388              0            0            0            0           0
#> DIAPH1 p S373             0            0            0            0           0
#> CTNND1 p S252             0            0            0            0           0
#>               RDH10 p Y126 ASCC3 p Y438 MPP5 p Y528 MPP5 p Y243 AFAP1L2 p Y383
#> KRT7 p S37               0            0           0           0              0
#> KRT7 p S38               0            0           0           0              0
#> INPPL1 p S890            0            0           0           0              0
#> KDM6A p S388             0            0           0           0              0
#> DIAPH1 p S373            0            0           0           0              0
#> CTNND1 p S252            0            0           0           0              0
#>               AFAP1L2 p Y413 ENAH p Y529 TC2N p Y154 SERBP1 p Y207 LEMD2 p Y122
#> KRT7 p S37                 0           0           0             0            0
#> KRT7 p S38                 0           0           0             0            0
#> INPPL1 p S890              0           0           0             0            0
#> KDM6A p S388               0           0           0             0            0
#> DIAPH1 p S373              0           0           0             0            0
#> CTNND1 p S252              0           0           0             0            0
#>               CCNY p Y172 EXPH5 p Y1019 REPS2 p Y558 GPRC5A p Y347
#> KRT7 p S37              0             0            0             0
#> KRT7 p S38              0             0            0             0
#> INPPL1 p S890           0             0            0             0
#> KDM6A p S388            0             0            0             0
#> DIAPH1 p S373           0             0            0             0
#> CTNND1 p S252           0             0            0             0
#>               GPRC5A p Y350 GPRC5A p Y317 GPRC5A p Y293 PNPT1 p Y459
#> KRT7 p S37                0             0             0            0
#> KRT7 p S38                0             0             0            0
#> INPPL1 p S890             0             0             0            0
#> KDM6A p S388              0             0             0            0
#> DIAPH1 p S373             0             0             0            0
#> CTNND1 p S252             0             0             0            0
#>               CD99L2 p Y243 EPS8L1 p Y684 UTP15 p Y84 PARD3 p Y489
#> KRT7 p S37                0             0           0            0
#> KRT7 p S38                0             0           0            0
#> INPPL1 p S890             0             0           0            0
#> KDM6A p S388              0             0           0            0
#> DIAPH1 p S373             0             0           0            0
#> CTNND1 p S252             0             0           0            0
#>               PARD3 p Y1080 PARD3 p Y719 PARD3 p Y1177 PARD3B p Y1000
#> KRT7 p S37                0            0             0              0
#> KRT7 p S38                0            0             0              0
#> INPPL1 p S890             0            0             0              0
#> KDM6A p S388              0            0             0              0
#> DIAPH1 p S373             0            0             0              0
#> CTNND1 p S252             0            0             0              0
#>               UBASH3B p Y19 FRS2 p Y306 LMO7 p Y1667 LMO7 p Y1672 ATXN2L p Y349
#> KRT7 p S37                0           0            0            0             0
#> KRT7 p S38                0           0            0            0             0
#> INPPL1 p S890             0           0            0            0             0
#> KDM6A p S388              0           0            0            0             0
#> DIAPH1 p S373             0           0            0            0             0
#> CTNND1 p S252             0           0            0            0             0
#>               CASKIN2 p Y253 ARAP2 p Y473 DDX1 p Y628 PIK3R3 p Y199
#> KRT7 p S37                 0            0           0             0
#> KRT7 p S38                 0            0           0             0
#> INPPL1 p S890              0            0           0             0
#> KDM6A p S388               0            0           0             0
#> DIAPH1 p S373              0            0           0             0
#> CTNND1 p S252              0            0           0             0
#>               ANKS1A p Y455 DYRK4 p Y264; DYRK2 p Y382 NECTIN2 p Y454
#> KRT7 p S37                0                          0              0
#> KRT7 p S38                0                          0              0
#> INPPL1 p S890             0                          0              0
#> KDM6A p S388              0                          0              0
#> DIAPH1 p S373             0                          0              0
#> CTNND1 p S252             0                          0              0
#>               HDAC2 p Y222 HDAC2 p Y223 DLG3 p Y673 EVPL p Y1520 NEO1 p Y575
#> KRT7 p S37               0            0           0            0           0
#> KRT7 p S38               0            0           0            0           0
#> INPPL1 p S890            0            0           0            0           0
#> KDM6A p S388             0            0           0            0           0
#> DIAPH1 p S373            0            0           0            0           0
#> CTNND1 p S252            0            0           0            0           0
#>               SMARCD2 p Y197 RAB8B p Y5; RAB8A p Y5 EMG1 p Y61 LPP p Y317
#> KRT7 p S37                 0                      0          0          0
#> KRT7 p S38                 0                      0          0          0
#> INPPL1 p S890              0                      0          0          0
#> KDM6A p S388               0                      0          0          0
#> DIAPH1 p S373              0                      0          0          0
#> CTNND1 p S252              0                      0          0          0
#>               LPP p Y296 LPP p Y297 LPP p Y301 C11orf52 p Y103 FAF2 p Y79
#> KRT7 p S37             0          0          0               0          0
#> KRT7 p S38             0          0          0               0          0
#> INPPL1 p S890          0          0          0               0          0
#> KDM6A p S388           0          0          0               0          0
#> DIAPH1 p S373          0          0          0               0          0
#> CTNND1 p S252          0          0          0               0          0
#>               S100A16 p Y20 S100A16 p Y26 PDLIM5 p Y251 KIRREL1 p Y572
#> KRT7 p S37                0             0             0              0
#> KRT7 p S38                0             0             0              0
#> INPPL1 p S890             0             0             0              0
#> KDM6A p S388              0             0             0              0
#> DIAPH1 p S373             0             0             0              0
#> CTNND1 p S252             0             0             0              0
#>               KIRREL1 p Y605 KIRREL1 p Y721 NECTIN4 p Y502 NECTIN4 p Y445
#> KRT7 p S37                 0              0              0              0
#> KRT7 p S38                 0              0              0              0
#> INPPL1 p S890              0              0              0              0
#> KDM6A p S388               0              0              0              0
#> DIAPH1 p S373              0              0              0              0
#> CTNND1 p S252              0              0              0              0
#>               ARAP1 p Y504 DCBLD2 p Y750 DCBLD2 p Y732 DCBLD2 p Y565
#> KRT7 p S37               0             0             0             0
#> KRT7 p S38               0             0             0             0
#> INPPL1 p S890            0             0             0             0
#> KDM6A p S388             0             0             0             0
#> DIAPH1 p S373            0             0             0             0
#> CTNND1 p S252            0             0             0             0
#>               DCBLD2 p Y597 RBM14 p Y645 SLC38A2 p Y41 MAGI1 p Y373
#> KRT7 p S37                0            0             0            0
#> KRT7 p S38                0            0             0            0
#> INPPL1 p S890             1            0             0            0
#> KDM6A p S388              0            0             0            0
#> DIAPH1 p S373             0            0             0            0
#> CTNND1 p S252             0            0             0            0
#>               ERBIN p Y1104 LYSMD1 p Y83 CEP89 p Y157 CNN2 p Y184
#> KRT7 p S37                0            0            0           0
#> KRT7 p S38                0            0            0           0
#> INPPL1 p S890             0            0            0           1
#> KDM6A p S388              0            0            0           0
#> DIAPH1 p S373             0            0            0           0
#> CTNND1 p S252             0            0            0           0
#>               CNN2 p Y12; CNN3 p Y10 MAP3K14 p Y682 PKP4 p Y275 PKP4 p Y1094
#> KRT7 p S37                         0              0           0            0
#> KRT7 p S38                         0              0           0            0
#> INPPL1 p S890                      0              0           0            0
#> KDM6A p S388                       0              0           0            0
#> DIAPH1 p S373                      0              0           0            0
#> CTNND1 p S252                      0              0           0            0
#>               PKP4 p Y1115 PKP4 p Y306 PKP4 p Y415 PKP4 p Y443 PKP4 p Y465
#> KRT7 p S37               0           0           0           0           0
#> KRT7 p S38               0           0           0           0           0
#> INPPL1 p S890            0           0           0           0           0
#> KDM6A p S388             0           0           0           0           0
#> DIAPH1 p S373            0           0           0           0           0
#> CTNND1 p S252            0           0           0           0           0
#>               PKP4 p Y1168 PKP4 p Y1172 PKP4 p Y372 PKP4 p Y420 PKP4 p Y421
#> KRT7 p S37               0            0           0           0           0
#> KRT7 p S38               0            0           0           0           0
#> INPPL1 p S890            0            0           0           0           0
#> KDM6A p S388             0            0           0           0           0
#> DIAPH1 p S373            0            0           0           0           0
#> CTNND1 p S252            0            0           0           0           0
#>               PKP4 p Y425 PKP4 p Y494 DOK1 p Y449 PKP2 p Y217 PKP2 p Y659
#> KRT7 p S37              0           0           0           0           0
#> KRT7 p S38              0           0           0           0           0
#> INPPL1 p S890           0           0           0           0           0
#> KDM6A p S388            0           0           0           0           0
#> DIAPH1 p S373           0           0           0           0           0
#> CTNND1 p S252           0           0           0           0           0
#>               NIPSNAP1 p Y148 RBM4B p Y37; RBM4 p Y37 PELO p Y99 ATG101 p Y164
#> KRT7 p S37                  0                       0          0             0
#> KRT7 p S38                  0                       0          0             0
#> INPPL1 p S890               0                       0          0             0
#> KDM6A p S388                0                       0          0             0
#> DIAPH1 p S373               0                       0          0             0
#> CTNND1 p S252               0                       0          0             0
#>               TUBGCP2 p Y83 ESYT1 p Y822 ESYT1 p Y1009 WDR18 p Y61 NTMT1 p Y103
#> KRT7 p S37                0            0             0           0            0
#> KRT7 p S38                0            0             0           0            0
#> INPPL1 p S890             0            0             0           0            0
#> KDM6A p S388              0            0             0           0            0
#> DIAPH1 p S373             0            0             0           0            0
#> CTNND1 p S252             0            0             0           0            0
#>               ITPA p Y113 UBXN6 p Y336 SPRY4 p Y52 ARHGAP39 p Y448
#> KRT7 p S37              0            0           0               0
#> KRT7 p S38              0            0           0               0
#> INPPL1 p S890           0            0           0               0
#> KDM6A p S388            0            0           0               0
#> DIAPH1 p S373           0            0           0               0
#> CTNND1 p S252           0            0           0               0
#>               SRCIN1 p Y283 SRCIN1 p Y396 SRCIN1 p Y264 CYSTM1 p Y64
#> KRT7 p S37                0             0             0            0
#> KRT7 p S38                0             0             0            0
#> INPPL1 p S890             0             0             0            0
#> KDM6A p S388              0             0             0            0
#> DIAPH1 p S373             0             0             0            0
#> CTNND1 p S252             0             0             0            0
#>               HIPK3 p Y359 EPB41L1 p Y343 CDCP1 p Y806 EPS8L2 p Y678
#> KRT7 p S37               0              0            0             0
#> KRT7 p S38               0              0            0             0
#> INPPL1 p S890            0              0            0             0
#> KDM6A p S388             0              0            0             0
#> DIAPH1 p S373            0              0            0             0
#> CTNND1 p S252            0              0            0             0
#>               GAREM1 p Y52 GAREM1 p Y701 GAREM1 p Y453 GAREM1 p Y271
#> KRT7 p S37               0             0             0             0
#> KRT7 p S38               0             0             0             0
#> INPPL1 p S890            0             0             0             0
#> KDM6A p S388             0             0             0             0
#> DIAPH1 p S373            0             0             0             0
#> CTNND1 p S252            0             0             0             0
#>               PEAK1 p Y531 PLEKHA5 p Y327 PLEKHA5 p Y398 PLEKHA5 p Y436
#> KRT7 p S37               0              0              0              0
#> KRT7 p S38               0              0              0              0
#> INPPL1 p S890            0              0              0              0
#> KDM6A p S388             0              0              0              0
#> DIAPH1 p S373            0              0              0              0
#> CTNND1 p S252            0              0              0              0
#>               TNS1 p Y1404 TNS1 p Y1254 EML4 p Y226 EML4 p Y247 EML4 p Y305
#> KRT7 p S37               0            0           0           0           0
#> KRT7 p S38               0            0           0           0           0
#> INPPL1 p S890            0            0           0           0           0
#> KDM6A p S388             0            0           0           0           0
#> DIAPH1 p S373            0            0           0           0           0
#> CTNND1 p S252            0            0           0           0           0
#>               EML4 p Y265 EML4 p Y267 EML4 p Y453 GPAM p Y111 S100A14 p Y32
#> KRT7 p S37              0           0           0           0             0
#> KRT7 p S38              0           0           0           0             0
#> INPPL1 p S890           0           0           0           0             0
#> KDM6A p S388            0           0           0           0             0
#> DIAPH1 p S373           0           0           0           0             0
#> CTNND1 p S252           0           0           0           0             0
#>               PTPRH p Y1102 MYO10 p Y1128 VTA1 p Y278 DCP1A p Y64 SEMA4B p Y782
#> KRT7 p S37                0             0           0           0             0
#> KRT7 p S38                0             0           0           0             0
#> INPPL1 p S890             0             0           0           0             0
#> KDM6A p S388              0             0           0           0             0
#> DIAPH1 p S373             0             0           0           0             0
#> CTNND1 p S252             0             0           0           0             0
#>               GPRC5C p Y324 GPRC5C p Y387 NIT2 p Y49 ASH1L p Y1995
#> KRT7 p S37                0             0          0             0
#> KRT7 p S38                0             0          0             0
#> INPPL1 p S890             0             0          0             0
#> KDM6A p S388              0             0          0             0
#> DIAPH1 p S373             0             0          0             0
#> CTNND1 p S252             0             0          0             0
#>               ARHGAP35 p Y1105 SPATS2L p Y15 PAG1 p Y227 PAG1 p Y417
#> KRT7 p S37                   0             0           0           0
#> KRT7 p S38                   0             0           0           0
#> INPPL1 p S890                0             0           0           0
#> KDM6A p S388                 0             0           0           0
#> DIAPH1 p S373                0             0           0           0
#> CTNND1 p S252                0             0           0           0
#>               PAG1 p Y359 PAG1 p Y317 MTMR10 p Y708 ABI2 p Y213 ACTR10 p Y4
#> KRT7 p S37              0           0             0           0           0
#> KRT7 p S38              0           0             0           0           0
#> INPPL1 p S890           0           0             0           0           0
#> KDM6A p S388            0           0             0           0           0
#> DIAPH1 p S373           0           0             0           0           0
#> CTNND1 p S252           0           0             0           0           0
#>               GPRC5B p Y376 ITSN2 p Y968 ITSN2 p Y553 CGN p Y45 CGN p Y313
#> KRT7 p S37                0            0            1         0          0
#> KRT7 p S38                0            0            0         0          0
#> INPPL1 p S890             0            0            0         0          0
#> KDM6A p S388              0            0            0         0          0
#> DIAPH1 p S373             0            0            0         0          0
#> CTNND1 p S252             0            0            0         0          0
#>               SUCLA2 p Y84 TJP2 p Y261 TJP2 p Y265 TJP2 p Y1178 TJP2 p Y1179
#> KRT7 p S37               0           0           0            0            0
#> KRT7 p S38               0           0           0            0            0
#> INPPL1 p S890            0           0           0            0            1
#> KDM6A p S388             0           0           0            0            0
#> DIAPH1 p S373            0           0           0            0            0
#> CTNND1 p S252            0           0           0            0            0
#>               TJP2 p Y1118 TJP2 p Y1007 BAIAP2L1 p Y274 ATP6V1H p Y388
#> KRT7 p S37               0            0               0              0
#> KRT7 p S38               0            0               0              0
#> INPPL1 p S890            0            0               0              0
#> KDM6A p S388             0            0               0              0
#> DIAPH1 p S373            0            0               0              0
#> CTNND1 p S252            0            0               0              0
#>               ERRFI1 p Y458 ERRFI1 p Y394 DBNL p Y140 DBNL p Y162 DCTN4 p Y173
#> KRT7 p S37                0             0           0           0            0
#> KRT7 p S38                0             0           0           0            0
#> INPPL1 p S890             0             0           0           0            1
#> KDM6A p S388              0             0           0           0            0
#> DIAPH1 p S373             0             0           0           0            0
#> CTNND1 p S252             0             0           0           0            0
#>               NUDT5 p Y74 VAV3 p Y217 CDV3 p Y190 PLEKHG1 p Y1042 ALK p Y1584
#> KRT7 p S37              0           0           0               0           0
#> KRT7 p S38              0           0           0               0           0
#> INPPL1 p S890           0           0           0               0           0
#> KDM6A p S388            0           0           0               0           0
#> DIAPH1 p S373           0           0           0               0           0
#> CTNND1 p S252           0           0           0               0           0
#>               ALK p Y1586 ALK p Y1078 ALK p Y1359 ALK p Y1507 ALK p Y1096
#> KRT7 p S37              0           0           0           0           0
#> KRT7 p S38              0           0           0           0           0
#> INPPL1 p S890           0           0           0           0           0
#> KDM6A p S388            0           0           0           0           0
#> DIAPH1 p S373           0           0           0           0           0
#> CTNND1 p S252           0           0           0           0           0
#>               DAPP1 p Y139 ANKRD26 p Y296 SHANK2 p Y610 SHANK2 p Y538
#> KRT7 p S37               0              0             0             0
#> KRT7 p S38               0              0             0             0
#> INPPL1 p S890            0              0             0             0
#> KDM6A p S388             0              0             0             0
#> DIAPH1 p S373            0              0             0             0
#> CTNND1 p S252            0              0             0             0
#>               SLC7A11 p Y15 ICK p Y159 GAB2 p Y266 GAB2 p Y293 GAB2 p Y614
#> KRT7 p S37                0          0           0           0           0
#> KRT7 p S38                0          0           0           0           0
#> INPPL1 p S890             0          0           0           0           0
#> KDM6A p S388              0          0           0           0           0
#> DIAPH1 p S373             0          0           0           0           0
#> CTNND1 p S252             0          0           0           0           0
#>               PIN4 p Y122 PLEKHA6 p Y404 PLEKHA6 p Y492 PIKFYVE p Y1041
#> KRT7 p S37              0              0              0               0
#> KRT7 p S38              0              0              0               0
#> INPPL1 p S890           0              0              0               0
#> KDM6A p S388            0              0              0               0
#> DIAPH1 p S373           0              0              0               0
#> CTNND1 p S252           0              0              0               0
#>               GIT1 p Y545 EXOSC1 p Y119 SF3B6 p Y86 PKP3 p Y176 PKP3 p Y84
#> KRT7 p S37              0             0           0           0          0
#> KRT7 p S38              0             0           0           0          0
#> INPPL1 p S890           0             0           0           0          0
#> KDM6A p S388            0             0           0           0          0
#> DIAPH1 p S373           0             0           0           0          0
#> CTNND1 p S252           0             0           0           0          0
#>               PKP3 p Y390 PKP3 p Y195 TLN1 p Y70 IRS2 p Y823 IRS2 p Y742
#> KRT7 p S37              0           0          0           0           0
#> KRT7 p S38              0           0          0           0           0
#> INPPL1 p S890           0           0          0           0           0
#> KDM6A p S388            0           0          0           0           0
#> DIAPH1 p S373           0           0          0           0           0
#> CTNND1 p S252           0           0          0           0           0
#>               IRS2 p Y542 IRS2 p Y75 IRS2 p Y803 IRS2 p Y675 IRS2 p Y576
#> KRT7 p S37              0          0           0           0           0
#> KRT7 p S38              0          0           0           0           0
#> INPPL1 p S890           0          0           0           0           0
#> KDM6A p S388            0          0           0           0           0
#> DIAPH1 p S373           0          0           0           0           0
#> CTNND1 p S252           0          0           0           0           0
#>               IRS2 p Y632 IRS2 p Y111 PRRC2C p Y1218 CD2AP p Y361 FLVCR1 p Y22
#> KRT7 p S37              0           0              1            0            0
#> KRT7 p S38              0           0              0            0            0
#> INPPL1 p S890           0           0              0            0            0
#> KDM6A p S388            0           0              0            0            0
#> DIAPH1 p S373           0           0              0            0            0
#> CTNND1 p S252           0           0              0            0            0
#>               F11R p Y280 DDX49 p Y223
#> KRT7 p S37              0            0
#> KRT7 p S38              0            0
#> INPPL1 p S890           0            0
#> KDM6A p S388            0            0
#> DIAPH1 p S373           0            0
#> CTNND1 p S252           0            0
```
