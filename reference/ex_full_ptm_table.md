# Full PTM Table Example

Post-translational modification data under certain environmental
conditions.

## Usage

``` r
ex_full_ptm_table
```

## Format

Dataframe of 9215 rows and 70 columns:

- row:

  Number of PTMs

- columns:

  Names of drugs that were used on PTMs

- values:

  Expression as found by mass spectrometry

## Source

"Mass Spectrometry Data"

## Examples

``` r
head(ex_full_ptm_table)
#>                   H3122SEPTM.C1 H3122SEPTM.C2 H3122SEPTM.C3 H3122SEPTM.D1
#> AARS ubi K747                NA            NA            NA            NA
#> AASDH ack K544               NA            NA            NA            NA
#> AASDHPPT ack K151            NA            NA            NA            NA
#> AATF ack K145                NA            NA            NA            NA
#> ABCA1 ubi K2023              NA            NA            NA            NA
#> ABCA3 p S683                 NA            NA            NA            NA
#>                   H3122SEPTM.D2 H3122SEPTM.D3 H3122SEPTM.PR1 H3122SEPTM.PR2
#> AARS ubi K747                NA            NA             NA             NA
#> AASDH ack K544               NA            NA             NA             NA
#> AASDHPPT ack K151            NA            NA             NA             NA
#> AATF ack K145                NA            NA             NA             NA
#> ABCA1 ubi K2023              NA            NA             NA             NA
#> ABCA3 p S683                 NA            NA             NA             NA
#>                   H3122SEPTM.PR3 PC9SEPTM.D1 PC9SEPTM.D2 PC9SEPTM.D3
#> AARS ubi K747                 NA          NA          NA          NA
#> AASDH ack K544                NA          NA          NA          NA
#> AASDHPPT ack K151             NA          NA          NA          NA
#> AATF ack K145                 NA          NA          NA          NA
#> ABCA1 ubi K2023               NA          NA          NA          NA
#> ABCA3 p S683                  NA          NA          NA          NA
#>                   PC9SEPTM.E1 PC9SEPTM.E2 PC9SEPTM.E3 PC9SEPTM.PR1 PC9SEPTM.PR2
#> AARS ubi K747              NA          NA          NA           NA           NA
#> AASDH ack K544             NA          NA          NA           NA           NA
#> AASDHPPT ack K151          NA          NA          NA           NA           NA
#> AATF ack K145              NA          NA          NA           NA           NA
#> ABCA1 ubi K2023            NA          NA          NA           NA           NA
#> ABCA3 p S683               NA          NA          NA           NA           NA
#>                   PC9SEPTM.PR3 H3122SEPTM.C1.ratio H3122SEPTM.C2.ratio
#> AARS ubi K747               NA                  NA                  NA
#> AASDH ack K544              NA                  NA                  NA
#> AASDHPPT ack K151           NA                  NA                  NA
#> AATF ack K145               NA                  NA                  NA
#> ABCA1 ubi K2023             NA                  NA                  NA
#> ABCA3 p S683                NA                  NA                  NA
#>                   H3122SEPTM.C3.ratio H3122SEPTM.PR1.ratio H3122SEPTM.PR2.ratio
#> AARS ubi K747                      NA                   NA                   NA
#> AASDH ack K544                     NA                   NA                   NA
#> AASDHPPT ack K151                  NA                   NA                   NA
#> AATF ack K145                      NA                   NA                   NA
#> ABCA1 ubi K2023                    NA                   NA                   NA
#> ABCA3 p S683                       NA                   NA                   NA
#>                   H3122SEPTM.PR3.ratio PC9SEPTM.E1.ratio PC9SEPTM.E2.ratio
#> AARS ubi K747                       NA                NA                NA
#> AASDH ack K544                      NA                NA                NA
#> AASDHPPT ack K151                   NA                NA                NA
#> AATF ack K145                       NA                NA                NA
#> ABCA1 ubi K2023                     NA                NA                NA
#> ABCA3 p S683                        NA                NA                NA
#>                   PC9SEPTM.E3.ratio PC9SEPTM.PR1.ratio PC9SEPTM.PR2.ratio
#> AARS ubi K747                    NA                 NA                 NA
#> AASDH ack K544                   NA                 NA                 NA
#> AASDHPPT ack K151                NA                 NA                 NA
#> AATF ack K145                    NA                 NA                 NA
#> ABCA1 ubi K2023                  NA                 NA                 NA
#> ABCA3 p S683                     NA                 NA                 NA
#>                   PC9SEPTM.PR3.ratio H2228_Crizotinib H2228_DMSO
#> AARS ubi K747                     NA               NA   23.46600
#> AASDH ack K544                    NA               NA         NA
#> AASDHPPT ack K151                 NA         24.54492   24.44462
#> AATF ack K145                     NA               NA         NA
#> ABCA1 ubi K2023                   NA         22.30229   24.54363
#> ABCA3 p S683                      NA         25.86592   25.42918
#>                   H3122_Crizotinib H3122_DMSO HCC4006_DMSO HCC4006_Erlotinib
#> AARS ubi K747                   NA         NA     19.66143                NA
#> AASDH ack K544                  NA         NA           NA                NA
#> AASDHPPT ack K151               NA         NA     23.76274          23.30215
#> AATF ack K145                   NA    22.7552           NA                NA
#> ABCA1 ubi K2023                 NA         NA           NA          22.30385
#> ABCA3 p S683              26.90369         NA     20.51490          20.56551
#>                   HCC78_Crizotinib HCC78_DMSO HCC827_DMSO HCC827_Erlotinib
#> AARS ubi K747                   NA         NA          NA         20.65953
#> AASDH ack K544                  NA         NA          NA               NA
#> AASDHPPT ack K151         24.85785         NA          NA               NA
#> AATF ack K145                   NA         NA          NA               NA
#> ABCA1 ubi K2023                 NA         NA          NA               NA
#> ABCA3 p S683              26.22549         NA    17.56093         18.82554
#>                   PC9_DMSO PC9_Erlotinib H1781_Afatinib H1781_DMSO
#> AARS ubi K747           NA            NA             NA         NA
#> AASDH ack K544          NA            NA             NA         NA
#> AASDHPPT ack K151       NA      24.10765       19.93243   24.19843
#> AATF ack K145           NA            NA             NA         NA
#> ABCA1 ubi K2023         NA            NA             NA         NA
#> ABCA3 p S683      26.53671      23.95881             NA         NA
#>                   H2286_Dasatinib H2286_DMSO H3122_Crizotinib.1 H3122_DMSO.1
#> AARS ubi K747                  NA         NA                 NA           NA
#> AASDH ack K544                 NA         NA           26.74175     26.81213
#> AASDHPPT ack K151        27.67432   27.19338                 NA     22.37639
#> AATF ack K145                  NA         NA                 NA           NA
#> ABCA1 ubi K2023                NA         NA                 NA           NA
#> ABCA3 p S683                   NA         NA           21.43033     21.61149
#>                   H366_Dasatinib H366_DMSO HCC78_Crizotinib.1 HCC78_DMSO.1
#> AARS ubi K747                 NA        NA                 NA           NA
#> AASDH ack K544                NA        NA           24.30932     24.91944
#> AASDHPPT ack K151       27.04448  27.44293           27.25782     26.12599
#> AATF ack K145           20.30886        NA                 NA           NA
#> ABCA1 ubi K2023               NA        NA                 NA           NA
#> ABCA3 p S683                  NA        NA                 NA           NA
#>                   PC9_DMSO.1 PC9_Erlotinib.1 STE.1_Crizotinib STE.1_DMSO
#> AARS ubi K747             NA              NA               NA         NA
#> AASDH ack K544            NA              NA               NA         NA
#> AASDHPPT ack K151   26.76926        26.99194         26.06505   26.75213
#> AATF ack K145             NA        22.55677               NA         NA
#> ABCA1 ubi K2023           NA              NA               NA         NA
#> ABCA3 p S683              NA              NA         20.57006   19.34067
#>                   H1781_AfatinibRatio H2228CrizotinibRatio H2286_DasatinibRatio
#> AARS ubi K747                      NA                   NA                   NA
#> AASDH ack K544                     NA                   NA                   NA
#> AASDHPPT ack K151           -4.265996            0.1003063            0.4809345
#> AATF ack K145                      NA                   NA                   NA
#> ABCA1 ubi K2023                    NA           -2.2413353                   NA
#> ABCA3 p S683                       NA            0.4367390                   NA
#>                   H3122_Crizotinib.1Ratio H3122CrizotinibRatio
#> AARS ubi K747                          NA                   NA
#> AASDH ack K544                -0.07037708                   NA
#> AASDHPPT ack K151                      NA                   NA
#> AATF ack K145                          NA                   NA
#> ABCA1 ubi K2023                        NA                   NA
#> ABCA3 p S683                  -0.18115771                   NA
#>                   H366_DasatinibRatio HCC4006_ErlotinibRatio
#> AARS ubi K747                      NA                     NA
#> AASDH ack K544                     NA                     NA
#> AASDHPPT ack K151          -0.3984487            -0.46058508
#> AATF ack K145                      NA                     NA
#> ABCA1 ubi K2023                    NA                     NA
#> ABCA3 p S683                       NA             0.05061611
#>                   HCC78_Crizotinib.1Ratio HCC78_CrizotinibRatio
#> AARS ubi K747                          NA                    NA
#> AASDH ack K544                 -0.6101181                    NA
#> AASDHPPT ack K151               1.1318277                    NA
#> AATF ack K145                          NA                    NA
#> ABCA1 ubi K2023                        NA                    NA
#> ABCA3 p S683                           NA                    NA
#>                   HCC827_ErlotinibRatio PC9_Erlotinib.1Ratio PC9_ErlotinibRatio
#> AARS ubi K747                        NA                   NA                 NA
#> AASDH ack K544                       NA                   NA                 NA
#> AASDHPPT ack K151                    NA            0.2226807                 NA
#> AATF ack K145                        NA                   NA                 NA
#> ABCA1 ubi K2023                      NA                   NA                 NA
#> ABCA3 p S683                   1.264607                   NA          -2.577896
#>                   STE.1_CrizotinibRatio
#> AARS ubi K747                        NA
#> AASDH ack K544                       NA
#> AASDHPPT ack K151            -0.6870806
#> AATF ack K145                        NA
#> ABCA1 ubi K2023                      NA
#> ABCA3 p S683                  1.2293879
```
