# Filter an edge file to include first-order neighbours of specified nodes

Returns all edges where at least one endpoint is in `nodenames`,
effectively including the nodes themselves and all directly connected
neighbours.

## Usage

``` r
filter.edges.1(nodenames, edge.file)
```

## Arguments

- nodenames:

  Character vector of seed node names.

- edge.file:

  A data frame edge list with node names in columns 1 and 2.

## Value

A data frame of edges involving at least one node in `nodenames`, or
`NA` if no edges remain.
