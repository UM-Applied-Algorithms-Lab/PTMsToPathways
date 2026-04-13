# Get GeneMANIA Edges

This function processes the GM results text file and returns it as a
filtered edgelist.

This function returns a filtered GeneMANIA edge list, either by parsing
a GeneMANIA Cytoscape export file (original behaviour) or by reading a
pre-downloaded full Homo sapiens network (local mode).

## Usage

``` r
GetGeneMANIA.edges(
  gm.results.path,
  gene.cccn.nodes,
  local = FALSE,
  genemania.local.path = "hs_interactions_hugo.tsv",
  gm.interaction.types = c("Pathway", "Physical Interactions")
)

GetGeneMANIA.edges(
  gm.results.path,
  gene.cccn.nodes,
  local = FALSE,
  genemania.local.path = "hs_interactions_hugo.tsv",
  gm.interaction.types = c("Pathway", "Physical Interactions")
)
```

## Arguments

- gm.results.path:

  Path to GeneMANIA results text file (used when local = FALSE).

- gene.cccn.nodes:

  A list of nodes that are in the Gene CoCluster Correlation Network
  derived from common clusters between the three distance metrics
  (Euclidean, Spearman, and Combined (SED))

- local:

  Logical. If TRUE, reads from a pre-downloaded local file instead of a
  Cytoscape export. Default is FALSE.

- genemania.local.path:

  Path to the pre-processed local GeneMANIA file
  (hs_interactions_hugo.tsv produced by
  scripts/genemania_hs_download.r). Only used when local = TRUE. Default
  is "hs_interactions_hugo.tsv".

- gm.interaction.types:

  Character vector of interaction group names to retain. Only used when
  local = TRUE. Default retains Pathway and Physical Interactions,
  matching the filter applied in the original live mode.

## Value

Data frame of consisting of the network of interactions from the genes
of study

Data frame of consisting of the network of interactions from the genes
of study

## Details

To get the GeneMANIA results text file, click on the three lines in the
upper right corner. This should be under the GeneMANIA side window
beside the species. Click "Export Results". The path to this file is the
gm.results.path. An visual depiction of these instructions in the
vignette PTMsToPathways under the GeneMANIA section.

Live mode: To get the GeneMANIA results text file, click on the three
lines in the upper right corner of the GeneMANIA side window beside the
species. Click "Export Results". The path to this file is the
gm.results.path.

Local mode: Download and process the full GeneMANIA Homo sapiens network
using the companion script scripts/genemania_hs_download.r, which
produces hs_interactions_hugo.tsv.

## Examples

``` r
ex.gm.results.path <- system.file("extdata/ex_gm_edgetable.csv", package = "PTMsToPathways")
example.GeneMANIA.edges <- GetGeneMANIA.edges(ex.gm.results.path, ex.gene.cccn.nodes)
#> Warning: file("") only supports open = "w+" and open = "w+b": using the former
#> Error in start_line[1]:(end_line[1] - 1): NA/NaN argument
utils::head(example.GeneMANIA.edges)
#> Error: object 'example.GeneMANIA.edges' not found
# Live mode (original behaviour):
ex.gm.results.path <- system.file("extdata/ex_gm_edgetable.csv", package = "PTMsToPathways")
example.GeneMANIA.edges <- GetGeneMANIA.edges(ex.gm.results.path, ex.gene.cccn.nodes)
#> Warning: file("") only supports open = "w+" and open = "w+b": using the former
#> Error in start_line[1]:(end_line[1] - 1): NA/NaN argument

# Local mode (future-proof, no internet required):
# example.GeneMANIA.edges <- GetGeneMANIA.edges(
#   gm.results.path    = NULL,
#   gene.cccn.nodes    = ex.gene.cccn.nodes,
#   local              = TRUE,
#   genemania.local.path = "hs_interactions_hugo.tsv"
# )

utils::head(example.GeneMANIA.edges)
#> Error: object 'example.GeneMANIA.edges' not found
```
