# Merge Technical Replicate Values

Merges two numeric values from technical replicates by returning `NA`
when both are missing, returning the observed value when one is missing,
or returning their mean when both are present.

## Usage

``` r
merge2cols(colv1, colv2)
```

## Arguments

- colv1:

  A numeric value or vector from replicate 1.

- colv2:

  A numeric value or vector from replicate 2.

## Value

A numeric value/vector or `NA`.

## Examples

``` r
merge2cols(10, 14)
#> [1] 12
merge2cols(NA, 14)
#> [1] 14
merge2cols(c(NA, 2, 4), c(3, NA, 6))
#> [1] 3 2 5
```
