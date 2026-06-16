# Map input nodes with a precomputed symbol map

Internal helper that converts a character vector of input node symbols
to standardized symbols using a data frame produced by
[`StandardizeGeneSymbols()`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/reference/StandardizeGeneSymbols.md).
Unmapped symbols are retained as originally supplied.

## Usage

``` r
.map_nodes_with_symbol_map(gene.cccn.nodes, symbol.map = NULL)
```

## Arguments

- gene.cccn.nodes:

  Character vector of node symbols.

- symbol.map:

  Optional data frame containing at least the columns `input_symbol` and
  `standard_symbol`, typically produced by
  [`StandardizeGeneSymbols()`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/reference/StandardizeGeneSymbols.md).
  If `NULL`, `gene.cccn.nodes` is returned unchanged.

## Value

Character vector of unique standardized node symbols.
