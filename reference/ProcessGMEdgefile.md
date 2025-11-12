# Process GM Edge File

This function processes the GM edgefile and translates it back into gene
names using the nodetable.

## Usage

``` r
ProcessGMEdgefile(
  gm.edgefile.path,
  gm.nodetable.path,
  db_nodes.path,
  gene.cccn.nodes
)
```

## Arguments

- gm.edgefile.path:

  Path to GeneMANIA edgefile

- gm.nodetable.path:

  Path to GeneMANIA nodetable

- db_nodes.path:

  Path to the node file from MakeDBInput

- gene.cccn.nodes:

  A list of nodes that are in the Gene CoCluster Correlation Network
  derived from common clusters between the three distance metrics
  (Euclidean, Spearman, and Combined (SED))

## Value

Data frame of consisting of the network of interactions from the genes
of study

## Examples

``` r
ex.edgefile <- system.file("extdata/ex_gm_edgetable.csv", package = "PTMsToPathways")
ex.nodefile <- system.file("extdata/ex_gm_nodetable.csv", package = "PTMsToPathways")
ex.db.nodes  <- system.file("extdata/ex_db_nodes.txt", package = "PTMsToPathways")
Example_Output <- ProcessGMEdgefile(ex.edgefile, ex.nodefile, ex.db.nodes)
#> Error in ProcessGMEdgefile(ex.edgefile, ex.nodefile, ex.db.nodes): argument "gene.cccn.nodes" is missing, with no default
utils::head(Example_Output)
#> Error: object 'Example_Output' not found
```
