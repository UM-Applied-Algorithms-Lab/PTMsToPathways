# Build PPI Network

Uses all inputted database information on protein-protein interactions
in order to create a combined PPI-network. All edges in the PPI network
are checked against the cocluster correlation network to ensure
existence and a non-zero weight. If either of these conditions are not
met, then it will be removed from the list of PPI edges. This new,
cluster filtered network is then assigned to the global namespace.

## Usage

``` r
BuildClusterFilteredNetwork(
  gene.cccn.edges,
  stringdb.edges = NULL,
  genemania.edges = NULL,
  kinsub.edges = NULL,
  db.filepaths = c(NULL)
)
```

## Arguments

- gene.cccn.edges:

  TODO

- stringdb.edges:

  Data frame of consisting of the network of interactions from the genes
  of study pulled from the STRINGdb database

- genemania.edges:

  GeneMANIA network of protein-protein interactions from the genes of
  study; defaults to NA

- kinsub.edges:

  TODO

- db.filepaths:

  A vector of paths to the additional ppi network files; defaults to an
  empty vector

## Value

A list containing the following data structures at the given index:

1.  All the database data.frames stringdb, genemania, and kinsub bound
    together in a data frame.

2.  A version of ppi.network with only the edges that exist in gene.cccn
    and have non-zero weights.

## Examples

``` r
Example_Output <- BuildClusterFilteredNetwork("need example", ex.stringdb.edges, ex.gm.edges, "need example", "need example")
#> Warning: no non-missing arguments to max; returning -Inf
#> Error in `$<-.data.frame`(`*tmp*`, "Weight", value = numeric(0)): replacement has 0 rows, data has 241
utils::head(Example_Output)
#> Error: object 'Example_Output' not found
```
