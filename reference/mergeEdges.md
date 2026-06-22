# Merge duplicate edges in an edge file

Consolidates an edge file by collapsing parallel edges (same
source/target) into a single row. For directed edge types, the
highest-priority interaction is kept; for undirected edges, all
interaction types are concatenated with `" | "`. Self-loops are removed
from the result.

## Usage

``` r
mergeEdges(edgefile)
```

## Arguments

- edgefile:

  A data frame edge list with columns `source`, `target`, `interaction`,
  and `Weight`.

## Value

A deduplicated data frame edge list.
