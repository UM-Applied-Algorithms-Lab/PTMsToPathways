# Evaluate Cluster Quality from PTM Data

Computes a set of diagnostic statistics and a composite quality index
for each cluster in a cluster list, using the original PTM data matrix
as the reference. The function consolidates four previous evaluation
functions (`clust.eval.1`, `nbclust.eval`, `lincsclust.eval`, and
`clust.eval`) into a single interface controlled by three arguments:
`data.type`, `index.mode`, and `use.slope`.

## Usage

``` r
EvaluateClusters(
  clusterlist,
  tbl.sc,
  data.type = c("ratio", "intensity", "count"),
  index.mode = c("density", "size"),
  use.slope = TRUE,
  ratio.col.pattern = NULL,
  verbose = TRUE
)
```

## Arguments

- clusterlist:

  A named or unnamed list of clusters as returned by
  [`MakeClusterList()`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/reference/MakeClusterList.md).
  Each element must be a character vector of gene / PTM names **or** a
  data frame with a column named `PTMnames` (the format produced by
  `MakeClusterList`).

- tbl.sc:

  Numeric data matrix with PTMs / genes as row names and samples as
  column names. This is the same table passed to
  [`MakeClusterList()`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/reference/MakeClusterList.md).

- data.type:

  Character string specifying the nature of the input data. One of:

  `"ratio"` (default)

  :   TMT log2 ratios; values may be negative. Absolute values are used
      internally for all diagnostic calculations so that signal
      magnitude is assessed without sign cancellation.

  `"intensity"`

  :   Non-negative raw TMT intensities or peptide abundance values. No
      absolute-value transformation is applied.

  `"count"`

  :   Non-negative peptide count data (original `clust.eval.1`
      behaviour). Treated identically to `"intensity"`.

- index.mode:

  Character string selecting the index formula. One of `"density"`
  (default, recommended) or `"size"`. See the *Index formula* section
  above.

- use.slope:

  Logical. If `TRUE` (default), apply the slope-based outlier filter
  (see *Slope filter* section). Set to `FALSE` for unordered cohort data
  such as BRCA TMT proteomics, where sample order is arbitrary.

- ratio.col.pattern:

  Character string or `NULL` (default). A regular expression passed to
  [`base::grep()`](https://rdrr.io/r/base/grep.html) to identify and
  remove ratio columns before computing diagnostic statistics. For
  example, LINCS data may contain columns named `"H1_to_control"` whose
  name encodes a ratio relationship; passing `"to"` removes these
  columns before evaluation. Set to `NULL` (default) to skip this step.

- verbose:

  Logical. If `TRUE` (default), print progress messages for each
  cluster. Set to `FALSE` to suppress output in batch workflows.

## Value

A data frame sorted in descending order of `Index`, then ascending
`percent.NA`. Columns are:

- `Group`:

  Integer cluster index (1-based, matching `clusterlist` position).

- `no.genes`:

  Number of genes / PTMs in the cluster.

- `culled.by.slope`:

  Number of rows flagged by the slope filter (0 when
  `use.slope = FALSE`).

- `percent.singlesamplegenes`:

  Percentage of genes / PTMs detected in only one sample.

- `no.samples`:

  Number of samples that contain at least one non-missing value for any
  gene in the cluster.

- `percent.singlegenesamples`:

  Percentage of samples that contain a non-missing value for only one
  gene in the cluster.

- `total.signal`:

  Sum of absolute signal values across the cluster sub-table (after NA
  removal and, when applicable, absolute-value transformation).

- `percent.NA`:

  Percentage of missing values in the cluster sub-table restricted to
  samples with at least one non-missing value.

- `intensity`:

  Total signal after scaling by the missing-value fraction
  (`total.signal * (1 - percent.NA / 100)`). Only included when
  `index.mode = "density"`.

- `Index`:

  Composite quality index (see *Index formula* section). Higher values
  indicate better clusters.

## Index formula

Two index modes are available, selected with `index.mode`:

- `"size"` (original `nbclust.eval` / `clust.eval`):

  Rewards large, information-dense clusters.
  `Index = intensity * (1 + realsamples) * (1 + cleargenes) / (1 + percent.NA)`

- `"density"` (original `lincsclust.eval`; recommended default):

  Rewards data density per gene. Compact, information-rich clusters
  score higher than large but diffuse ones.
  `Index = (1 + realsamples) * (1 + cleargenes) / ((1 + percent.NA) * no.genes)`

where:

- `intensity` = total signal after removing the NA fraction

- `realsamples` = samples that are not single-gene samples

- `cleargenes` = genes not culled by the slope filter

- `percent.NA` = percentage of missing values in the cluster sub-table

## Slope filter

When `use.slope = TRUE`, the cluster sub-table is re-ordered so that
columns (samples) are sorted by decreasing total signal and rows
(genes/PTMs) are sorted by decreasing total signal. A linear model is
then fit to each row against its column rank. Rows with a positive or
undefined slope are flagged as "bad slope" and counted in
`culled.by.slope`. These rows do not contribute to the index because a
positive slope (signal increasing with decreasing sample rank) is
inconsistent with the pattern expected for a coherent cluster. Set
`use.slope = FALSE` for unordered cohort data (e.g. BRCA TMT) where
sample order is arbitrary and a slope filter is not meaningful.

## See also

[`MakeClusterList()`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/reference/MakeClusterList.md)
for generating the cluster list input.

## Examples

``` r
# Typical usage with TMT ratio data and default density index:
cl <- MakeClusterList(ex_tiny_ptm_table)
#> Starting correlation calculations and t-SNE.
#> This may take a few minutes or hours for large data sets.
#> Error: object 'ex_tiny_ptm_table' not found
eval_df <- EvaluateClusters(cl[[1]], ex_tiny_ptm_table, data.type = "ratio")
#> Error: object 'cl' not found
head(eval_df)
#> Error: object 'eval_df' not found

# Unordered cohort data (e.g. BRCA): disable slope filter
eval_brca <- EvaluateClusters(
  brca_clusters, brca_tbl,
  data.type  = "ratio",
  use.slope  = FALSE,
  index.mode = "density"
)
#> Error: object 'brca_clusters' not found

# LINCS data with ratio columns to strip, size-based index:
eval_lincs <- EvaluateClusters(
  lincs_clusters, lincs_tbl,
  data.type          = "ratio",
  index.mode         = "size",
  use.slope          = TRUE,
  ratio.col.pattern  = "to"
)
#> Error: object 'lincs_clusters' not found
```
