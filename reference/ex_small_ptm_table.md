# Small PTM Table Example

Post-translational modification data under certain environmental
conditions.

## Usage

``` r
ex_small_ptm_table
```

## Format

Dataframe of 908 rows and 18 columns:

- row:

  Number of PTMs

- columns:

  Names of drugs that were used on PTMs

- values:

  Expression as found by mass spectrometry

## Source

"An .rda version of phospho_cleaned_mapped.txt found in inst/extdata"

## Examples

``` r
head(ex_small_ptm_table)
#>               H3122SEPTM_pTyr.C1 H3122SEPTM_pTyr.C2 H3122SEPTM_pTyr.C3
#> KRT7 p S37                505710            1972760            1582330
#> KRT7 p S38                    NA                 NA                 NA
#> INPPL1 p S890                 NA                 NA                 NA
#> KDM6A p S388              225480                 NA                 NA
#> DIAPH1 p S373             226595             260590             236075
#> CTNND1 p S252             561060             697125             175040
#>               H3122SEPTM_pTyr.D1 H3122SEPTM_pTyr.D2 H3122SEPTM_pTyr.D3
#> KRT7 p S37                617875             684340            2006400
#> KRT7 p S38                    NA                 NA                 NA
#> INPPL1 p S890            3086800            2295300                 NA
#> KDM6A p S388              133700                 NA           31740000
#> DIAPH1 p S373                 NA             185460             132480
#> CTNND1 p S252                 NA                 NA                 NA
#>               H3122SEPTM_pTyr.PR1 H3122SEPTM_pTyr.PR2 H3122SEPTM_pTyr.PR3
#> KRT7 p S37                 272020              285820              314830
#> KRT7 p S38                     NA                  NA             4654900
#> INPPL1 p S890                  NA                  NA                  NA
#> KDM6A p S388             30006000                  NA                  NA
#> DIAPH1 p S373                  NA                  NA              159430
#> CTNND1 p S252              826240              258680              559430
#>               PC9SEPTM_pTyr.D1 PC9SEPTM_pTyr.D2 PC9SEPTM_pTyr.D3
#> KRT7 p S37             5704200          3142900          4132350
#> KRT7 p S38                  NA               NA               NA
#> INPPL1 p S890               NA               NA               NA
#> KDM6A p S388                NA               NA               NA
#> DIAPH1 p S373           852670           644585           530150
#> CTNND1 p S252           834805          1364815          1751695
#>               PC9SEPTM_pTyr.E1 PC9SEPTM_pTyr.E2 PC9SEPTM_pTyr.E3
#> KRT7 p S37             2225800          3866600          4090900
#> KRT7 p S38                  NA          1225600               NA
#> INPPL1 p S890               NA               NA               NA
#> KDM6A p S388                NA               NA               NA
#> DIAPH1 p S373           179835           580485           650985
#> CTNND1 p S252           911130           441044           793010
#>               PC9SEPTM_pTyr.PR1 PC9SEPTM_pTyr.PR2 PC9SEPTM_pTyr.PR3
#> KRT7 p S37              1407800           4495650                NA
#> KRT7 p S38              8201400                NA                NA
#> INPPL1 p S890                NA                NA                NA
#> KDM6A p S388                 NA                NA                NA
#> DIAPH1 p S373           1036280            344235            333835
#> CTNND1 p S252            674190            913525            298270
```
