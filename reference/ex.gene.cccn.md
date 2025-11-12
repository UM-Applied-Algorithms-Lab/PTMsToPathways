# Gene CoCluster Network example

A version of the PTM cccn that works at the Gene level instead of the
PTm level

## Usage

``` r
ex.gene.cccn
```

## Format

Matrix of 74 rows and columns

- rows:

  Genes in PTM cccn

- columns:

  Genes in PTM cccn

- values:

  Sum of submatrices whose PTMs are on said gene

## Source

"Made in MakeCorrelationNetwork"

## Examples

``` r
ex.gene.cccn[c(1,2) , c(1,2)]
#>          ABLIM1      MET
#> ABLIM1  0.00000 40.07949
#> MET    40.07949  0.00000
```
