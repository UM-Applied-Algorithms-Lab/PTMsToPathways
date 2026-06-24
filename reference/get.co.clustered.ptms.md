# Retrieve co-clustered PTM CCCN edges for genes in an edge file

Subsets the PTM CCCN to the PTMs belonging to genes present in
`edge.file`, then appends gene-to-peptide edges so the result can be
directly used as an extended edge list in Cytoscape.

## Usage

``` r
get.co.clustered.ptms(edge.file, ptm.cccn.edges, ptmtable)
```

## Arguments

- edge.file:

  A data frame edge list whose nodes are gene names.

- ptm.cccn.edges:

  A data frame of PTM co-expression correlation network edges with PTM
  identifiers as node names.

- ptmtable:

  A PTM data frame with PTM identifiers as row names and numeric
  condition columns.

## Value

An edge data frame combining the original gene edges, co-clustered PTM
edges, and gene-to-peptide linking edges.
