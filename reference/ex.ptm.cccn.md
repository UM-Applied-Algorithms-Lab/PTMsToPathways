# Filtered Correlation Matrix example

A version of the Correlation Matrix filtered by coclustering PTMs

## Usage

``` r
ex.ptm.cccn
```

## Format

Matrix of 329 rows and columns

- rows:

  Select PTMs

- columns:

  Select PTMs

- values:

  Same as in Correlation Matrix

## Source

"Made in MakeCorrelationNetwork"

## Examples

``` r
ex.ptm.cccn[c(1,2) , c(1,2)]
#>               ABLIM1 p Y357 ABLIM1 p Y373
#> ABLIM1 p Y357            NA     0.8857143
#> ABLIM1 p Y373     0.8857143            NA
```
