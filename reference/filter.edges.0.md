# Filter an edge file to edges between a specified set of nodes

Returns only edges where both endpoints are in `nodenames`.

## Usage

``` r
filter.edges.0(nodenames, edge.file)
```

## Arguments

- nodenames:

  Character vector of node names to retain.

- edge.file:

  A data frame edge list with node names in columns 1 and 2.

## Value

A data frame of filtered edges, or `NA` if no edges remain.
