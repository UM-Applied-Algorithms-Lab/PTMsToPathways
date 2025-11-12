# STRINGdb Edges example

List of edges between genes in dataset.

## Usage

``` r
ex.stringdb.edges
```

## Format

Dataframe of 205 rows and 4 columns:

- Gene.1:

  First gene interacting

- Gene.2:

  Second gene interacting

- Interaction:

  The type of interaction

- STRINGdb.combined_score:

  The weight of the interaction between these two genes as described by
  STRINGdb

## Source

"created by GetSTRINGdb"

## Examples

``` r
head(ex.stringdb.edges)
#>     Gene.1 Gene.2              Interaction STRINGdb.combined_score
#> 1     MYH9 PIK3R2 experimental_transferred                     216
#> 11    MYH9 ABLIM1             experimental                     167
#> 25   OXCT1 ZDHHC5             experimental                     292
#> 27 SUPT16H ZDHHC5             experimental                     292
#> 33   USP15 ZDHHC5             experimental                     292
#> 35    MYH9 ATP5PO             experimental                     192
```
