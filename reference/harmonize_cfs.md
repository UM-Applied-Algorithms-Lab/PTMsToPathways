# Harmonize gene and PTM node tables for a combined CFN/CCCN network

Merges a gene-level node attribute table with PTM-level rows derived
from the PTM table, ensuring the `id` column is present and used as the
Cytoscape node key. PTM nodes are annotated from the function key and
linked to their parent genes via a `parent` column.

## Usage

``` r
harmonize_cfs(edge.file.with.ptms, genecf, ptmtable)
```

## Arguments

- edge.file.with.ptms:

  A data frame edge list containing both gene and PTM
  (`interaction == "peptide"`) edges.

- genecf:

  A gene-level node attribute data frame, typically produced by
  `make.cytoscape.node.file`.

- ptmtable:

  A PTM data frame with PTM identifiers as row names and numeric
  condition columns.

## Value

A merged data frame of gene and PTM node attributes with `id` as the
first column, suitable for
[`RCy3::createNetworkFromDataFrames`](https://rdrr.io/pkg/RCy3/man/createNetworkFromDataFrames.html).
