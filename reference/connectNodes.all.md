# Connect a pair of nodes via all shortest paths

Uses
[`igraph::all_shortest_paths`](https://r.igraph.org/reference/distances.html)
to find all shortest paths between two nodes and returns the union of
edges along those paths.

## Usage

``` r
connectNodes.all(nodepair, ig.graph = NULL, edgefile, newgraph = FALSE)
```

## Arguments

- nodepair:

  Character vector of length 2 giving the source and target node names.

- ig.graph:

  An `igraph` graph object. If `NULL` and `newgraph = TRUE`, one is
  built from `edgefile`.

- edgefile:

  A data frame edge list used to construct the graph when
  `newgraph = TRUE` and to extract edge attributes.

- newgraph:

  Logical; if `TRUE`, build a new `igraph` object from `edgefile` before
  computing paths.

## Value

A data frame of edges along all shortest paths between the two nodes.
