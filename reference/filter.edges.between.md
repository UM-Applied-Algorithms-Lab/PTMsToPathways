# Filter an edge file to edges between two sets of nodes

Returns edges where one endpoint is in `nodes1` and the other is in
`nodes2`, in either direction.

## Usage

``` r
filter.edges.between(nodes1, nodes2, edge.file, convert = FALSE)
```

## Arguments

- nodes1:

  Character vector of the first set of node names.

- nodes2:

  Character vector of the second set of node names.

- edge.file:

  A data frame edge list with node names in columns 1 and 2.

- convert:

  Logical; currently unused, reserved for future type conversion.

## Value

A data frame of edges connecting `nodes1` to `nodes2`, or `NA` if no
such edges exist.
