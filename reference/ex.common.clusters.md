# List of Common Clusters Example

Clusters that contain PTMs that are found to cocluster in all 3 T-SNE
lists.

## Usage

``` r
ex.common.clusters
```

## Format

List of 40 lists:

- list:

  Common cluster between the three distance metrics

## Source

"Created in MakeCorrelationNetwork, FindCommonClusters using 3 T-SNE
lists"

## Examples

``` r
head(ex.common.clusters)
#> [[1]]
#> [1] "ABLIM1 p Y357" "ABLIM1 p Y373" "MET p Y1003"   "PKP4 p Y1156" 
#> 
#> [[2]]
#> [1] "ABLIM1 p Y383"  "ABLIM1 p Y410"  "MET ubi K1232"  "MYH9 ubi K299" 
#> [5] "SEC16A p Y2193" "ZDHHC5 p Y497" 
#> 
#> [[3]]
#> [1] "ABLIM1 p Y461" "HNRNPF p Y266" "PHLDB2 p Y301"
#> 
#> [[4]]
#> [1] "ABLIM1 p Y688"    "ABLIM1 ubi K275"  "EZR ubi K60"      "HNRNPU ubi K433" 
#> [5] "HSPA1B ubi K597"  "MYH9 ubi K373"    "PSMC1 ubi K293"   "SLC12A4 ubi K979"
#> 
#> [[5]]
#>  [1] "ABLIM1 ubi K8"                                                    
#>  [2] "ATP5PO p Y35"                                                     
#>  [3] "CTNNA2 ack K913; CTNNA1 ack K866"                                 
#>  [4] "CTTN p Y84"                                                       
#>  [5] "DCBLD1 p Y578"                                                    
#>  [6] "FRS2 p Y392"                                                      
#>  [7] "HNRNPU p Y257"                                                    
#>  [8] "HNRNPU p Y260"                                                    
#>  [9] "HSPA1B ack K348"                                                  
#> [10] "HSPA1B p Y41; HSPA8 p Y41; HSPA6 p Y43; HSPA1L p Y43; HSPA2 p Y42"
#> [11] "OAT p Y69"                                                        
#> [12] "PARD3 p Y388"                                                     
#> [13] "PKP4 p S406"                                                      
#> [14] "PLEKHA6 p S472"                                                   
#> [15] "PTPRH p Y850"                                                     
#> [16] "RBM14 p Y249"                                                     
#> [17] "SEC16A p Y489"                                                    
#> 
#> [[6]]
#>  [1] "ACOX1 p Y629"                    "ACTR5 p Y564"                   
#>  [3] "CTTN ack K161"                   "CTTN ack K171"                  
#>  [5] "DNM2 p Y125; DNM3 p Y125"        "EEF1A1 ack K41; EEF1A2 ack K41" 
#>  [7] "EMC7 p S114"                     "EMC7 p T113"                    
#>  [9] "EZR p Y85"                       "HNRNPH2 p Y306"                 
#> [11] "HNRNPU ack K265"                 "HSPA1B ack K319; HSPA6 ack K321"
#> [13] "HSPA9 p Y161"                    "LCK p Y505"                     
#> [15] "MYH9 ack K47"                    "MYO18A p Y700"                  
#> [17] "NFS1 p Y80"                      "OAT p Y126"                     
#> [19] "OXCT1 ack K418"                  "PHB2 p Y77"                     
#> [21] "PI4K2A p Y402"                   "PTPRH p Y1094"                  
#> [23] "RASSF8 ubi K176"                 "RMC1 p Y610"                    
#> [25] "RNASEH2B p S21"                  "RNASEH2B p Y23"                 
#> [27] "RPRD2 ack K671"                  "SF3B2 ack K275"                 
#> [29] "SUPT16H p Y535"                 
#> 
```
