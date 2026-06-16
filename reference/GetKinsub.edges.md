# Get Kinase-Substrate Edges

Read a kinase-substrate dataset from PhosphoSitePlus and return an edge
list filtered to the supplied node set. Optionally standardizes the node
list using a precomputed symbol map.

## Usage

``` r
GetKinsub.edges(
  kinasesubstrate.filename = "Kinase_Substrate_Dataset.txt",
  gene.cccn.nodes,
  symbol.map = NULL
)
```

## Arguments

- kinasesubstrate.filename:

  Path to the kinase substrate database file.

- gene.cccn.nodes:

  Character vector of CCCN node symbols.

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
# ks.edges <- GetKinsub.edges(
#   kinasesubstrate.filename = "Kinase_Substrate_Dataset.txt",
#   gene.cccn.nodes = ex.gene.cccn.nodes,
#   symbol.map = sym.map
# )
```
