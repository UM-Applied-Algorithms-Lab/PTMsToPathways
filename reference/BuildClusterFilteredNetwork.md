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
Example_Output <- BuildClusterFilteredNetwork(ex_gene_cccn_edges, ex_stringdb_edges, ex_genemania_edges)
utils::head(Example_Output[[2]])
#>   source  target              interaction   Weight
#> 1   ABL1    IRS2 experimental_transferred 3.589744
#> 2 ADAM10   ANXA2 experimental_transferred 2.600733
#> 3 ADAM10    IRS2 experimental_transferred 2.857143
#> 4   AFDN PLEKHA5             experimental 2.747253
#> 5  AHNAK     LPP experimental_transferred 1.941392
#> 6  AHNAK   NEDD9 experimental_transferred 3.772894
```
