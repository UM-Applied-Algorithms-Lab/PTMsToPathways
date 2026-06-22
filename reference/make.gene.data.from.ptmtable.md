# Summarise PTM table data to gene level

Subsets a PTM table to genes of interest and collapses PTM-level numeric
values to gene-level sums, suitable for loading into Cytoscape node
attributes.

## Usage

``` r
make.gene.data.from.ptmtable(genes, ptmtable)
```

## Arguments

- genes:

  Character vector of gene names to retain.

- ptmtable:

  A PTM data frame with PTM identifiers (`"GENE site"`) as row names and
  numeric drug/condition columns.

## Value

A data frame with one row per gene and summed numeric columns.
