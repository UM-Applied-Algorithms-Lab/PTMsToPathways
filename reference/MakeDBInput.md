# Make Database Input File

This function outputs a file consisting entirely of gene names, each
produced on a new line. This data can be copy and pasted into a database
input in order to get protein-protein interaction data.

## Usage

``` r
MakeDBInput(gene.cccn.nodes, file.path.name = "db_nodes.txt")
```

## Arguments

- gene.cccn.nodes:

  A list of nodes that are in the Gene CoCluster Correlation Network
  derived from common clusters between the three distance metrics
  (Euclidean, Spearman, and Combined (SED))

- file.path.name:

  Path for the output file; defaults to db_nodes.txt

## Value

A file with all of the gene names which can be copy and pasted into the
GeneMania cytoscape app, data frame of the names of the genes

## Examples

``` r
#MakeDBInput(ex.nodenames)
cat(ex.nodenames[[1]], sep = '\n')
#> Error: object 'ex.nodenames' not found
```
