# Get STRINGdb PPI data from full local or live source

Retrieve STRINGdb protein-protein interaction edges for a supplied gene
set, either from a precomputed local file derived from
protein.links.full.v12.0.txt.gz or live via the STRINGdb R package.

In local mode, this function performs no web/API queries. To avoid
symbol mismatches, users are encouraged to standardize their node list
in advance with
[`StandardizeGeneSymbols()`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/reference/StandardizeGeneSymbols.md).

## Usage

``` r
GetSTRINGdb.edges(
  gene.cccn.edges,
  gene.cccn.nodes,
  local = FALSE,
  string.local.path = "string_hs_hugo_full.tsv",
  combined.score.threshold = 400,
  include.transferred = TRUE,
  symbol.map = NULL
)
```

## Arguments

- gene.cccn.edges:

  Data frame of CCCN edges (currently unused; retained for compatibility
  with older package API).

- gene.cccn.nodes:

  Character vector of gene symbols to retain.

- local:

  Logical. If TRUE, read only from a local precomputed file and do not
  query STRINGdb online. Default is FALSE.

- string.local.path:

  Path to local TSV produced from protein.links.full with transferred
  columns included. Default is "string_hs_hugo_full.tsv".

- combined.score.threshold:

  Integer (0-1000). Minimum combined_score to retain an edge. Default is
  400.

- include.transferred:

  Logical. If TRUE, include \*\_transferred evidence channels. If FALSE,
  omit them. Default is TRUE.

- symbol.map:

  Optional data frame produced by
  [`StandardizeGeneSymbols()`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/reference/StandardizeGeneSymbols.md).
  If supplied, `gene.cccn.nodes` will be converted to `standard_symbol`
  before filtering. Useful for keeping local mode fully offline.

## Value

Data frame with columns: source, target, interaction, Weight

## Examples

``` r
# sym.map <- StandardizeGeneSymbols(ex.gene.cccn.nodes)
# x <- GetSTRINGdbEdgesFull(
#   ex.gene.cccn.edges,
#   ex.gene.cccn.nodes,
#   local = TRUE,
#   string.local.path = "string_hs_hugo_full.tsv",
#   combined.score.threshold = 400,
#   include.transferred = TRUE,
#   symbol.map = sym.map
# )
```
