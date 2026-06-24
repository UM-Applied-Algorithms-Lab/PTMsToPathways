# Build a Cytoscape node attribute table from an edge file

Extracts unique gene nodes from an edge file, annotates them using the
function key, and optionally appends gene-level PTM data and
co-clustered PTM nodes.

## Usage

``` r
make.cytoscape.node.file(
  edge.file,
  funckey = PTMsToPathways::function_key,
  ptmtable,
  include.gene.data = FALSE,
  include.coclustered.PTMs = FALSE,
  ptm.cccn.edges = NULL
)
```

## Arguments

- edge.file:

  A data frame edge list with node names in columns 1 and 2 and an
  `interaction` column.

- funckey:

  A data frame mapping gene names to protein annotations (e.g.,
  [`PTMsToPathways::function_key`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/reference/function_key.md)).

- ptmtable:

  A PTM data frame with PTM identifiers as row names and numeric
  condition columns.

- include.gene.data:

  Logical; if `TRUE`, append gene-level summarised PTM values to the
  node table. Defaults to `FALSE`.

- include.coclustered.PTMs:

  Logical; if `TRUE`, add co-clustered PTM nodes and their edges to the
  output. Defaults to `FALSE`.

- ptm.cccn.edges:

  A data frame of PTM co-expression correlation network edges with PTM
  identifiers as node names, required if
  `include.coclustered.PTMs = TRUE`.

## Value

A data frame of node attributes with an `id` column suitable for
[`RCy3::createNetworkFromDataFrames`](https://rdrr.io/pkg/RCy3/man/createNetworkFromDataFrames.html).
