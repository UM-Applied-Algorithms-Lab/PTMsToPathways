# Get GeneMANIA Edges

This function processes the GM results text file and returns it as a
filtered edgelist.

## Usage

``` r
GetGeneMANIAEdges(gm.results.path, gene.cccn.nodes)
```

## Arguments

- gm.results.path:

  Path to GeneMANIA results text file

- gene.cccn.nodes:

  A list of nodes that are in the Gene CoCluster Correlation Network
  derived from common clusters between the three distance metrics
  (Euclidean, Spearman, and Combined (SED))

## Value

Data frame of consisting of the network of interactions from the genes
of study

## Details

To get the GeneMANIA results text file, click on the three lines in the
upper right corner. This should be under the GeneMANIA side window
beside the species. Click "Export Results". The path to this file is the
gm.results.path. An visual depiction of these instructions in the
vignette PTMsToPathways under the GeneMANIA section.

## Examples

``` r
ex.gm.results.path <- system.file("extdata/ex_gm_edgetable.csv", package = "PTMsToPathways")
example.GeneMANIA.edges <- GetGeneMANIAEdges(ex.gm.results.path, ex.gene.cccn.nodes)
#> Warning: file("") only supports open = "w+" and open = "w+b": using the former
#> Error in start_line[1]:(end_line[1] - 1): NA/NaN argument
utils::head(example.GeneMANIA.edges)
#> Error: object 'example.GeneMANIA.edges' not found
```
