# Get GeneMANIA Edges

Return a filtered GeneMANIA edge list, either by parsing a GeneMANIA
Cytoscape export file (original behaviour) or by reading a
pre-downloaded full Homo sapiens network (local mode). Optionally
standardizes the node list using a precomputed symbol map.

## Usage

``` r
GetGeneMANIA.edges(
  gm.results.path,
  gene.cccn.nodes,
  local = FALSE,
  genemania.local.path = "hs_interactions_hugo.tsv",
  gm.interaction.types = c("Pathway", "Physical Interactions"),
  symbol.map = NULL
)
```

## Arguments

- gm.results.path:

  Path to GeneMANIA results text file (used when local = FALSE).

- gene.cccn.nodes:

  Character vector of CCCN node symbols.

- local:

  Logical. If TRUE, reads from a pre-downloaded local file instead of a
  Cytoscape export. Default is FALSE.

- genemania.local.path:

  Path to the pre-processed local GeneMANIA file
  (hs_interactions_hugo.tsv produced by
  scripts/genemania_hs_download.r). Only used when local = TRUE. Default
  is "hs_interactions_hugo.tsv".

- gm.interaction.types:

  Character vector of interaction group names to retain. Default retains
  Pathway and Physical Interactions.

- symbol.map:

  Optional data frame produced by
  [`StandardizeGeneSymbols()`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/reference/StandardizeGeneSymbols.md).
  If supplied, `gene.cccn.nodes` will be converted to `standard_symbol`
  before filtering.

## Value

Data frame with columns: source, target, interaction, Weight

## Examples

``` r
# sym.map <- StandardizeGeneSymbols(ex.gene.cccn.nodes)
# gm.edges <- GetGeneMANIA.edges(
#   gm.results.path = ex.gm.results.path,
#   gene.cccn.nodes = ex.gene.cccn.nodes,
#   symbol.map = sym.map
# )
```
