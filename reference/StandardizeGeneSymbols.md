# Standardize Gene Symbols

Standardize a vector of gene symbols to STRING preferred names for Homo
sapiens. This is intended as a one-time workflow helper so downstream
network retrieval functions can use a consistent symbol vocabulary
across STRING, GeneMANIA, and kinase-substrate resources.

## Usage

``` r
StandardizeGeneSymbols(
  genes,
  species = 9606,
  string.version = "12.0",
  keep.unmapped = TRUE
)
```

## Arguments

- genes:

  Character vector of gene symbols.

- species:

  NCBI taxonomy ID. Default is 9606 (Homo sapiens).

- string.version:

  STRING version. Default is "12.0".

- keep.unmapped:

  Logical. If TRUE, unmapped input symbols are retained as-is in the
  `standard_symbol` column. Default is TRUE.

## Value

A data frame with columns:

- input_symbol:

  Original supplied symbol

- STRING_id:

  Mapped STRING protein identifier, if available

- standard_symbol:

  STRING preferred_name when mapped; otherwise input symbol if
  keep.unmapped = TRUE

- mapped:

  Logical indicating whether a STRING mapping was found

## Examples

``` r
# sym.map <- StandardizeGeneSymbols(c("EPRS", "QARS", "DDR1", "DDR2"))
# unique(sym.map$standard_symbol)
```
