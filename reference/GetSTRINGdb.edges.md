# Get STRINGdb PPI data

This function finds protein-protein interaction weights by consulting
utilizing the STRINGdb database.

This function finds protein-protein interaction weights by consulting
the STRINGdb database, either live via the STRINGdb R package or from a
locally pre-downloaded flat file. The package STRINGdb is required for
the live mode. To download, run:

- if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

- BiocManager::install("STRINGdb")

For the local mode, download the full detailed network file for Homo
sapiens from:
https://stringdb-downloads.org/download/protein.links.detailed.v12.0/9606.protein.links.detailed.v12.0.txt.gz
and pre-process it to HUGO symbols using the companion script
scripts/string_to_hugo.r. The resulting file (string_hs_hugo.tsv) is the
expected input for local mode. 'Group' is the interaction category
(included: "Pathway", "Physical Interactions", "Predicted", "Genetic
Interactions")

## Usage

``` r
GetSTRINGdb.edges(
  gene.cccn.edges,
  gene.cccn.nodes,
  local = FALSE,
  string.local.path = "string_hs_hugo.tsv"
)

GetSTRINGdb.edges(
  gene.cccn.edges,
  gene.cccn.nodes,
  local = FALSE,
  string.local.path = "string_hs_hugo.tsv"
)
```

## Arguments

- gene.cccn.edges:

  A dataframe showing interaction relationships between proteins using
  common PTM clusters derived from three distance metrics (Euclidean,
  Spearman, and Combined (SED))

- gene.cccn.nodes:

  A list of nodes that are in the Gene CoCluster Correlation Network
  derived from common clusters between the three distance metrics
  (Euclidean, Spearman, and Combined (SED))

- local:

  Logical. If TRUE, reads from a pre-downloaded local file instead of
  querying the live STRINGdb API. Default is FALSE.

- string.local.path:

  Path to the pre-processed local STRING file (string_hs_hugo.tsv
  produced by scripts/string_to_hugo.r). Only used when local = TRUE.
  Default is "string_hs_hugo.tsv".

- combined.score.threshold:

  Integer (0–1000). Minimum combined_score to retain an edge when
  reading from the local file. STRING thresholds: low = 150, medium =
  400, high = 700, highest = 900. Default is 400.

## Value

Data frame of consisting of the network of interactions from the genes
of study pulled from the STRINGdb database and a list of gene names

Data frame of consisting of the network of interactions from the genes
of study pulled from the STRINGdb database and a list of gene names

## Details

The full example takes ~10 minutes to load, so it has been commented out
and the results are displayed.

The full example takes ~10 minutes to load in live mode, so it has been
commented out and the results are displayed.

## Examples

``` r
# GetSTRINGdb(ex.gene.cccn)
utils::head(ex.stringdb.edges)
#> Error: object 'ex.stringdb.edges' not found
utils::head(ex.nodenames)
#> Error: object 'ex.nodenames' not found
# Live mode (original behaviour):
# GetSTRINGdb.edges(ex.gene.cccn.edges, ex.gene.cccn.nodes)

# Local mode (future-proof, no internet required):
# GetSTRINGdb.edges(ex.gene.cccn.edges, ex.gene.cccn.nodes,
#                   local = TRUE, string.local.path = "string_hs_hugo.tsv")

utils::head(ex.stringdb.edges)
#> Error: object 'ex.stringdb.edges' not found
utils::head(ex.nodenames)
#> Error: object 'ex.nodenames' not found
```
