# Common Clusters

Clusters that contain PTMs that are found to cocluster in all 3 T-SNE
lists.

## Usage

``` r
ex_common_clusters
```

## Format

List of 140 lists:

- Cluster id:

  Common clusters between the three distance metrics

## Source

"Produced by MakeClusterList"

## Examples

``` r
ex_common_clusters[0:3]
#> $ConsensusCluster1
#> [1] "KRT7 p S37"                              
#> [2] "CALM3 p Y100; CALM2 p Y100; CALM1 p Y100"
#> [3] "ERP29 p Y66"                             
#> [4] "MYH9 p Y1408"                            
#> [5] "PTK2 p Y925"                             
#> [6] "TNK2 p Y827"                             
#> [7] "ITSN2 p Y553"                            
#> [8] "PRRC2C p Y1218"                          
#> 
#> $ConsensusCluster2
#> [1] "INPPL1 p S890" "GRB2 p T159"   "MAPK14 p T185" "DCBLD2 p Y597"
#> [5] "CNN2 p Y184"   "TJP2 p Y1179"  "DCTN4 p Y173" 
#> 
#> $ConsensusCluster3
#> [1] "KDM6A p S388"  "KDM6A p T387"  "EIF2S1 p Y150"
#> 
```
