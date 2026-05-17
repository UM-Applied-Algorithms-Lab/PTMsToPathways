# Heatmap of Phosphopeptides Grouped by Cluster

Creates a large phosphopeptide heatmap colored by signal intensity,
grouped by consensus cluster with high-contrast cluster color bars.
Supports custom row ordering and optional legend/heatkey output files.

## Usage

``` r
graph.ptm.by.cluster(
  ptmtable,
  common.clusters,
  filename = "ptm_by_cluster_heatmap.pdf",
  legend.filename = NULL,
  heatkey.filename = NULL,
  cluster.order = names(common.clusters),
  order.rows = c("as.is", "mean", "slope", "hclust"),
  cluster.cols = FALSE,
  zlim = 3,
  min.shared = 2,
  show.row.labels = FALSE,
  show.col.labels = TRUE,
  row_cex = 0.2,
  col_cex = 0.8,
  main = "Phosphopeptides grouped by cluster"
)
```

## Arguments

- ptmtable:

  A numeric matrix with PTMs as rows and samples as columns.

- common.clusters:

  A named list where each element is a character vector of PTM
  identifiers belonging to that cluster.

- filename:

  Output filename for the main heatmap PDF. Defaults to
  `"ptm_by_cluster_heatmap.pdf"`.

- legend.filename:

  Optional filename for a separate PDF cluster legend. If `NULL`, no
  legend file is written.

- heatkey.filename:

  Optional filename for a separate PDF color scale key. If `NULL`, no
  heatkey file is written.

- cluster.order:

  Character vector specifying the order in which clusters are displayed.
  Defaults to `names(common.clusters)`.

- order.rows:

  Method to order rows within clusters: `"as.is"` (no reordering),
  `"mean"` (by row-wise mean), `"slope"` (by linear trend), or
  `"hclust"` (hierarchical clustering). Defaults to `"as.is"`.

- cluster.cols:

  Logical; if `TRUE`, columns are also hierarchically clustered.
  Defaults to `FALSE`.

- zlim:

  Numeric; the upper/lower limit for the heatmap color scale (values are
  clipped to `[-zlim, zlim]`). Defaults to `3`.

- min.shared:

  Minimum number of shared finite values required to compute distance
  between two samples. Defaults to `2`.

- show.row.labels:

  Logical; show row labels (PTM identifiers). Defaults to `FALSE`.

- show.col.labels:

  Logical; show column labels (sample names). Defaults to `TRUE`.

- row_cex:

  Character expansion factor for row labels. Defaults to `0.2`.

- col_cex:

  Character expansion factor for column labels. Defaults to `0.8`.

- main:

  Plot title. Defaults to `"Phosphopeptides grouped by cluster"`.

## Value

Invisibly returns a list containing:

- `mat`: The clustered expression matrix.

- `blocks`: List of ordered sub-matrices, one per cluster.

- `rowsep`: Row indices separating clusters.

- `cluster.palette`: Named vector of cluster colors.

## Examples

``` r
if (FALSE) { # \dontrun{
res <- graph.ptm.by.cluster(
  ptmtable = ptmtable,
  common.clusters = common.clusters,
  filename = "ptm_heatmap.pdf",
  order.rows = "hclust"
)
} # }
```
