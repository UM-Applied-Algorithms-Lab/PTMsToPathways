# Create gene-to-peptide edges from a PTM edge file

Generates a new edge data frame linking each PTM node (`"GENE site"`) to
its parent gene node, for use in combined gene/PTM Cytoscape networks.

## Usage

``` r
make.genepep.edges(peptide.edgefile)
```

## Arguments

- peptide.edgefile:

  A data frame edge list whose node names follow the `"GENE site"` PTM
  naming convention.

## Value

A data frame with columns `source`, `target`, `Weight`, and
`interaction` (`"peptide"`).
