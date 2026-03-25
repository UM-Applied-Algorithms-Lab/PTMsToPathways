# Genemania Edges

Edges from gene_cccn_nodes that are also found within the Genemania
database

## Usage

``` r
ex_genemania_edges
```

## Format

Dataframe of 5 rows and 4 columns

- source:

  First gene interacting

- target:

  Second gene interacting

- interaction:

  The type of interaction

- Weight:

  The weight of the interaction between these two genes gotten from the
  Genemania database

## Source

"Produced by GetGeneMANIA.edges"

## Examples

``` r
head(ex_genemania_edges)
#>      source target           interaction     Weight
#> 28    EPHA2   ACP1               Pathway 0.28541145
#> 33    EPHA2   ACP1               Pathway 0.21714390
#> 34 ARHGAP35   ACP1               Pathway 0.46947600
#> 35 ARHGAP35  EPHA2               Pathway 0.15943560
#> 55    EPHA2   ACP1 Physical Interactions 0.08593688
```
