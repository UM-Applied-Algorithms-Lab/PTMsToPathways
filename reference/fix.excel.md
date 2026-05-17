# Correct Excel-Converted Gene Symbols

Replaces gene symbols that are commonly converted into date-like strings
by spreadsheet software with their expected HUGO symbols.

## Usage

``` r
fix.excel(cell)
```

## Arguments

- cell:

  A character string containing one or more gene symbols, separated by
  `"; "`.

## Value

A character string with corrected gene symbols.

## Examples

``` r
fix.excel("1-Sep; CDC2")
#> Warning: argument 'pattern' has length > 1 and only the first element will be used
#> Warning: argument 'replacement' has length > 1 and only the first element will be used
#> [1] "1-Sep; CDK1"
```
