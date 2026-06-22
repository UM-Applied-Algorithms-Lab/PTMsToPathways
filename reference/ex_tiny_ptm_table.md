# Tiny PTM Table Example

Post-translational modification data under certain environmental
conditions.

## Usage

``` r
ex_tiny_ptm_table
```

## Format

Dataframe of 125 rows and 7 columns:

- row:

  Number of PTMs

- columns:

  Names of drugs that were used on PTMs

- values:

  Expression as found by mass spectrometry

## Source

"Sub-data frame of the small PTM table"

## Examples

``` r
head(ex_tiny_ptm_table)
#>                           H3122SEPTM_pTyr.PR2 H3122SEPTM_pTyr.PR3
#> RNPS1 p Y205                           516230              653130
#> PTPN6 p Y536                            64515             1721900
#> EIF2S1 p Y147                              NA                  NA
#> ACTG1 p T297; ACTB p T297                  NA                  NA
#> RACK1 p T229                           699100                  NA
#> EML4 p Y453                           4855300             3970050
#>                           PC9SEPTM_pTyr.D1 PC9SEPTM_pTyr.D2 PC9SEPTM_pTyr.D3
#> RNPS1 p Y205                            NA               NA               NA
#> PTPN6 p Y536                       5200765          1196800          4165500
#> EIF2S1 p Y147                           NA               NA               NA
#> ACTG1 p T297; ACTB p T297               NA               NA               NA
#> RACK1 p T229                            NA               NA               NA
#> EML4 p Y453                             NA               NA               NA
#>                           PC9SEPTM_pTyr.E1 PC9SEPTM_pTyr.E2
#> RNPS1 p Y205                            NA               NA
#> PTPN6 p Y536                       3271350           787930
#> EIF2S1 p Y147                           NA               NA
#> ACTG1 p T297; ACTB p T297               NA               NA
#> RACK1 p T229                            NA               NA
#> EML4 p Y453                             NA               NA
```
