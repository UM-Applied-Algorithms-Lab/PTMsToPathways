# STRINGdb Edges

List of edges between genes in dataset.

## Usage

``` r
ex_stringdb_edges
```

## Format

Dataframe of 8844 rows and 4 columns:

- source:

  First gene interacting

- target:

  Second gene interacting

- interaction:

  The type of interaction

- Weight:

  The weight of the interaction between these two genes as described by
  STRINGdb

## Source

"Produced by GetSTRINGdb.edges"

## Examples

``` r
head(ex_stringdb_edges)
#>      source target              interaction Weight
#> 21   MAPK13 MAPK12                 database   1128
#> 31   MAPK12  MAPK1                 database   1182
#> 35   GPRC5A   MYH9             experimental    164
#> 41     MISP   MYH9             experimental    148
#> 71     MYH9 PIK3R2 experimental_transferred    216
#> 75 BAIAP2L1   WASL             experimental    866
```
