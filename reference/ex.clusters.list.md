# Clusters List Example

List of lists of dataframes containing PTMs that have been found to
cluster based on their distance in 3D space for a specific distance
metric

## Usage

``` r
ex.clusters.list
```

## Format

List of 3 Distance metrics (Euclidean, Spearman, and the average of
Spearman and Euclidean (SED)) and the clusters that form when they are
run through tsne:

- Euclidean:

  A list of 54 clusters of ptms based on their Euclidean distance and
  positional distance determined by tsne

- Spearman:

  A list of 125 clusters of ptms based on their Spearman dissimilarity
  and positional distance determined by tsne

- SED:

  A list of 39 clusters of ptms based on the average of their Euclidean
  distance and Spearman Dissimilarity and positional distance determined
  by tsne

## Source

"created by MakeClusterList"

## Examples

``` r
head(ex.clusters.list)
#> $Euclidean
#> $`1`
#>                                                                         PTMnames
#> 1                                                                  ABLIM1 p Y357
#> 2                                                                  ABLIM1 p Y373
#> 3                                                                   AGFG1 p Y327
#> 4                                                                ATP5PO ack K162
#> 5                                                                    CTTN p S405
#> 6                                                                    CTTN p T401
#> 7                                                                HNRNPF ack K167
#> 8                                                                HNRNPU ubi K524
#> 9                                                                     LCK p Y394
#> 10                                                                   MET p Y1003
#> 11                                                                   MET p Y1235
#> 12                                                                    MYH9 p Y11
#> 13                                                                  ORAI1 p Y300
#> 14                                                                 PARD3 p Y1127
#> 15                                                                 PIK3R2 p Y464
#> 16                                                                  PKP4 p Y1156
#> 17                                                                   PKP4 p Y470
#> 18                                                                   PKP4 p Y478
#> 19                                                                  PTPRK p S856
#> 20                                                                  PTPRK p Y858
#> 21                                                                 RASSF8 p Y418
#> 22                                                                 SCRIB p Y1268
#> 23                                                              SUPT16H ack K674
#> 24                                                                TMEM192 p Y213
#> 25      TUBA1B p Y103; TUBA4A p Y103; TUBA1A p Y103; TUBA1C p Y103; TUBA8 p Y103
#> 26                                   TUBA1B p Y272; TUBA4A p Y272; TUBA1A p Y272
#> 27                             TUBA1B ubi K112; TUBA1A ubi K112; TUBA1C ubi K112
#> 28                             TUBA1B ubi K326; TUBA1A ubi K326; TUBA1C ubi K326
#> 29                             TUBA1B ubi K336; TUBA1A ubi K336; TUBA1C ubi K336
#> 30                             TUBA1B ubi K338; TUBA1A ubi K338; TUBA1C ubi K338
#> 31                                              TUBA1B ubi K370; TUBA4A ubi K370
#> 32                                TUBA1B ubi K60; TUBA1A ubi K60; TUBA1C ubi K60
#> 33 TUBA1B ubi K96; TUBA4A ubi K96; TUBA1A ubi K96; TUBA1C ubi K96; TUBA8 ubi K96
#> 34                                                                 ZDHHC5 p S529
#> 35                                                                 ZDHHC5 p Y533
#>    group
#> 1      1
#> 2      1
#> 3      1
#> 4      1
#> 5      1
#> 6      1
#> 7      1
#> 8      1
#> 9      1
#> 10     1
#> 11     1
#> 12     1
#> 13     1
#> 14     1
#> 15     1
#> 16     1
#> 17     1
#> 18     1
#> 19     1
#> 20     1
#> 21     1
#> 22     1
#> 23     1
#> 24     1
#> 25     1
#> 26     1
#> 27     1
#> 28     1
#> 29     1
#> 30     1
#> 31     1
#> 32     1
#> 33     1
#> 34     1
#> 35     1
#> 
#> $`2`
#>                                                              PTMnames group
#> 1                                                       ABLIM1 p Y383     2
#> 2                                                       ABLIM1 p Y410     2
#> 3                                                       ABLIM1 p Y461     2
#> 4                                                      CTNNAL1 p S538     2
#> 5                                                       DCBLD1 p Y540     2
#> 6                            EZR ubi K237; MSN ubi K237; RDX ubi K237     2
#> 7                                                       HNRNPF p Y266     2
#> 8                                                       MET ubi K1232     2
#> 9                                                       MYH9 ubi K299     2
#> 10                                                      PHLDB2 p Y301     2
#> 11                                                      PHLDB2 p Y567     2
#> 12                                                     SEC16A p Y2193     2
#> 13 TUBA1B ubi K311; TUBA4A ubi K311; TUBA1A ubi K311; TUBA1C ubi K311     2
#> 14                                                      ZDHHC5 p Y497     2
#> 
#> $`3`
#>                                                                             PTMnames
#> 1                                                                      ABLIM1 p Y406
#> 2                                                                    ATP5PO ack K199
#> 3                                                                    HNRNPU ack K343
#> 4                                                                    HNRNPU ack K352
#> 5                                                                      HNRNPU p Y473
#> 6                                                                        MET p Y1230
#> 7                                                                     MYH9 ack K1387
#> 8                                                                    PLEKHA6 p Y1044
#> 9 TUBA1B ack K370; TUBA4A ack K370; TUBA1A ack K370; TUBA1C ack K370; TUBA8 ack K370
#>   group
#> 1     3
#> 2     3
#> 3     3
#> 4     3
#> 5     3
#> 6     3
#> 7     3
#> 8     3
#> 9     3
#> 
#> $`4`
#>                         PTMnames group
#> 1                  ABLIM1 p Y688     4
#> 2                ABLIM1 ubi K275     4
#> 3                EEF1A1 ubi K395     4
#> 4                    EZR ubi K60     4
#> 5                HNRNPU ubi K433     4
#> 6                HSPA1B ubi K597     4
#> 7                  MYH9 ack K882     4
#> 8                  MYH9 ubi K186     4
#> 9                  MYH9 ubi K373     4
#> 10 MYH9 ubi K576; MYH10 ubi K583     4
#> 11               PI4K2A ubi K268     4
#> 12                PSMC1 ubi K293     4
#> 13                PSMC1 ubi K396     4
#> 14                 PSMC1 ubi K69     4
#> 15                 RBM4 ubi K223     4
#> 16                SF3B2 ubi K387     4
#> 17                SF3B2 ubi K394     4
#> 18               SLC12A4 ubi K97     4
#> 19              SLC12A4 ubi K979     4
#> 20                 SPRED1 p Y211     4
#> 
#> $`5`
#>                                                             PTMnames group
#> 1                                                      ABLIM1 ubi K8     5
#> 2                                                       ATP5PO p Y35     5
#> 3                                   CTNNA2 ack K913; CTNNA1 ack K866     5
#> 4                                                         CTTN p Y84     5
#> 5                                                      DCBLD1 p Y578     5
#> 6                                                        EZR ack K60     5
#> 7                                                        FRS2 p Y392     5
#> 8                                                      HNRNPU p Y257     5
#> 9                                                      HNRNPU p Y260     5
#> 10                                                   HSPA1B ack K348     5
#> 11 HSPA1B p Y41; HSPA8 p Y41; HSPA6 p Y43; HSPA1L p Y43; HSPA2 p Y42     5
#> 12                                                      MERTK p Y549     5
#> 13                                                         OAT p Y69     5
#> 14                                                      PARD3 p Y388     5
#> 15                                                       PKP4 p S406     5
#> 16                                                    PLEKHA6 p S472     5
#> 17                                                    PLEKHA6 p S478     5
#> 18                                                      PTPRH p Y850     5
#> 19                                                      RBM14 p Y249     5
#> 20                                                     SEC16A p Y489     5
#> 
#> $`6`
#>                                                        PTMnames group
#> 1                                                ACOX1 ack K437     6
#> 2                                                 MYH9 ack K651     6
#> 3 MYH9 ack K821; MYH10 ack K828; MYH11 ack K828; MYH14 ack K845     6
#> 4                                                 MYH9 ubi K760     6
#> 5 MYH9 ubi K821; MYH10 ubi K828; MYH11 ubi K828; MYH14 ubi K845     6
#> 6                                               SLC9A1 ubi K690     6
#> 
#> $`7`
#>                           PTMnames group
#> 1                     ACOX1 p Y629     7
#> 2                     ACTR5 p Y564     7
#> 3                  ATP5PO ack K158     7
#> 4                    CTTN ack K161     7
#> 5                    CTTN ack K171     7
#> 6         DNM2 p Y125; DNM3 p Y125     7
#> 7   EEF1A1 ack K41; EEF1A2 ack K41     7
#> 8                      EMC7 p S114     7
#> 9                      EMC7 p T113     7
#> 10                       EZR p Y85     7
#> 11                  HNRNPH2 p Y306     7
#> 12                 HNRNPU ack K265     7
#> 13 HSPA1B ack K319; HSPA6 ack K321     7
#> 14                    HSPA9 p Y161     7
#> 15                      LCK p Y505     7
#> 16                    MYH9 ack K47     7
#> 17                   MYO18A p Y700     7
#> 18                      NFS1 p Y80     7
#> 19                      OAT p Y126     7
#> 20                  OXCT1 ack K418     7
#> 21                      PHB2 p Y77     7
#> 22                   PI4K2A p Y402     7
#> 23                   PTPRH p Y1094     7
#> 24                 RASSF8 ubi K176     7
#> 25                     RMC1 p Y610     7
#> 26                  RNASEH2B p S21     7
#> 27                  RNASEH2B p Y23     7
#> 28                  RPRD2 ack K671     7
#> 29                  SF3B2 ack K275     7
#> 30                  SUPT16H p Y535     7
#> 
#> $`8`
#>                         PTMnames group
#> 1                   APH1A p Y256     8
#> 2                ATP5PO ack K192     8
#> 3                    CTTN p Y215     8
#> 4                HSPA1B ack K246     8
#> 5  MYH9 ubi K682; MYH10 ubi K689     8
#> 6                  NSFL1C p Y167     8
#> 7                   PKP4 p T1174     8
#> 8                  SCRIB p Y1360     8
#> 9                    SGMS2 p Y56     8
#> 10                   TJP3 p Y364     8
#> 11                 ZNF185 p Y408     8
#> 
#> $`9`
#>                                                            PTMnames group
#> 1                                                     APH1A ubi K95     9
#> 2                                                     APH1A ubi K96     9
#> 3                                                    ATP5PO ack K60     9
#> 4                                                     CTTN ack K198     9
#> 5                                                     CTTN ubi K230     9
#> 6                                                   EEF1A1 ubi K179     9
#> 7                                                   EEF1A1 ubi K392     9
#> 8                                                      EZR ubi K209     9
#> 9                                                      EZR ubi K211     9
#> 10                                                     EZR ubi K344     9
#> 11                                         EZR ubi K72; RDX ubi K72     9
#> 12 HSPA1B ubi K507; HSPA8 ubi K507; HSPA6 ubi K509; HSPA1L ubi K509     9
#> 13                              LCK p Y394; FYN p Y420; YES1 p Y426     9
#> 14                                                   MYH9 ack K1525     9
#> 15                                                   MYH9 ack K1527     9
#> 16                                                   MYH9 ubi K1638     9
#> 17                    MYH9 ubi K821; MYH10 ubi K828; MYH14 ubi K845     9
#> 18                                                  NSFL1C ubi K127     9
#> 19                                                  PI4K2A ubi K240     9
#> 20                                                    PKP4 ubi K518     9
#> 21                                                     PTPRK p Y916     9
#> 22                                                    SEC16A p Y813     9
#> 23                                                   SF3B2 ubi K280     9
#> 24                                                   SF3B2 ubi K543     9
#> 25                      TUBA1B p Y103; TUBA4A p Y103; TUBA1C p Y103     9
#> 26                                 TUBA1B ubi K336; TUBA1C ubi K336     9
#> 27                                 TUBA1B ubi K338; TUBA1C ubi K338     9
#> 28                TUBA1B ubi K370; TUBA4A ubi K370; TUBA1C ubi K370     9
#> 29                   TUBA1B ubi K96; TUBA4A ubi K96; TUBA1C ubi K96     9
#> 30                                                    WEE1 ack K596     9
#> 
#> $`10`
#>                                                                    PTMnames
#> 1                                                                APP p T761
#> 2                                                                ATG3 p Y18
#> 3                                                           ATP6V0D1 p Y347
#> 4                                              CTNNA2 p Y417; CTNNA1 p Y419
#> 5                                                            CTNNAL1 p Y534
#> 6                                                            CTNNAL1 p Y536
#> 7                                                             DCBLD1 p Y589
#> 8                                                             DCBLD1 p Y600
#> 9                                                           EEF1A1 ack K408
#> 10                                                              EZR ubi K83
#> 11                                                             FKBP4 p Y411
#> 12                                                              FRS2 p Y349
#> 13                                                            HNRNPF p Y210
#> 14                                                            HNRNPF p Y253
#> 15                                                             LARP1 p Y361
#> 16                                                             MERTK p Y929
#> 17                                                           MERTK ubi K856
#> 18                                                                MYH9 p Y9
#> 19                                                          PI4K2A ubi K336
#> 20                                                            PIK3R2 p Y460
#> 21                                                              PKP4 p Y157
#> 22                                                              PKP4 p Y224
#> 23                                                              PKP4 p Y390
#> 24                                                           PLEKHA6 p Y471
#> 25                                                           PLEKHA6 p Y498
#> 26                                                             PRRC2A p Y17
#> 27                                                             PSMC1 p Y439
#> 28                                                            PTPN11 p S595
#> 29                                                           PTTG1IP p Y165
#> 30                                                             RBM14 p Y226
#> 31                                                             RBM14 p Y648
#> 32                                                              RBM4 p Y194
#> 33                                                           SEC16A p Y1209
#> 34                                                              SGMS2 p Y59
#> 35                                                            SLC12A4 p Y17
#> 36                                                            SLC38A2 p Y28
#> 37                                                            SLC9A1 p S693
#> 38                                                            SLC9A1 p Y683
#> 39                                                              SMAGP p Y95
#> 40                                                            SYAP1 ack K70
#> 41                                                              SYAP1 p Y60
#> 42                                                              TJP3 p Y361
#> 43                                                           TMEM106B p Y50
#> 44                                                              TNK2 p Y860
#> 45                              TUBA1B p Y282; TUBA4A p Y282; TUBA1A p Y282
#> 46 TUBA1B p Y357; TUBA4A p Y357; TUBA1A p Y357; TUBA1C p Y357; TUBA8 p Y357
#> 47                                                             USP15 p Y263
#> 48                                                              WEE1 p S139
#> 49                                                              WEE1 p Y132
#> 50                                                            ZDHHC5 p Y630
#> 51                                             ZDHHC5 p Y711; ZDHHC8 p Y761
#>    group
#> 1     10
#> 2     10
#> 3     10
#> 4     10
#> 5     10
#> 6     10
#> 7     10
#> 8     10
#> 9     10
#> 10    10
#> 11    10
#> 12    10
#> 13    10
#> 14    10
#> 15    10
#> 16    10
#> 17    10
#> 18    10
#> 19    10
#> 20    10
#> 21    10
#> 22    10
#> 23    10
#> 24    10
#> 25    10
#> 26    10
#> 27    10
#> 28    10
#> 29    10
#> 30    10
#> 31    10
#> 32    10
#> 33    10
#> 34    10
#> 35    10
#> 36    10
#> 37    10
#> 38    10
#> 39    10
#> 40    10
#> 41    10
#> 42    10
#> 43    10
#> 44    10
#> 45    10
#> 46    10
#> 47    10
#> 48    10
#> 49    10
#> 50    10
#> 51    10
#> 
#> $`11`
#>                           PTMnames group
#> 1                       APP p Y757    11
#> 2 EEF1A1 ack K146; EEF1A2 ack K146    11
#> 3                  EEF1A1 ack K392    11
#> 4 EEF1A1 ubi K146; EEF1A2 ubi K146    11
#> 5                      EZR ack K83    11
#> 6                  HSPA1B ubi K539    11
#> 7                      PHB2 p Y248    11
#> 8                      PKP4 p Y114    11
#> 9                 PTTG1IP ubi K169    11
#> 
#> $`12`
#>                          PTMnames group
#> 1                    APP ubi K751    12
#> 2                   CTTN ack K107    12
#> 3                 EEF1A1 ubi K172    12
#> 4                 EEF1A1 ubi K180    12
#> 5                 EEF1A1 ubi K439    12
#> 6  EEF1A1 ubi K44; EEF1A2 ubi K44    12
#> 7                    EZR ubi K139    12
#> 8                 HNRNPF ubi K224    12
#> 9                 HNRNPU ack K814    12
#> 10                HSPA1B ubi K524    12
#> 11                 HSPA9 ack K135    12
#> 12                 HSPA9 ack K600    12
#> 13                   MET ubi K962    12
#> 14                  MYH9 ubi K860    12
#> 15                NSFL1C ack K172    12
#> 16                SLC38A2 ubi K59    12
#> 
#> $`13`
#>          PTMnames group
#> 1    APP ubi K763    13
#> 2 SLC9A1 ubi K583    13
#> 
#> $`14`
#>                         PTMnames group
#> 1                   ARAP2 p Y334    14
#> 2                EEF1A1 ack K395    14
#> 3                 HSPA9 ack K300    14
#> 4                 MYH9 ack K1014    14
#> 5                  MYH9 ack K299    14
#> 6                  MYH9 ack K545    14
#> 7  MYH9 ack K565; MYH10 ack K572    14
#> 8                  MYH9 ack K613    14
#> 9  MYH9 ack K682; MYH10 ack K689    14
#> 10                OXCT1 ack K473    14
#> 11                PSMC1 ack K258    14
#> 
#> $`15`
#>                              PTMnames group
#> 1                        ARAP2 p Y473    15
#> 2                       CTTN ack K124    15
#> 3                       CTTN ack K235    15
#> 4                       CTTN ack K272    15
#> 5                       CTTN ack K309    15
#> 6                        CTTN ack K87    15
#> 7                         CTTN p S156    15
#> 8                         CTTN p S418    15
#> 9                         CTTN p Y104    15
#> 10                        CTTN p Y154    15
#> 11                        CTTN p Y162    15
#> 12                        CTTN p Y178    15
#> 13                        CTTN p Y199    15
#> 14                        CTTN p Y228    15
#> 15                        CTTN p Y265    15
#> 16                        CTTN p Y334    15
#> 17                        CTTN p Y421    15
#> 18                        CTTN p Y446    15
#> 19                    EEF1A1 ack K172    15
#> 20                    EEF1A1 ack K179    15
#> 21   EEF1A1 ack K255; EEF1A2 ack K255    15
#> 22     EEF1A1 ack K44; EEF1A2 ack K44    15
#> 23       EEF1A1 p Y141; EEF1A2 p Y141    15
#> 24                      EEF1A1 p Y177    15
#> 25         EEF1A1 p Y29; EEF1A2 p Y29    15
#> 26 EZR p Y270; MSN p Y270; RDX p Y270    15
#> 27           EZR ubi K79; RDX ubi K79    15
#> 28                        FRS2 p Y306    15
#> 29                    HNRNPU ack K565    15
#> 30                    HNRNPU ack K635    15
#> 31    HSPA1B ack K500; HSPA6 ack K502    15
#> 32                         LCK p Y192    15
#> 33                        MET p S1236    15
#> 34                        MET p Y1234    15
#> 35                       MYH9 p Y1408    15
#> 36                       MYH9 p Y1805    15
#> 37                      MYH9 ubi K833    15
#> 38                    NSFL1C ubi K172    15
#> 39                      PARD3 p Y1080    15
#> 40                       PARD3 p Y719    15
#> 41                        PKP4 p T477    15
#> 42                       PKP4 p Y1094    15
#> 43                       PKP4 p Y1115    15
#> 44                       PKP4 p Y1168    15
#> 45                        PKP4 p Y372    15
#> 46                        PKP4 p Y415    15
#> 47                        PKP4 p Y420    15
#> 48                        PKP4 p Y465    15
#> 49                        PKP4 p Y494    15
#> 50                     PLEKHA6 p Y404    15
#> 51                     PLEKHA6 p Y492    15
#> 52                      PTPN11 p Y546    15
#> 53                      PTPN11 p Y584    15
#> 54                       PTPN11 p Y62    15
#> 55                      PTPRH p Y1102    15
#> 56                     PTTG1IP p Y174    15
#> 57                     RBM14 ack K149    15
#> 58                   TMEM106B ubi K14    15
#> 59                        TNK2 p Y827    15
#> 60                        TNK2 p Y859    15
#> 61                      ZNF185 p Y581    15
#> 
#> $`16`
#>                                            PTMnames group
#> 1                                       ARAP2 p Y77    16
#> 2                                      NSFL1C p Y95    16
#> 3                                       PKP4 p Y369    16
#> 4                                    SEC16A p Y1291    16
#> 5                                     SPRED1 p Y292    16
#> 6 TUBA1B ubi K304; TUBA4A ubi K304; TUBA1A ubi K304    16
#> 7                                      USP15 p Y274    16
#> 
#> $`17`
#>            PTMnames group
#> 1 ATP6V0D1 ubi K343    17
#> 2     HNRNPU p S271    17
#> 3     MYH9 ack K355    17
#> 
#> $`18`
#>         PTMnames group
#> 1    CTTN p S417    18
#> 2 MYH9 ubi K1415    18
#> 
#> $`19`
#>      PTMnames group
#> 1 CTTN p S447    19
#> 2 TNK2 p Y284    19
#> 
#> $`20`
#>                           PTMnames group
#> 1                      CTTN p T440    20
#> 2 HSPA1B ubi K423; HSPA1L ubi K425    20
#> 
#> $`21`
#>         PTMnames group
#> 1    CTTN p Y141    21
#> 2    MYH9 p Y754    21
#> 3   PARD3 p Y489    21
#> 4   PKP4 p Y1172    21
#> 5    PKP4 p Y425    21
#> 6 RBM14 ack K164    21
#> 
#> $`22`
#>           PTMnames group
#> 1      CTTN p Y289    22
#> 2  HNRNPU ubi K186    22
#> 3     PARD3 p S717    22
#> 4     PKP4 p Y1132    22
#> 5     PTPRK p Y849    22
#> 6 PTTG1IP ubi K164    22
#> 7      TNK2 p T857    22
#> 
#> $`23`
#>           PTMnames group
#> 1      CTTN p Y453    23
#> 2 TMEM192 ubi K254    23
#> 
#> $`24`
#>        PTMnames group
#> 1 CTTN ubi K181    24
#> 2 CTTN ubi K272    24
#> 
#> $`25`
#>                                             PTMnames group
#> 1                                      CTTN ubi K193    25
#> 2                                      DCBLD1 p S619    25
#> 3                                       EZR ubi K450    25
#> 4                                       EZR ubi K458    25
#> 5                                     MYH9 ack K1793    25
#> 6                                      PIK3R2 p Y505    25
#> 7                                        PKP4 p S273    25
#> 8                                        PKP4 p Y306    25
#> 9                                      PTPN11 p T547    25
#> 10                                      RBM14 p Y645    25
#> 11                                    SEC16A p Y1031    25
#> 12 TUBA1B ubi K163; TUBA4A ubi K163; TUBA1C ubi K163    25
#> 13 TUBA1B ubi K164; TUBA4A ubi K164; TUBA1C ubi K164    25
#> 14 TUBA1B ubi K394; TUBA4A ubi K394; TUBA1C ubi K394    25
#> 15 TUBA1B ubi K401; TUBA4A ubi K401; TUBA1C ubi K401    25
#> 
#> $`26`
#>                                      PTMnames group
#> 1                                 DNM2 p Y231    26
#> 2                                EZR ubi K143    26
#> 3            HSPA1B ubi K512; HSPA1L ubi K514    26
#> 4                                 TNK2 p T517    26
#> 5            TUBA1B ack K336; TUBA1C ack K336    26
#> 6 TUBA1B p Y312; TUBA4A p Y312; TUBA1C p Y312    26
#> 
#> $`27`
#>            PTMnames group
#> 1   EEF1A1 ack K439    27
#> 2    MYH9 ack K1828    27
#> 3 RNASEH2B ack K284    27
#> 
#> $`28`
#>                              PTMnames group
#> 1        EEF1A1 p T142; EEF1A2 p T142    28
#> 2 LCK p T395; FYN p T421; YES1 p T427    28
#> 3                       PARD3 p Y1177    28
#> 4                      PRRC2A ack K35    28
#> 
#> $`29`
#>                                                                            PTMnames
#> 1                                                                   EEF1A1 ubi K212
#> 2                                                                      EZR ubi K162
#> 3                                                                   HNRNPF ubi K299
#> 4                                                                   HNRNPH2 ubi K35
#> 5                                  HSPA1B ubi K451; HSPA6 ubi K453; HSPA1L ubi K453
#> 6  HSPA1B ubi K507; HSPA8 ubi K507; HSPA6 ubi K509; HSPA1L ubi K509; HSPA2 ubi K510
#> 7                                                                     MET ack K1248
#> 8                                                                       MET p Y1349
#> 9                                                                       MET p Y1356
#> 10                                                                   MYH9 ack K1492
#> 11                                                                   MYH9 ack K1538
#> 12                                                      MYH9 ubi K82; MYH10 ubi K86
#> 13                                                                SLC12A4 ubi K1010
#> 14                                                                  SLC38A2 ubi K38
#> 15                                                                 SUPT16H ack K904
#> 16                                                                 SUPT16H ubi K904
#> 17                                TUBA1B ack K280; TUBA4A ack K280; TUBA1A ack K280
#> 18                                TUBA1B ack K304; TUBA4A ack K304; TUBA1A ack K304
#> 19               TUBA1B ubi K163; TUBA4A ubi K163; TUBA1A ubi K163; TUBA1C ubi K163
#>    group
#> 1     29
#> 2     29
#> 3     29
#> 4     29
#> 5     29
#> 6     29
#> 7     29
#> 8     29
#> 9     29
#> 10    29
#> 11    29
#> 12    29
#> 13    29
#> 14    29
#> 15    29
#> 16    29
#> 17    29
#> 18    29
#> 19    29
#> 
#> $`30`
#>                            PTMnames group
#> 1                   EEF1A1 ubi K273    30
#> 2                   HNRNPF ubi K167    30
#> 3                   HNRNPU ubi K464    30
#> 4                     MET ubi K1161    30
#> 5                      PARD3 p Y933    30
#> 6    PKP4 ubi K518; CTNND2 ubi K540    30
#> 7                    SF3B2 ubi K529    30
#> 8                   SLC38A2 ubi K33    30
#> 9                     SPRED1 p Y294    30
#> 10 TUBA1B ubi K352; TUBA4A ubi K352    30
#> 
#> $`31`
#>          PTMnames group
#> 1 EEF1A1 ubi K408    31
#> 2 HSPA1B ubi K126    31
#> 3     PKP4 p S281    31
#> 4  TMEM106B p Y18    31
#> 
#> $`32`
#>                    PTMnames group
#> 1  EZR ubi K35; MSN ubi K35    32
#> 2            HNRNPF ubi K98    32
#> 3           HNRNPU ubi K265    32
#> 4              MYH9 ubi K14    32
#> 5             MYH9 ubi K850    32
#> 6             PSMC1 ubi K91    32
#> 7           PTPRK ubi K1360    32
#> 8             SF3B2 ack K10    32
#> 9          SLC12A4 ubi K988    32
#> 10          SLC9A1 ubi K612    32
#> 11          SLC9A1 ubi K625    32
#> 12          SLC9A1 ubi K767    32
#> 
#> $`33`
#>         PTMnames group
#> 1 FKBP4 ack K354    33
#> 
#> $`34`
#>                                                             PTMnames group
#> 1                                                      FKBP4 ubi K28    34
#> 2                                                        MET p Y1365    34
#> 3                                                      MET ubi K1190    34
#> 4                                                       PDZD11 p Y36    34
#> 5 TUBA1B ack K311; TUBA4A ack K311; TUBA1A ack K311; TUBA1C ack K311    34
#> 
#> $`35`
#>         PTMnames group
#> 1 HNRNPF ack K98    35
#> 2 HSPA9 ack K159    35
#> 3     MET p S990    35
#> 
#> $`36`
#>         PTMnames group
#> 1 HNRNPH2 p Y276    36
#> 2 HSPA9 ubi K121    36
#> 3 SEC16A p Y1380    36
#> 
#> $`37`
#>          PTMnames group
#> 1 HNRNPU ack K464    37
#> 2   MET ubi K1318    37
#> 
#> $`38`
#>          PTMnames group
#> 1 HNRNPU ubi K352    38
#> 
#> $`39`
#>           PTMnames group
#> 1  HNRNPU ubi K635    39
#> 2  HSPA1B ubi K325    39
#> 3  HSPA1B ubi K550    39
#> 4   HSPA1B ubi K56    39
#> 5    MYH9 ubi K102    39
#> 6   PSMC1 ubi K237    39
#> 7  SPRED1 ubi K284    39
#> 8 SUPT16H ubi K596    39
#> 
#> $`40`
#>                                            PTMnames group
#> 1                                   HSPA1B ubi K628    40
#> 2 TUBA1B ack K336; TUBA1A ack K336; TUBA1C ack K336    40
#> 
#> $`41`
#>        PTMnames group
#> 1 MET ubi K1259    41
#> 
#> $`42`
#>         PTMnames group
#> 1 MYH9 ack K1802    42
#> 2   MYH9 ack K74    42
#> 3  MYH9 ubi K856    42
#> 4    PKP4 p Y443    42
#> 
#> $`43`
#>           PTMnames group
#> 1      MYH9 ack K8    43
#> 2     PARD3 p S728    43
#> 3    PHLDB2 p Y162    43
#> 4   PSMC1 ubi K430    43
#> 5 PTTG1IP ack K169    43
#> 
#> $`44`
#>        PTMnames group
#> 1 MYH9 ubi K651    44
#> 2   PKP4 p Y275    44
#> 3 PTPN11 p Y279    44
#> 4 SLC38A2 p Y41    44
#> 
#> $`45`
#>          PTMnames group
#> 1 NSFL1C ubi K124    45
#> 2     PSMC1 p Y71    45
#> 3  PSMC1 ubi K258    45
#> 4  SCRIB ubi K105    45
#> 
#> $`46`
#>         PTMnames group
#> 1   PARD3 p S715    46
#> 2 SEC16A p Y1202    46
#> 3   SF3B2 p Y806    46
#> 
#> $`47`
#>         PTMnames group
#> 1  PARD3 p Y1310    47
#> 2 SEC16A p Y1199    47
#> 
#> $`48`
#>        PTMnames group
#> 1   PDZD11 p Y7    48
#> 2   PKP4 p T419    48
#> 3  PKP4 p Y1143    48
#> 4   PSMC1 p Y25    48
#> 5 ZNF185 p Y597    48
#> 
#> $`49`
#>        PTMnames group
#> 1 PIK3R2 p Y577    49
#> 2 PTPN11 p Y519    49
#> 
#> $`50`
#>      PTMnames group
#> 1 PKP4 p T412    50
#> 
#> $`51`
#>      PTMnames group
#> 1 PKP4 p Y421    51
#> 
#> $`52`
#>         PTMnames group
#> 1    PKP4 p Y482    52
#> 2 PLEKHA6 p Y415    52
#> 3  PTPN11 p S580    52
#> 
#> $`53`
#>         PTMnames group
#> 1 PLEKHA6 p Y729    53
#> 2  PTPN11 p Y515    53
#> 
#> $`54`
#>         PTMnames group
#> 1   SCRIB p Y834    54
#> 2 SCRIB ubi K467    54
#> 3  SPRED1 p Y187    54
#> 
#> $`55`
#>        PTMnames group
#> 1 SEC16A p Y991    55
#> 
#> 
#> $Spearman
#> $`1`
#>           PTMnames group
#> 1    ABLIM1 p Y357     1
#> 2    ABLIM1 p Y373     1
#> 3    DCBLD1 p Y589     1
#> 4    DCBLD1 p Y600     1
#> 5  HSPA1B ubi K126     1
#> 6      MET p Y1003     1
#> 7    PIK3R2 p Y460     1
#> 8     PKP4 p Y1156     1
#> 9     PSMC1 p Y439     1
#> 10    USP15 p Y263     1
#> 
#> $`2`
#>            PTMnames group
#> 1     ABLIM1 p Y383     2
#> 2     ABLIM1 p Y410     2
#> 3     ABLIM1 p Y688     2
#> 4   ABLIM1 ubi K275     2
#> 5      APP ubi K763     2
#> 6       EZR ubi K60     2
#> 7   HNRNPU ubi K352     2
#> 8   HNRNPU ubi K433     2
#> 9    HSPA1B ubi K56     2
#> 10  HSPA1B ubi K597     2
#> 11    MET ubi K1232     2
#> 12   MYH9 ack K1492     2
#> 13    MYH9 ubi K102     2
#> 14     MYH9 ubi K14     2
#> 15    MYH9 ubi K299     2
#> 16    MYH9 ubi K373     2
#> 17   PSMC1 ubi K293     2
#> 18   PSMC1 ubi K430     2
#> 19 PTTG1IP ubi K164     2
#> 20   SEC16A p Y2193     2
#> 21 SLC12A4 ubi K979     2
#> 22 SLC12A4 ubi K988     2
#> 23  SLC9A1 ubi K583     2
#> 24  SLC9A1 ubi K612     2
#> 25  SLC9A1 ubi K625     2
#> 26  SPRED1 ubi K284     2
#> 27    ZDHHC5 p Y497     2
#> 
#> $`3`
#>                                                             PTMnames group
#> 1                                                      ABLIM1 p Y406     3
#> 2                                                      ABLIM1 ubi K8     3
#> 3                                                    ATP5PO ack K158     3
#> 4                                                       ATP5PO p Y35     3
#> 5                                   CTNNA2 ack K913; CTNNA1 ack K866     3
#> 6                                                        CTTN p Y289     3
#> 7                                                         CTTN p Y84     3
#> 8                                                      DCBLD1 p Y578     3
#> 9                                                    EEF1A1 ack K395     3
#> 10                                                   EEF1A1 ack K439     3
#> 11                                                       EZR ack K60     3
#> 12                                                    FKBP4 ack K354     3
#> 13                                                       FRS2 p Y392     3
#> 14                                                   HNRNPU ack K343     3
#> 15                                                     HNRNPU p Y257     3
#> 16                                                     HNRNPU p Y260     3
#> 17                                                   HSPA1B ack K348     3
#> 18 HSPA1B p Y41; HSPA8 p Y41; HSPA6 p Y43; HSPA1L p Y43; HSPA2 p Y42     3
#> 19                                                       MET p Y1230     3
#> 20                                                       MYH9 ack K8     3
#> 21                                                     MYH9 ack K882     3
#> 22                                                         OAT p Y69     3
#> 23                                                      PARD3 p S717     3
#> 24                                                      PARD3 p Y388     3
#> 25                                                     PIK3R2 p Y577     3
#> 26                                                       PKP4 p S406     3
#> 27                                                    PLEKHA6 p S472     3
#> 28                                                      PTPRH p Y850     3
#> 29                                                  PTTG1IP ack K169     3
#> 30                                                      RBM14 p Y249     3
#> 31                                                 RNASEH2B ack K284     3
#> 32                                                      SCRIB p Y834     3
#> 33                                                    SCRIB ubi K467     3
#> 34                                                     SEC16A p Y489     3
#> 35                                                     SPRED1 p Y187     3
#> 
#> $`4`
#>        PTMnames group
#> 1 ABLIM1 p Y461     4
#> 2 HNRNPF p Y266     4
#> 3 PHLDB2 p Y301     4
#> 4  PKP4 p Y1143     4
#> 
#> $`5`
#>                                                                            PTMnames
#> 1                                                                    ACOX1 ack K437
#> 2                                                  EEF1A1 ubi K146; EEF1A2 ubi K146
#> 3                                                                      EZR ubi K162
#> 4                                                                   HNRNPU ubi K186
#> 5                                  HSPA1B ubi K451; HSPA6 ubi K453; HSPA1L ubi K453
#> 6  HSPA1B ubi K507; HSPA8 ubi K507; HSPA6 ubi K509; HSPA1L ubi K509; HSPA2 ubi K510
#> 7                                                                     MET ack K1248
#> 8                                                                     MYH9 ack K355
#> 9                                                                 SLC12A4 ubi K1010
#> 10                                                                  SLC38A2 ubi K38
#> 11                                TUBA1B ack K280; TUBA4A ack K280; TUBA1A ack K280
#> 12                                TUBA1B ack K336; TUBA1A ack K336; TUBA1C ack K336
#> 13               TUBA1B ubi K163; TUBA4A ubi K163; TUBA1A ubi K163; TUBA1C ubi K163
#>    group
#> 1      5
#> 2      5
#> 3      5
#> 4      5
#> 5      5
#> 6      5
#> 7      5
#> 8      5
#> 9      5
#> 10     5
#> 11     5
#> 12     5
#> 13     5
#> 
#> $`6`
#>                                                                              PTMnames
#> 1                                                                        ACOX1 p Y629
#> 2                                                                        ACTR5 p Y564
#> 3                                                                     ATP5PO ack K199
#> 4                                                                       CTTN ack K161
#> 5                                                                       CTTN ack K171
#> 6                                                            DNM2 p Y125; DNM3 p Y125
#> 7                                                      EEF1A1 ack K41; EEF1A2 ack K41
#> 8                                                                         EMC7 p S114
#> 9                                                                         EMC7 p T113
#> 10                                                                          EZR p Y85
#> 11                                                                     HNRNPH2 p Y306
#> 12                                                                    HNRNPH2 ubi K35
#> 13                                                                    HNRNPU ack K265
#> 14                                                                    HNRNPU ack K352
#> 15                                                                      HNRNPU p Y473
#> 16                                                    HSPA1B ack K319; HSPA6 ack K321
#> 17                                                                       HSPA9 p Y161
#> 18                                                                         LCK p Y505
#> 19                                                                     MYH9 ack K1387
#> 20                                                                     MYH9 ack K1828
#> 21                                                                       MYH9 ack K47
#> 22                                                      MYH9 ack K682; MYH10 ack K689
#> 23                      MYH9 ack K821; MYH10 ack K828; MYH11 ack K828; MYH14 ack K845
#> 24                                                                      MYO18A p Y700
#> 25                                                                         NFS1 p Y80
#> 26                                                                         OAT p Y126
#> 27                                                                     OXCT1 ack K418
#> 28                                                                     OXCT1 ack K473
#> 29                                                                         PHB2 p Y77
#> 30                                                                      PI4K2A p Y402
#> 31                                                                        PKP4 p T412
#> 32                                                                      PTPN11 p Y519
#> 33                                                                      PTPRH p Y1094
#> 34                                                                    RASSF8 ubi K176
#> 35                                                                        RMC1 p Y610
#> 36                                                                     RNASEH2B p S21
#> 37                                                                     RNASEH2B p Y23
#> 38                                                                     RPRD2 ack K671
#> 39                                                                      SEC16A p Y991
#> 40                                                                     SF3B2 ack K275
#> 41                                                                     SUPT16H p Y535
#> 42                                                                        TNK2 p T857
#> 43 TUBA1B ack K370; TUBA4A ack K370; TUBA1A ack K370; TUBA1C ack K370; TUBA8 ack K370
#>    group
#> 1      6
#> 2      6
#> 3      6
#> 4      6
#> 5      6
#> 6      6
#> 7      6
#> 8      6
#> 9      6
#> 10     6
#> 11     6
#> 12     6
#> 13     6
#> 14     6
#> 15     6
#> 16     6
#> 17     6
#> 18     6
#> 19     6
#> 20     6
#> 21     6
#> 22     6
#> 23     6
#> 24     6
#> 25     6
#> 26     6
#> 27     6
#> 28     6
#> 29     6
#> 30     6
#> 31     6
#> 32     6
#> 33     6
#> 34     6
#> 35     6
#> 36     6
#> 37     6
#> 38     6
#> 39     6
#> 40     6
#> 41     6
#> 42     6
#> 43     6
#> 
#> $`7`
#>          PTMnames group
#> 1    AGFG1 p Y327     7
#> 2 EEF1A1 ack K408     7
#> 
#> $`8`
#>         PTMnames group
#> 1   APH1A p Y256     8
#> 2     APP p Y757     8
#> 3 TMEM106B p Y18     8
#> 
#> $`9`
#>                                             PTMnames group
#> 1                                      APH1A ubi K95     9
#> 2                                        CTTN p S417     9
#> 3                                      CTTN ubi K181     9
#> 4                                      CTTN ubi K193     9
#> 5                                      CTTN ubi K230     9
#> 6                                      CTTN ubi K272     9
#> 7                                      DCBLD1 p S619     9
#> 8                                        DNM2 p Y231     9
#> 9                                       EZR ubi K450     9
#> 10                                      EZR ubi K458     9
#> 11                                    MYH9 ack K1793     9
#> 12                                    MYH9 ubi K1415     9
#> 13     MYH9 ubi K821; MYH10 ubi K828; MYH14 ubi K845     9
#> 14                                     PIK3R2 p Y505     9
#> 15                                       PKP4 p S273     9
#> 16                                       PKP4 p Y306     9
#> 17                                     PTPN11 p T547     9
#> 18                                      RBM14 p Y645     9
#> 19                                    SEC16A p Y1031     9
#> 20 TUBA1B ubi K163; TUBA4A ubi K163; TUBA1C ubi K163     9
#> 21 TUBA1B ubi K164; TUBA4A ubi K164; TUBA1C ubi K164     9
#> 22 TUBA1B ubi K394; TUBA4A ubi K394; TUBA1C ubi K394     9
#> 23 TUBA1B ubi K401; TUBA4A ubi K401; TUBA1C ubi K401     9
#> 
#> $`10`
#>                                                            PTMnames group
#> 1                                                     APH1A ubi K96    10
#> 2                                                    ATP5PO ack K60    10
#> 3                                                     CTTN ack K198    10
#> 4                                      EEF1A1 p T142; EEF1A2 p T142    10
#> 5                                                   EEF1A1 ubi K179    10
#> 6                                                   EEF1A1 ubi K392    10
#> 7                                                      EZR ubi K143    10
#> 8                                                      EZR ubi K209    10
#> 9                                                      EZR ubi K211    10
#> 10                                                     EZR ubi K344    10
#> 11                                         EZR ubi K72; RDX ubi K72    10
#> 12 HSPA1B ubi K507; HSPA8 ubi K507; HSPA6 ubi K509; HSPA1L ubi K509    10
#> 13                                 HSPA1B ubi K512; HSPA1L ubi K514    10
#> 14                              LCK p T395; FYN p T421; YES1 p T427    10
#> 15                              LCK p Y394; FYN p Y420; YES1 p Y426    10
#> 16                                                   MYH9 ack K1525    10
#> 17                                                   MYH9 ack K1527    10
#> 18                                                   MYH9 ubi K1638    10
#> 19                                                  NSFL1C ubi K127    10
#> 20                                                    PARD3 p Y1177    10
#> 21                                                  PI4K2A ubi K240    10
#> 22                                                    PKP4 ubi K518    10
#> 23                                                   PRRC2A ack K35    10
#> 24                                                     PTPRK p Y916    10
#> 25                                                    SEC16A p Y813    10
#> 26                                                   SF3B2 ubi K280    10
#> 27                                                   SF3B2 ubi K543    10
#> 28                                                      TNK2 p T517    10
#> 29                                 TUBA1B ack K336; TUBA1C ack K336    10
#> 30                      TUBA1B p Y103; TUBA4A p Y103; TUBA1C p Y103    10
#> 31                      TUBA1B p Y312; TUBA4A p Y312; TUBA1C p Y312    10
#> 32                                 TUBA1B ubi K336; TUBA1C ubi K336    10
#> 33                                 TUBA1B ubi K338; TUBA1C ubi K338    10
#> 34                TUBA1B ubi K370; TUBA4A ubi K370; TUBA1C ubi K370    10
#> 35                   TUBA1B ubi K96; TUBA4A ubi K96; TUBA1C ubi K96    10
#> 36                                                    WEE1 ack K596    10
#> 
#> $`11`
#>                                                                         PTMnames
#> 1                                                                     APP p T761
#> 2                                                                     ATG3 p Y18
#> 3                                                                ATP5PO ack K162
#> 4                                                                ATP6V0D1 p Y347
#> 5                                                              ATP6V0D1 ubi K343
#> 6                                                                EEF1A1 ack K392
#> 7                                                                EEF1A1 ubi K408
#> 8                                                                    EZR ubi K83
#> 9                                                                    FRS2 p Y349
#> 10                                                                HNRNPF ack K98
#> 11                                                               HNRNPU ubi K524
#> 12                                                                HSPA9 ack K159
#> 13                                                                    LCK p Y394
#> 14                                                                MERTK ubi K856
#> 15                                                                   MET p Y1235
#> 16                                                                 MET ubi K1190
#> 17                                                                 MET ubi K1259
#> 18                                                                    MYH9 p Y11
#> 19                                                                     MYH9 p Y9
#> 20                                                 MYH9 ubi K682; MYH10 ubi K689
#> 21                                                                   PDZD11 p Y7
#> 22                                                                   PHB2 p Y248
#> 23                                                               PI4K2A ubi K336
#> 24                                                                   PKP4 p Y114
#> 25                                                                   PKP4 p Y157
#> 26                                                                PLEKHA6 p Y498
#> 27                                                                  PTPRK p Y858
#> 28                                                              PTTG1IP ubi K169
#> 29                                                                  RBM14 p Y226
#> 30                                                                 SCRIB p Y1360
#> 31                                                                   SMAGP p Y95
#> 32                                                              SUPT16H ack K674
#> 33                                                                 SYAP1 ack K70
#> 34                                                                   SYAP1 p Y60
#> 35                                                                TMEM106B p Y50
#> 36                                                                TMEM192 p Y213
#> 37      TUBA1B p Y103; TUBA4A p Y103; TUBA1A p Y103; TUBA1C p Y103; TUBA8 p Y103
#> 38                                   TUBA1B p Y272; TUBA4A p Y272; TUBA1A p Y272
#> 39                             TUBA1B ubi K112; TUBA1A ubi K112; TUBA1C ubi K112
#> 40                             TUBA1B ubi K304; TUBA4A ubi K304; TUBA1A ubi K304
#> 41                             TUBA1B ubi K326; TUBA1A ubi K326; TUBA1C ubi K326
#> 42                             TUBA1B ubi K336; TUBA1A ubi K336; TUBA1C ubi K336
#> 43                             TUBA1B ubi K338; TUBA1A ubi K338; TUBA1C ubi K338
#> 44                                              TUBA1B ubi K370; TUBA4A ubi K370
#> 45                                TUBA1B ubi K60; TUBA1A ubi K60; TUBA1C ubi K60
#> 46 TUBA1B ubi K96; TUBA4A ubi K96; TUBA1A ubi K96; TUBA1C ubi K96; TUBA8 ubi K96
#> 47                                                                   WEE1 p S139
#> 48                                                                   WEE1 p Y132
#> 49                                                                 ZDHHC5 p S529
#> 50                                                                 ZDHHC5 p Y533
#>    group
#> 1     11
#> 2     11
#> 3     11
#> 4     11
#> 5     11
#> 6     11
#> 7     11
#> 8     11
#> 9     11
#> 10    11
#> 11    11
#> 12    11
#> 13    11
#> 14    11
#> 15    11
#> 16    11
#> 17    11
#> 18    11
#> 19    11
#> 20    11
#> 21    11
#> 22    11
#> 23    11
#> 24    11
#> 25    11
#> 26    11
#> 27    11
#> 28    11
#> 29    11
#> 30    11
#> 31    11
#> 32    11
#> 33    11
#> 34    11
#> 35    11
#> 36    11
#> 37    11
#> 38    11
#> 39    11
#> 40    11
#> 41    11
#> 42    11
#> 43    11
#> 44    11
#> 45    11
#> 46    11
#> 47    11
#> 48    11
#> 49    11
#> 50    11
#> 
#> $`12`
#>                          PTMnames group
#> 1                    APP ubi K751    12
#> 2                   CTTN ack K107    12
#> 3                 EEF1A1 ubi K172    12
#> 4                 EEF1A1 ubi K180    12
#> 5                 EEF1A1 ubi K439    12
#> 6  EEF1A1 ubi K44; EEF1A2 ubi K44    12
#> 7                    EZR ubi K139    12
#> 8                 HNRNPU ack K814    12
#> 9                  HSPA9 ack K135    12
#> 10                   MET ubi K962    12
#> 11                  MYH9 ubi K651    12
#> 12                  MYH9 ubi K833    12
#> 13                  MYH9 ubi K856    12
#> 14                  MYH9 ubi K860    12
#> 15                NSFL1C ubi K172    12
#> 16                    PKP4 p Y494    12
#> 17                 PLEKHA6 p Y404    12
#> 18                SLC38A2 ubi K59    12
#> 19               TMEM192 ubi K254    12
#> 
#> $`13`
#>                        PTMnames group
#> 1                  ARAP2 p Y334    13
#> 2                HSPA9 ack K300    13
#> 3                MYH9 ack K1014    13
#> 4                 MYH9 ack K299    13
#> 5 MYH9 ack K565; MYH10 ack K572    13
#> 6                 MYH9 ack K613    13
#> 7               PLEKHA6 p Y1044    13
#> 8                PSMC1 ack K258    13
#> 
#> $`14`
#>                      PTMnames group
#> 1                ARAP2 p Y473    14
#> 2                 CTTN p S156    14
#> 3                 CTTN p S447    14
#> 4                 CTTN p Y141    14
#> 5                 CTTN p Y154    14
#> 6                 CTTN p Y162    14
#> 7                 CTTN p Y178    14
#> 8                 CTTN p Y265    14
#> 9                 CTTN p Y453    14
#> 10 EEF1A1 p Y29; EEF1A2 p Y29    14
#> 11                MET p S1236    14
#> 12                MYH9 p Y754    14
#> 13               PARD3 p Y489    14
#> 14               PARD3 p Y719    14
#> 15               PKP4 p Y1094    14
#> 16               PKP4 p Y1172    14
#> 17                PKP4 p Y275    14
#> 18                PKP4 p Y420    14
#> 19                PKP4 p Y421    14
#> 20                PKP4 p Y425    14
#> 21              PTPN11 p Y546    14
#> 22             RBM14 ack K164    14
#> 23              SLC38A2 p Y41    14
#> 24              ZNF185 p Y581    14
#> 
#> $`15`
#>        PTMnames group
#> 1   ARAP2 p Y77    15
#> 2  NSFL1C p Y95    15
#> 3  PARD3 p S715    15
#> 4  PKP4 p Y1132    15
#> 5   PKP4 p Y369    15
#> 6  PTPRK p Y849    15
#> 7 SPRED1 p Y292    15
#> 8  USP15 p Y274    15
#> 
#> $`16`
#>           PTMnames group
#> 1  ATP5PO ack K192    16
#> 2     FKBP4 p Y411    16
#> 3    NSFL1C p Y167    16
#> 4      PKP4 p Y470    16
#> 5      PKP4 p Y478    16
#> 6    PTPN11 p S595    16
#> 7   PTTG1IP p Y165    16
#> 8     RBM14 p Y648    16
#> 9   SEC16A p Y1202    16
#> 10  SEC16A p Y1209    16
#> 11  SEC16A p Y1291    16
#> 12     SGMS2 p Y59    16
#> 13 SLC38A2 ubi K33    16
#> 14   SLC9A1 p Y683    16
#> 
#> $`17`
#>                                      PTMnames group
#> 1                CTNNA2 p Y417; CTNNA1 p Y419    17
#> 2                                PRRC2A p Y17    17
#> 3                               RASSF8 p Y418    17
#> 4                               SCRIB p Y1268    17
#> 5                               SLC12A4 p Y17    17
#> 6                               SLC9A1 p S693    17
#> 7 TUBA1B p Y282; TUBA4A p Y282; TUBA1A p Y282    17
#> 8                               ZNF185 p Y597    17
#> 
#> $`18`
#>                                                             PTMnames group
#> 1                                                     CTNNAL1 p S538    18
#> 2                                   EEF1A1 ack K146; EEF1A2 ack K146    18
#> 3                                                      HNRNPU p S271    18
#> 4                                                      PHLDB2 p Y567    18
#> 5 TUBA1B ubi K311; TUBA4A ubi K311; TUBA1A ubi K311; TUBA1C ubi K311    18
#> 
#> $`19`
#>         PTMnames group
#> 1 CTNNAL1 p Y534    19
#> 2 CTNNAL1 p Y536    19
#> 3    CTTN p S405    19
#> 4  HNRNPF p Y210    19
#> 5   LARP1 p Y361    19
#> 6    RBM4 p Y194    19
#> 7  SLC38A2 p Y28    19
#> 8    TNK2 p Y860    19
#> 9  ZDHHC5 p Y630    19
#> 
#> $`20`
#>                              PTMnames group
#> 1                       CTTN ack K124    20
#> 2                       CTTN ack K235    20
#> 3                       CTTN ack K272    20
#> 4                       CTTN ack K309    20
#> 5                        CTTN ack K87    20
#> 6                         CTTN p Y104    20
#> 7                     EEF1A1 ack K172    20
#> 8                     EEF1A1 ack K179    20
#> 9    EEF1A1 ack K255; EEF1A2 ack K255    20
#> 10     EEF1A1 ack K44; EEF1A2 ack K44    20
#> 11                      EEF1A1 p Y177    20
#> 12 EZR p Y270; MSN p Y270; RDX p Y270    20
#> 13    HSPA1B ack K500; HSPA6 ack K502    20
#> 14                     HSPA9 ack K600    20
#> 15                         LCK p Y192    20
#> 16                     MYH9 ack K1802    20
#> 17                       MYH9 ack K74    20
#> 18                       MYH9 p Y1408    20
#> 19                       MYH9 p Y1805    20
#> 20                    NSFL1C ack K172    20
#> 21                        PKP4 p Y443    20
#> 22                        PKP4 p Y465    20
#> 23                      PTPRH p Y1102    20
#> 24                     RBM14 ack K149    20
#> 
#> $`21`
#>                        PTMnames group
#> 1                   CTTN p S418    21
#> 2                   CTTN p Y199    21
#> 3                   CTTN p Y228    21
#> 4                   CTTN p Y334    21
#> 5                   CTTN p Y421    21
#> 6                   CTTN p Y446    21
#> 7  EEF1A1 p Y141; EEF1A2 p Y141    21
#> 8      EZR ubi K79; RDX ubi K79    21
#> 9                   FRS2 p Y306    21
#> 10              HNRNPF ubi K224    21
#> 11              HNRNPU ack K565    21
#> 12              HNRNPU ack K635    21
#> 13              HSPA1B ubi K524    21
#> 14                  MET p Y1234    21
#> 15                PARD3 p Y1080    21
#> 16                  PKP4 p T477    21
#> 17                 PKP4 p Y1115    21
#> 18                 PKP4 p Y1168    21
#> 19                  PKP4 p Y372    21
#> 20                  PKP4 p Y415    21
#> 21               PLEKHA6 p Y492    21
#> 22                PTPN11 p Y279    21
#> 23                PTPN11 p Y584    21
#> 24                 PTPN11 p Y62    21
#> 25               PTTG1IP p Y174    21
#> 26             TMEM106B ubi K14    21
#> 27                  TNK2 p Y827    21
#> 28                  TNK2 p Y859    21
#> 
#> $`22`
#>       PTMnames group
#> 1  CTTN p T401    22
#> 2 PDZD11 p Y36    22
#> 
#> $`23`
#>                                             PTMnames group
#> 1                                        CTTN p T440    23
#> 2                                    EEF1A1 ubi K395    23
#> 3                                    HNRNPF ubi K299    23
#> 4                   HSPA1B ubi K423; HSPA1L ubi K425    23
#> 5                                     HSPA9 ubi K121    23
#> 6                        MYH9 ubi K82; MYH10 ubi K86    23
#> 7                                      PSMC1 ubi K69    23
#> 8                                    PTPRK ubi K1360    23
#> 9                                      RBM4 ubi K223    23
#> 10                                    SF3B2 ubi K387    23
#> 11                                    SF3B2 ubi K394    23
#> 12 TUBA1B ack K304; TUBA4A ack K304; TUBA1A ack K304    23
#> 
#> $`24`
#>         PTMnames group
#> 1    CTTN p Y215    24
#> 2   PKP4 p T1174    24
#> 3 PLEKHA6 p Y471    24
#> 
#> $`25`
#>        PTMnames group
#> 1 DCBLD1 p Y540    25
#> 2  PARD3 p S728    25
#> 3 SPRED1 p Y211    25
#> 
#> $`26`
#>          PTMnames group
#> 1 EEF1A1 ubi K212    26
#> 2  MYH9 ack K1538    26
#> 
#> $`27`
#>          PTMnames group
#> 1 EEF1A1 ubi K273    27
#> 2 HNRNPU ubi K464    27
#> 3  SF3B2 ubi K529    27
#> 
#> $`28`
#>          PTMnames group
#> 1     EZR ack K83    28
#> 2   FKBP4 ubi K28    28
#> 3 HNRNPF ack K167    28
#> 4     PKP4 p T419    28
#> 
#> $`29`
#>                                                        PTMnames group
#> 1                      EZR ubi K237; MSN ubi K237; RDX ubi K237    29
#> 2                                                 MYH9 ubi K760    29
#> 3 MYH9 ubi K821; MYH10 ubi K828; MYH11 ubi K828; MYH14 ubi K845    29
#> 4                                               SLC9A1 ubi K690    29
#> 
#> $`30`
#>                         PTMnames group
#> 1       EZR ubi K35; MSN ubi K35    30
#> 2                 HNRNPF ubi K98    30
#> 3                HNRNPU ack K464    30
#> 4                HNRNPU ubi K265    30
#> 5                HNRNPU ubi K635    30
#> 6                HSPA1B ubi K325    30
#> 7                HSPA1B ubi K550    30
#> 8                  MET ubi K1318    30
#> 9                  MYH9 ubi K186    30
#> 10 MYH9 ubi K576; MYH10 ubi K583    30
#> 11                 MYH9 ubi K850    30
#> 12               PI4K2A ubi K268    30
#> 13                PSMC1 ubi K237    30
#> 14                PSMC1 ubi K396    30
#> 15                 PSMC1 ubi K91    30
#> 16                 SF3B2 ack K10    30
#> 17               SLC12A4 ubi K97    30
#> 18               SLC9A1 ubi K767    30
#> 19              SUPT16H ack K904    30
#> 20              SUPT16H ubi K596    30
#> 21              SUPT16H ubi K904    30
#> 
#> $`31`
#>        PTMnames group
#> 1 HNRNPF p Y253    31
#> 2  MERTK p Y929    31
#> 3   MET p Y1365    31
#> 
#> $`32`
#>                           PTMnames group
#> 1                  HNRNPF ubi K167    32
#> 2                  HSPA1B ubi K628    32
#> 3 TUBA1B ubi K352; TUBA4A ubi K352    32
#> 
#> $`33`
#>         PTMnames group
#> 1 HNRNPH2 p Y276    33
#> 2  PHLDB2 p Y162    33
#> 3 SEC16A p Y1380    33
#> 
#> $`34`
#>          PTMnames group
#> 1 HSPA1B ack K246    34
#> 2   PARD3 p Y1310    34
#> 3     PKP4 p Y224    34
#> 4    PTPRK p S856    34
#> 5  SEC16A p Y1199    34
#> 6    SF3B2 p Y806    34
#> 7     SGMS2 p Y56    34
#> 8     TJP3 p Y364    34
#> 9   ZNF185 p Y408    34
#> 
#> $`35`
#>          PTMnames group
#> 1 HSPA1B ubi K539    35
#> 2   MYH9 ack K651    35
#> 3 NSFL1C ubi K124    35
#> 4     PSMC1 p Y71    35
#> 5  PSMC1 ubi K258    35
#> 6  SCRIB ubi K105    35
#> 
#> $`36`
#>         PTMnames group
#> 1   MERTK p Y549    36
#> 2 PLEKHA6 p S478    36
#> 
#> $`37`
#>         PTMnames group
#> 1     MET p S990    37
#> 2    PKP4 p S281    37
#> 3    PKP4 p Y390    37
#> 4    PKP4 p Y482    37
#> 5 PLEKHA6 p Y415    37
#> 
#> $`38`
#>      PTMnames group
#> 1 MET p Y1349    38
#> 2 MET p Y1356    38
#> 
#> $`39`
#>                         PTMnames group
#> 1                  MET ubi K1161    39
#> 2                   PARD3 p Y933    39
#> 3 PKP4 ubi K518; CTNND2 ubi K540    39
#> 4                  SPRED1 p Y294    39
#> 
#> $`40`
#>         PTMnames group
#> 1  MYH9 ack K545    40
#> 2 PLEKHA6 p Y729    40
#> 3  PTPN11 p Y515    40
#> 
#> $`41`
#>        PTMnames group
#> 1  ORAI1 p Y300    41
#> 2 PIK3R2 p Y464    41
#> 
#> $`42`
#>                                                             PTMnames group
#> 1                                                      PARD3 p Y1127    42
#> 2 TUBA1B ack K311; TUBA4A ack K311; TUBA1A ack K311; TUBA1C ack K311    42
#> 
#> $`43`
#>        PTMnames group
#> 1   PSMC1 p Y25    43
#> 2 PTPN11 p S580    43
#> 
#> $`44`
#>                       PTMnames group
#> 1                  TJP3 p Y361    44
#> 2 ZDHHC5 p Y711; ZDHHC8 p Y761    44
#> 
#> $`45`
#>      PTMnames group
#> 1 TNK2 p Y284    45
#> 
#> $`46`
#>                                                                   PTMnames
#> 1 TUBA1B p Y357; TUBA4A p Y357; TUBA1A p Y357; TUBA1C p Y357; TUBA8 p Y357
#>   group
#> 1    46
#> 
#> 
#> $SED
#> $`1`
#>           PTMnames group
#> 1    ABLIM1 p Y357     1
#> 2    ABLIM1 p Y373     1
#> 3    DCBLD1 p Y589     1
#> 4    DCBLD1 p Y600     1
#> 5  HSPA1B ubi K126     1
#> 6      MET p Y1003     1
#> 7    PIK3R2 p Y460     1
#> 8     PKP4 p Y1156     1
#> 9     PSMC1 p Y439     1
#> 10    USP15 p Y263     1
#> 
#> $`2`
#>                                                         PTMnames group
#> 1                                                  ABLIM1 p Y383     2
#> 2                                                  ABLIM1 p Y410     2
#> 3                                                  DCBLD1 p Y540     2
#> 4                       EZR ubi K237; MSN ubi K237; RDX ubi K237     2
#> 5                                                  MET ubi K1232     2
#> 6                                                  MYH9 ubi K299     2
#> 7                                                  MYH9 ubi K760     2
#> 8  MYH9 ubi K821; MYH10 ubi K828; MYH11 ubi K828; MYH14 ubi K845     2
#> 9                                                 SEC16A p Y2193     2
#> 10                                               SLC9A1 ubi K690     2
#> 11                                                 ZDHHC5 p Y497     2
#> 
#> $`3`
#>          PTMnames group
#> 1   ABLIM1 p Y406     3
#> 2 HNRNPU ack K343     3
#> 
#> $`4`
#>        PTMnames group
#> 1 ABLIM1 p Y461     4
#> 2 HNRNPF p Y266     4
#> 3 PHLDB2 p Y301     4
#> 4  PKP4 p Y1143     4
#> 
#> $`5`
#>                         PTMnames group
#> 1                  ABLIM1 p Y688     5
#> 2                ABLIM1 ubi K275     5
#> 3                EEF1A1 ubi K395     5
#> 4       EZR ubi K35; MSN ubi K35     5
#> 5                    EZR ubi K60     5
#> 6                 HNRNPF ubi K98     5
#> 7                HNRNPU ubi K352     5
#> 8                HNRNPU ubi K433     5
#> 9                HNRNPU ubi K635     5
#> 10               HSPA1B ubi K325     5
#> 11               HSPA1B ubi K550     5
#> 12                HSPA1B ubi K56     5
#> 13               HSPA1B ubi K597     5
#> 14                 MYH9 ubi K102     5
#> 15                  MYH9 ubi K14     5
#> 16                 MYH9 ubi K186     5
#> 17                 MYH9 ubi K373     5
#> 18 MYH9 ubi K576; MYH10 ubi K583     5
#> 19               PI4K2A ubi K268     5
#> 20                PSMC1 ubi K237     5
#> 21                PSMC1 ubi K293     5
#> 22                 PSMC1 ubi K69     5
#> 23                 RBM4 ubi K223     5
#> 24                SF3B2 ubi K387     5
#> 25                SF3B2 ubi K394     5
#> 26               SLC12A4 ubi K97     5
#> 27              SLC12A4 ubi K979     5
#> 28              SLC12A4 ubi K988     5
#> 29               SLC9A1 ubi K612     5
#> 30               SLC9A1 ubi K625     5
#> 31               SLC9A1 ubi K767     5
#> 32               SPRED1 ubi K284     5
#> 33              SUPT16H ack K904     5
#> 34              SUPT16H ubi K596     5
#> 35              SUPT16H ubi K904     5
#> 
#> $`6`
#>                                                             PTMnames group
#> 1                                                      ABLIM1 ubi K8     6
#> 2                                                       ATP5PO p Y35     6
#> 3                                   CTNNA2 ack K913; CTNNA1 ack K866     6
#> 4                                                         CTTN p Y84     6
#> 5                                                      DCBLD1 p Y578     6
#> 6                                                    EEF1A1 ack K395     6
#> 7                                                     FKBP4 ack K354     6
#> 8                                                        FRS2 p Y392     6
#> 9                                                      HNRNPU p Y257     6
#> 10                                                     HNRNPU p Y260     6
#> 11                                                   HSPA1B ack K348     6
#> 12 HSPA1B p Y41; HSPA8 p Y41; HSPA6 p Y43; HSPA1L p Y43; HSPA2 p Y42     6
#> 13                                                      MERTK p Y549     6
#> 14                                                       MYH9 ack K8     6
#> 15                                                         OAT p Y69     6
#> 16                                                      PARD3 p Y388     6
#> 17                                                       PKP4 p S406     6
#> 18                                                    PLEKHA6 p S472     6
#> 19                                                    PLEKHA6 p S478     6
#> 20                                                      PTPRH p Y850     6
#> 21                                                  PTTG1IP ack K169     6
#> 22                                                      RBM14 p Y249     6
#> 23                                                     SEC16A p Y489     6
#> 
#> $`7`
#>                                                                            PTMnames
#> 1                                                                    ACOX1 ack K437
#> 2                                                                       CTTN p T440
#> 3                                                  EEF1A1 ubi K146; EEF1A2 ubi K146
#> 4                                                                   EEF1A1 ubi K212
#> 5                                                                      EZR ubi K162
#> 6                                                  HSPA1B ubi K423; HSPA1L ubi K425
#> 7                                  HSPA1B ubi K451; HSPA6 ubi K453; HSPA1L ubi K453
#> 8  HSPA1B ubi K507; HSPA8 ubi K507; HSPA6 ubi K509; HSPA1L ubi K509; HSPA2 ubi K510
#> 9                                                                     MET ack K1248
#> 10                                                                      MET p Y1349
#> 11                                                                      MET p Y1356
#> 12                                                                   MYH9 ack K1538
#> 13                                                                    MYH9 ack K651
#> 14                                                      MYH9 ubi K82; MYH10 ubi K86
#> 15                                                                SLC12A4 ubi K1010
#> 16                                                                  SLC38A2 ubi K38
#> 17               TUBA1B ubi K163; TUBA4A ubi K163; TUBA1A ubi K163; TUBA1C ubi K163
#>    group
#> 1      7
#> 2      7
#> 3      7
#> 4      7
#> 5      7
#> 6      7
#> 7      7
#> 8      7
#> 9      7
#> 10     7
#> 11     7
#> 12     7
#> 13     7
#> 14     7
#> 15     7
#> 16     7
#> 17     7
#> 
#> $`8`
#>                           PTMnames group
#> 1                     ACOX1 p Y629     8
#> 2                     ACTR5 p Y564     8
#> 3                     ARAP2 p Y334     8
#> 4                    CTTN ack K161     8
#> 5                    CTTN ack K171     8
#> 6         DNM2 p Y125; DNM3 p Y125     8
#> 7   EEF1A1 ack K41; EEF1A2 ack K41     8
#> 8                      EMC7 p S114     8
#> 9                      EMC7 p T113     8
#> 10                       EZR p Y85     8
#> 11                  HNRNPH2 p Y306     8
#> 12                 HNRNPU ack K265     8
#> 13 HSPA1B ack K319; HSPA6 ack K321     8
#> 14                    HSPA9 p Y161     8
#> 15                      LCK p Y505     8
#> 16                    MYH9 ack K47     8
#> 17   MYH9 ack K682; MYH10 ack K689     8
#> 18                   MYO18A p Y700     8
#> 19                      NFS1 p Y80     8
#> 20                      OAT p Y126     8
#> 21                  OXCT1 ack K418     8
#> 22                  OXCT1 ack K473     8
#> 23                      PHB2 p Y77     8
#> 24                   PI4K2A p Y402     8
#> 25                   PTPN11 p Y519     8
#> 26                   PTPRH p Y1094     8
#> 27                 RASSF8 ubi K176     8
#> 28                     RMC1 p Y610     8
#> 29                  RNASEH2B p S21     8
#> 30                  RNASEH2B p Y23     8
#> 31                  RPRD2 ack K671     8
#> 32                   SEC16A p Y991     8
#> 33                  SF3B2 ack K275     8
#> 34                  SUPT16H p Y535     8
#> 
#> $`9`
#>                                                                         PTMnames
#> 1                                                                   AGFG1 p Y327
#> 2                                                                     APP p T761
#> 3                                                                     ATG3 p Y18
#> 4                                                                ATP6V0D1 p Y347
#> 5                                                                    CTTN p T401
#> 6                                                                EEF1A1 ack K408
#> 7                                                                    EZR ubi K83
#> 8                                                                    FRS2 p Y349
#> 9                                                                  HNRNPF p Y253
#> 10                                                               HNRNPU ubi K524
#> 11                                                                    LCK p Y394
#> 12                                                                  MERTK p Y929
#> 13                                                                MERTK ubi K856
#> 14                                                                   MET p Y1235
#> 15                                                                   MET p Y1365
#> 16                                                                 MET ubi K1190
#> 17                                                                 MET ubi K1259
#> 18                                                                    MYH9 p Y11
#> 19                                                                     MYH9 p Y9
#> 20                                                                 PARD3 p Y1127
#> 21                                                                  PDZD11 p Y36
#> 22                                                                   PKP4 p Y157
#> 23                                                                PLEKHA6 p Y498
#> 24                                                                  PTPRK p Y858
#> 25                                                                  RBM14 p Y226
#> 26                                                                   SMAGP p Y95
#> 27                                                              SUPT16H ack K674
#> 28                                                                 SYAP1 ack K70
#> 29                                                                   SYAP1 p Y60
#> 30                                                                TMEM106B p Y50
#> 31                                                                TMEM192 p Y213
#> 32            TUBA1B ack K311; TUBA4A ack K311; TUBA1A ack K311; TUBA1C ack K311
#> 33      TUBA1B p Y103; TUBA4A p Y103; TUBA1A p Y103; TUBA1C p Y103; TUBA8 p Y103
#> 34                                   TUBA1B p Y272; TUBA4A p Y272; TUBA1A p Y272
#> 35                             TUBA1B ubi K112; TUBA1A ubi K112; TUBA1C ubi K112
#> 36                             TUBA1B ubi K326; TUBA1A ubi K326; TUBA1C ubi K326
#> 37                             TUBA1B ubi K336; TUBA1A ubi K336; TUBA1C ubi K336
#> 38                             TUBA1B ubi K338; TUBA1A ubi K338; TUBA1C ubi K338
#> 39                                              TUBA1B ubi K370; TUBA4A ubi K370
#> 40                                TUBA1B ubi K60; TUBA1A ubi K60; TUBA1C ubi K60
#> 41 TUBA1B ubi K96; TUBA4A ubi K96; TUBA1A ubi K96; TUBA1C ubi K96; TUBA8 ubi K96
#> 42                                                                   WEE1 p S139
#> 43                                                                   WEE1 p Y132
#> 44                                                                 ZDHHC5 p S529
#> 45                                                                 ZDHHC5 p Y533
#>    group
#> 1      9
#> 2      9
#> 3      9
#> 4      9
#> 5      9
#> 6      9
#> 7      9
#> 8      9
#> 9      9
#> 10     9
#> 11     9
#> 12     9
#> 13     9
#> 14     9
#> 15     9
#> 16     9
#> 17     9
#> 18     9
#> 19     9
#> 20     9
#> 21     9
#> 22     9
#> 23     9
#> 24     9
#> 25     9
#> 26     9
#> 27     9
#> 28     9
#> 29     9
#> 30     9
#> 31     9
#> 32     9
#> 33     9
#> 34     9
#> 35     9
#> 36     9
#> 37     9
#> 38     9
#> 39     9
#> 40     9
#> 41     9
#> 42     9
#> 43     9
#> 44     9
#> 45     9
#> 
#> $`10`
#>                                                                    PTMnames
#> 1                                                              APH1A p Y256
#> 2                                                            CTNNAL1 p Y534
#> 3                                                            CTNNAL1 p Y536
#> 4                                                               CTTN p Y215
#> 5                                                             HNRNPF p Y210
#> 6                                                              LARP1 p Y361
#> 7                                                              PKP4 p T1174
#> 8                                                            PLEKHA6 p Y471
#> 9                                                               RBM4 p Y194
#> 10                                                            SLC38A2 p Y28
#> 11                                                              TJP3 p Y361
#> 12                                                           TMEM106B p Y18
#> 13                                                              TNK2 p Y860
#> 14 TUBA1B p Y357; TUBA4A p Y357; TUBA1A p Y357; TUBA1C p Y357; TUBA8 p Y357
#> 15                                                            ZDHHC5 p Y630
#> 16                                             ZDHHC5 p Y711; ZDHHC8 p Y761
#>    group
#> 1     10
#> 2     10
#> 3     10
#> 4     10
#> 5     10
#> 6     10
#> 7     10
#> 8     10
#> 9     10
#> 10    10
#> 11    10
#> 12    10
#> 13    10
#> 14    10
#> 15    10
#> 16    10
#> 
#> $`11`
#>                                             PTMnames group
#> 1                                      APH1A ubi K95    11
#> 2                                        CTTN p S417    11
#> 3                                      CTTN ubi K181    11
#> 4                                      CTTN ubi K193    11
#> 5                                      CTTN ubi K272    11
#> 6                                      DCBLD1 p S619    11
#> 7                                       EZR ubi K450    11
#> 8                                       EZR ubi K458    11
#> 9                                     MYH9 ack K1793    11
#> 10                                    MYH9 ubi K1415    11
#> 11                                     PIK3R2 p Y505    11
#> 12                                       PKP4 p S273    11
#> 13                                       PKP4 p Y306    11
#> 14                                     PTPN11 p T547    11
#> 15                                      RBM14 p Y645    11
#> 16                                    SEC16A p Y1031    11
#> 17 TUBA1B ubi K163; TUBA4A ubi K163; TUBA1C ubi K163    11
#> 18 TUBA1B ubi K164; TUBA4A ubi K164; TUBA1C ubi K164    11
#> 19 TUBA1B ubi K394; TUBA4A ubi K394; TUBA1C ubi K394    11
#> 20 TUBA1B ubi K401; TUBA4A ubi K401; TUBA1C ubi K401    11
#> 
#> $`12`
#>                                                            PTMnames group
#> 1                                                     APH1A ubi K96    12
#> 2                                                    ATP5PO ack K60    12
#> 3                                                     CTTN ack K198    12
#> 4                                                     CTTN ubi K230    12
#> 5                                                   EEF1A1 ubi K179    12
#> 6                                                   EEF1A1 ubi K392    12
#> 7                                                      EZR ubi K143    12
#> 8                                                      EZR ubi K209    12
#> 9                                                      EZR ubi K211    12
#> 10                                                     EZR ubi K344    12
#> 11                                         EZR ubi K72; RDX ubi K72    12
#> 12 HSPA1B ubi K507; HSPA8 ubi K507; HSPA6 ubi K509; HSPA1L ubi K509    12
#> 13                              LCK p Y394; FYN p Y420; YES1 p Y426    12
#> 14                                                   MYH9 ack K1525    12
#> 15                                                   MYH9 ack K1527    12
#> 16                                                   MYH9 ubi K1638    12
#> 17                    MYH9 ubi K821; MYH10 ubi K828; MYH14 ubi K845    12
#> 18                                                  NSFL1C ubi K127    12
#> 19                                                  PI4K2A ubi K240    12
#> 20                                                    PKP4 ubi K518    12
#> 21                                                     PTPRK p Y916    12
#> 22                                                    SEC16A p Y813    12
#> 23                                                   SF3B2 ubi K280    12
#> 24                                                   SF3B2 ubi K543    12
#> 25                      TUBA1B p Y103; TUBA4A p Y103; TUBA1C p Y103    12
#> 26                                 TUBA1B ubi K336; TUBA1C ubi K336    12
#> 27                                 TUBA1B ubi K338; TUBA1C ubi K338    12
#> 28                TUBA1B ubi K370; TUBA4A ubi K370; TUBA1C ubi K370    12
#> 29                   TUBA1B ubi K96; TUBA4A ubi K96; TUBA1C ubi K96    12
#> 30                                                    WEE1 ack K596    12
#> 
#> $`13`
#>          PTMnames group
#> 1      APP p Y757    13
#> 2 EEF1A1 ack K392    13
#> 3     PHB2 p Y248    13
#> 
#> $`14`
#>                              PTMnames group
#> 1                        APP ubi K751    14
#> 2                        ARAP2 p Y473    14
#> 3                       CTTN ack K107    14
#> 4                       CTTN ack K124    14
#> 5                       CTTN ack K235    14
#> 6                       CTTN ack K272    14
#> 7                       CTTN ack K309    14
#> 8                        CTTN ack K87    14
#> 9                         CTTN p S156    14
#> 10                        CTTN p S418    14
#> 11                        CTTN p S447    14
#> 12                        CTTN p Y104    14
#> 13                        CTTN p Y141    14
#> 14                        CTTN p Y154    14
#> 15                        CTTN p Y162    14
#> 16                        CTTN p Y178    14
#> 17                        CTTN p Y199    14
#> 18                        CTTN p Y228    14
#> 19                        CTTN p Y265    14
#> 20                        CTTN p Y334    14
#> 21                        CTTN p Y421    14
#> 22                        CTTN p Y446    14
#> 23                        CTTN p Y453    14
#> 24                    EEF1A1 ack K172    14
#> 25                    EEF1A1 ack K179    14
#> 26   EEF1A1 ack K255; EEF1A2 ack K255    14
#> 27     EEF1A1 ack K44; EEF1A2 ack K44    14
#> 28       EEF1A1 p Y141; EEF1A2 p Y141    14
#> 29                      EEF1A1 p Y177    14
#> 30         EEF1A1 p Y29; EEF1A2 p Y29    14
#> 31                    EEF1A1 ubi K172    14
#> 32                    EEF1A1 ubi K180    14
#> 33                    EEF1A1 ubi K439    14
#> 34     EEF1A1 ubi K44; EEF1A2 ubi K44    14
#> 35 EZR p Y270; MSN p Y270; RDX p Y270    14
#> 36                       EZR ubi K139    14
#> 37           EZR ubi K79; RDX ubi K79    14
#> 38                        FRS2 p Y306    14
#> 39                    HNRNPF ubi K224    14
#> 40                    HNRNPU ack K565    14
#> 41                    HNRNPU ack K635    14
#> 42                    HNRNPU ack K814    14
#> 43    HSPA1B ack K500; HSPA6 ack K502    14
#> 44                    HSPA1B ubi K524    14
#> 45                     HSPA9 ack K135    14
#> 46                     HSPA9 ack K600    14
#> 47                         LCK p Y192    14
#> 48                        MET p S1236    14
#> 49                        MET p Y1234    14
#> 50                       MET ubi K962    14
#> 51                     MYH9 ack K1802    14
#> 52                       MYH9 ack K74    14
#> 53                       MYH9 p Y1408    14
#> 54                       MYH9 p Y1805    14
#> 55                        MYH9 p Y754    14
#> 56                      MYH9 ubi K651    14
#> 57                      MYH9 ubi K833    14
#> 58                      MYH9 ubi K856    14
#> 59                      MYH9 ubi K860    14
#> 60                    NSFL1C ack K172    14
#> 61                    NSFL1C ubi K172    14
#> 62                      PARD3 p Y1080    14
#> 63                       PARD3 p Y489    14
#> 64                       PARD3 p Y719    14
#> 65                        PKP4 p T477    14
#> 66                       PKP4 p Y1094    14
#> 67                       PKP4 p Y1115    14
#> 68                       PKP4 p Y1168    14
#> 69                       PKP4 p Y1172    14
#> 70                        PKP4 p Y275    14
#> 71                        PKP4 p Y372    14
#> 72                        PKP4 p Y415    14
#> 73                        PKP4 p Y420    14
#> 74                        PKP4 p Y421    14
#> 75                        PKP4 p Y425    14
#> 76                        PKP4 p Y443    14
#> 77                        PKP4 p Y465    14
#> 78                        PKP4 p Y494    14
#> 79                     PLEKHA6 p Y404    14
#> 80                     PLEKHA6 p Y492    14
#> 81                      PTPN11 p Y279    14
#> 82                      PTPN11 p Y546    14
#> 83                      PTPN11 p Y584    14
#> 84                       PTPN11 p Y62    14
#> 85                      PTPRH p Y1102    14
#> 86                     PTTG1IP p Y174    14
#> 87                     RBM14 ack K149    14
#> 88                     RBM14 ack K164    14
#> 89                      SLC38A2 p Y41    14
#> 90                    SLC38A2 ubi K59    14
#> 91                   TMEM106B ubi K14    14
#> 92                   TMEM192 ubi K254    14
#> 93                        TNK2 p Y284    14
#> 94                        TNK2 p Y827    14
#> 95                        TNK2 p Y859    14
#> 96                      ZNF185 p Y581    14
#> 
#> $`15`
#>          PTMnames group
#> 1    APP ubi K763    15
#> 2 SLC9A1 ubi K583    15
#> 
#> $`16`
#>         PTMnames group
#> 1    ARAP2 p Y77    16
#> 2   NSFL1C p Y95    16
#> 3   ORAI1 p Y300    16
#> 4   PARD3 p S715    16
#> 5  PIK3R2 p Y464    16
#> 6   PKP4 p Y1132    16
#> 7    PKP4 p Y369    16
#> 8   PTPRK p Y849    16
#> 9   SF3B2 p Y806    16
#> 10 SPRED1 p Y292    16
#> 11  USP15 p Y274    16
#> 
#> $`17`
#>          PTMnames group
#> 1 ATP5PO ack K158    17
#> 
#> $`18`
#>          PTMnames group
#> 1 ATP5PO ack K162    18
#> 2     PDZD11 p Y7    18
#> 
#> $`19`
#>                                       PTMnames group
#> 1                              ATP5PO ack K192    19
#> 2                 CTNNA2 p Y417; CTNNA1 p Y419    19
#> 3                                 FKBP4 p Y411    19
#> 4                                NSFL1C p Y167    19
#> 5                                  PKP4 p Y470    19
#> 6                                  PKP4 p Y478    19
#> 7                                 PRRC2A p Y17    19
#> 8                                PTPN11 p S595    19
#> 9                               PTTG1IP p Y165    19
#> 10                               RASSF8 p Y418    19
#> 11                                RBM14 p Y648    19
#> 12                               SCRIB p Y1268    19
#> 13                               SCRIB p Y1360    19
#> 14                              SEC16A p Y1202    19
#> 15                              SEC16A p Y1209    19
#> 16                              SEC16A p Y1291    19
#> 17                                 SGMS2 p Y59    19
#> 18                               SLC12A4 p Y17    19
#> 19                               SLC9A1 p S693    19
#> 20                               SLC9A1 p Y683    19
#> 21 TUBA1B p Y282; TUBA4A p Y282; TUBA1A p Y282    19
#> 22                               ZNF185 p Y597    19
#> 
#> $`20`
#>                                                                             PTMnames
#> 1                                                                    ATP5PO ack K199
#> 2                                                                    HNRNPU ack K352
#> 3                                                                      HNRNPU p Y473
#> 4                                                                        MET p Y1230
#> 5                                                                     MYH9 ack K1387
#> 6                      MYH9 ack K821; MYH10 ack K828; MYH11 ack K828; MYH14 ack K845
#> 7                                                                        PKP4 p T412
#> 8                                                                    PLEKHA6 p Y1044
#> 9 TUBA1B ack K370; TUBA4A ack K370; TUBA1A ack K370; TUBA1C ack K370; TUBA8 ack K370
#>   group
#> 1    20
#> 2    20
#> 3    20
#> 4    20
#> 5    20
#> 6    20
#> 7    20
#> 8    20
#> 9    20
#> 
#> $`21`
#>                        PTMnames group
#> 1             ATP6V0D1 ubi K343    21
#> 2               EEF1A1 ubi K408    21
#> 3                 HNRNPU p S271    21
#> 4 MYH9 ubi K682; MYH10 ubi K689    21
#> 5               PI4K2A ubi K336    21
#> 
#> $`22`
#>                                                             PTMnames group
#> 1                                                     CTNNAL1 p S538    22
#> 2                                   EEF1A1 ack K146; EEF1A2 ack K146    22
#> 3                                                      PHLDB2 p Y567    22
#> 4 TUBA1B ubi K311; TUBA4A ubi K311; TUBA1A ubi K311; TUBA1C ubi K311    22
#> 
#> $`23`
#>          PTMnames group
#> 1     CTTN p S405    23
#> 2 HSPA1B ack K246    23
#> 3   PARD3 p Y1310    23
#> 4     PKP4 p Y224    23
#> 5    PTPRK p S856    23
#> 6  SEC16A p Y1199    23
#> 7     SGMS2 p Y56    23
#> 8     TJP3 p Y364    23
#> 9   ZNF185 p Y408    23
#> 
#> $`24`
#>         PTMnames group
#> 1    CTTN p Y289    24
#> 2    EZR ack K60    24
#> 3   SCRIB p Y834    24
#> 4 SCRIB ubi K467    24
#> 5  SPRED1 p Y187    24
#> 
#> $`25`
#>                           PTMnames group
#> 1                      DNM2 p Y231    25
#> 2 HSPA1B ubi K512; HSPA1L ubi K514    25
#> 
#> $`26`
#>            PTMnames group
#> 1   EEF1A1 ack K439    26
#> 2   HNRNPH2 ubi K35    26
#> 3    MYH9 ack K1828    26
#> 4     MYH9 ack K882    26
#> 5     PIK3R2 p Y577    26
#> 6 RNASEH2B ack K284    26
#> 
#> $`27`
#>                              PTMnames group
#> 1        EEF1A1 p T142; EEF1A2 p T142    27
#> 2 LCK p T395; FYN p T421; YES1 p T427    27
#> 3                       PARD3 p Y1177    27
#> 4                      PRRC2A ack K35    27
#> 
#> $`28`
#>                         PTMnames group
#> 1                EEF1A1 ubi K273    28
#> 2                HNRNPU ubi K186    28
#> 3                HNRNPU ubi K464    28
#> 4                  MET ubi K1161    28
#> 5                   PARD3 p Y933    28
#> 6 PKP4 ubi K518; CTNND2 ubi K540    28
#> 7               PTTG1IP ubi K164    28
#> 8                 SF3B2 ubi K529    28
#> 9                  SPRED1 p Y294    28
#> 
#> $`29`
#>          PTMnames group
#> 1     EZR ack K83    29
#> 2   FKBP4 ubi K28    29
#> 3 HNRNPF ack K167    29
#> 4     PKP4 p T419    29
#> 
#> $`30`
#>         PTMnames group
#> 1 HNRNPF ack K98    30
#> 2 HSPA9 ack K159    30
#> 3     MET p S990    30
#> 4    PKP4 p Y482    30
#> 5 PLEKHA6 p Y415    30
#> 6  PTPN11 p S580    30
#> 
#> $`31`
#>                                            PTMnames group
#> 1                                   HNRNPF ubi K167    31
#> 2                                   HSPA1B ubi K628    31
#> 3 TUBA1B ack K280; TUBA4A ack K280; TUBA1A ack K280    31
#> 4 TUBA1B ack K336; TUBA1A ack K336; TUBA1C ack K336    31
#> 5                  TUBA1B ubi K352; TUBA4A ubi K352    31
#> 
#> $`32`
#>                                            PTMnames group
#> 1                                   HNRNPF ubi K299    32
#> 2                                    HSPA9 ubi K121    32
#> 3                                    MYH9 ack K1492    32
#> 4                                   PTPRK ubi K1360    32
#> 5 TUBA1B ack K304; TUBA4A ack K304; TUBA1A ack K304    32
#> 
#> $`33`
#>         PTMnames group
#> 1 HNRNPH2 p Y276    33
#> 2  PHLDB2 p Y162    33
#> 3 SEC16A p Y1380    33
#> 
#> $`34`
#>          PTMnames group
#> 1 HNRNPU ack K464    34
#> 2   MET ubi K1318    34
#> 3  PSMC1 ubi K396    34
#> 
#> $`35`
#>          PTMnames group
#> 1 HNRNPU ubi K265    35
#> 2   MYH9 ubi K850    35
#> 3   PSMC1 ubi K91    35
#> 4   SF3B2 ack K10    35
#> 
#> $`36`
#>          PTMnames group
#> 1 HSPA1B ubi K539    36
#> 2 NSFL1C ubi K124    36
#> 3     PSMC1 p Y71    36
#> 4  PSMC1 ubi K258    36
#> 5  SCRIB ubi K105    36
#> 
#> $`37`
#>                        PTMnames group
#> 1                HSPA9 ack K300    37
#> 2                MYH9 ack K1014    37
#> 3                 MYH9 ack K299    37
#> 4                 MYH9 ack K545    37
#> 5 MYH9 ack K565; MYH10 ack K572    37
#> 6                 MYH9 ack K613    37
#> 7                PSMC1 ack K258    37
#> 
#> $`38`
#>        PTMnames group
#> 1 MYH9 ack K355    38
#> 
#> $`39`
#>       PTMnames group
#> 1 PARD3 p S717    39
#> 2  TNK2 p T857    39
#> 
#> $`40`
#>         PTMnames group
#> 1   PARD3 p S728    40
#> 2 PSMC1 ubi K430    40
#> 3  SPRED1 p Y211    40
#> 
#> $`41`
#>      PTMnames group
#> 1 PKP4 p S281    41
#> 2 PKP4 p Y390    41
#> 
#> $`42`
#>      PTMnames group
#> 1 PKP4 p Y114    42
#> 
#> $`43`
#>         PTMnames group
#> 1 PLEKHA6 p Y729    43
#> 2  PTPN11 p Y515    43
#> 
#> $`44`
#>      PTMnames group
#> 1 PSMC1 p Y25    44
#> 
#> $`45`
#>                                            PTMnames group
#> 1                                  PTTG1IP ubi K169    45
#> 2                                   SLC38A2 ubi K33    45
#> 3 TUBA1B ubi K304; TUBA4A ubi K304; TUBA1A ubi K304    45
#> 
#> $`46`
#>                                      PTMnames group
#> 1                                 TNK2 p T517    46
#> 2            TUBA1B ack K336; TUBA1C ack K336    46
#> 3 TUBA1B p Y312; TUBA4A p Y312; TUBA1C p Y312    46
#> 
#> 
```
