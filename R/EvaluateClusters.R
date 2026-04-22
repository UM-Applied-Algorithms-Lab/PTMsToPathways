#' Evaluate Cluster Quality from PTM Data
#'
#' Computes a set of diagnostic statistics and a composite quality index for
#' each cluster in a cluster list, using the original PTM data matrix as the
#' reference.  The function consolidates four previous evaluation functions
#' (`clust.eval.1`, `nbclust.eval`, `lincsclust.eval`, and `clust.eval`) into
#' a single interface controlled by three arguments: `data.type`,
#' `index.mode`, and `use.slope`.
#'
#' @section Index formula:
#' Two index modes are available, selected with `index.mode`:
#'
#' \describe{
#'   \item{`"size"` (original `nbclust.eval` / `clust.eval`)}{
#'     Rewards large, information-dense clusters.
#'     \deqn{
#'       \text{Index} = \text{intensity}
#'         \times (1 + \text{realsamples})
#'         \times (1 + \text{cleargenes})
#'         \;/\; (1 + \text{percent.NA})
#'     }
#'   }
#'   \item{`"density"` (original `lincsclust.eval`; recommended default)}{
#'     Rewards data density per gene.  Compact, information-rich clusters
#'     score higher than large but diffuse ones.
#'     \deqn{
#'       \text{Index} =
#'         (1 + \text{realsamples})
#'         \times (1 + \text{cleargenes})
#'         \;/\; ((1 + \text{percent.NA}) \times \text{no.genes})
#'     }
#'   }
#' }
#'
#' where:
#' \itemize{
#'   \item `intensity` = total signal after removing the NA fraction
#'   \item `realsamples` = samples that are not single-gene samples
#'   \item `cleargenes` = genes not culled by the slope filter
#'   \item `percent.NA` = percentage of missing values in the cluster sub-table
#' }
#'
#' @section Slope filter:
#' When `use.slope = TRUE`, the cluster sub-table is re-ordered so that columns
#' (samples) are sorted by decreasing total signal and rows (genes/PTMs) are
#' sorted by decreasing total signal.  A linear model is then fit to each row
#' against its column rank.  Rows with a positive or undefined slope are flagged
#' as "bad slope" and counted in `culled.by.slope`.  These rows do not
#' contribute to the index because a positive slope (signal increasing with
#' decreasing sample rank) is inconsistent with the pattern expected for a
#' coherent cluster.  Set `use.slope = FALSE` for unordered cohort data (e.g.
#' BRCA TMT) where sample order is arbitrary and a slope filter is
#' not meaningful.
#'
#' @param clusterlist A named or unnamed list of clusters as returned by
#'   [MakeClusterList()].  Each element must be a character vector of gene /
#'   PTM names **or** a data frame with a column named `PTMnames` (the format
#'   produced by `MakeClusterList`).
#' @param tbl.sc Numeric data matrix with PTMs / genes as row names and samples
#'   as column names.  This is the same table passed to [MakeClusterList()].
#' @param data.type Character string specifying the nature of the input data.
#'   One of:
#'   \describe{
#'     \item{`"ratio"` (default)}{TMT log2 ratios; values may be negative.
#'       Absolute values are used internally for all diagnostic calculations so
#'       that signal magnitude is assessed without sign cancellation.}
#'     \item{`"intensity"`}{Non-negative raw TMT intensities or peptide
#'       abundance values.  No absolute-value transformation is applied.}
#'     \item{`"count"`}{Non-negative peptide count data (original
#'       `clust.eval.1` behaviour).  Treated identically to `"intensity"`.}
#'   }
#' @param index.mode Character string selecting the index formula.  One of
#'   `"density"` (default, recommended) or `"size"`.  See the *Index formula*
#'   section above.
#' @param use.slope Logical.  If `TRUE` (default), apply the slope-based
#'   outlier filter (see *Slope filter* section).  Set to `FALSE` for
#'   unordered cohort data such as BRCA TMT proteomics, where sample order
#'   is arbitrary.
#' @param ratio.col.pattern Character string or `NULL` (default).  A regular
#'   expression passed to [base::grep()] to identify and remove ratio columns
#'   before computing diagnostic statistics.  For example, LINCS data may
#'   contain columns named `"H1_to_control"` whose name encodes a ratio
#'   relationship; passing `"to"` removes these columns before evaluation.
#'   Set to `NULL` (default) to skip this step.
#' @param verbose Logical.  If `TRUE` (default), print progress messages for
#'   each cluster.  Set to `FALSE` to suppress output in batch workflows.
#'
#' @return A data frame sorted in descending order of `Index`, then ascending
#'   `percent.NA`.  Columns are:
#'   \describe{
#'     \item{`Group`}{Integer cluster index (1-based, matching `clusterlist`
#'       position).}
#'     \item{`no.genes`}{Number of genes / PTMs in the cluster.}
#'     \item{`culled.by.slope`}{Number of rows flagged by the slope filter (0
#'       when `use.slope = FALSE`).}
#'     \item{`percent.singlesamplegenes`}{Percentage of genes / PTMs detected
#'       in only one sample.}
#'     \item{`no.samples`}{Number of samples that contain at least one
#'       non-missing value for any gene in the cluster.}
#'     \item{`percent.singlegenesamples`}{Percentage of samples that contain
#'       a non-missing value for only one gene in the cluster.}
#'     \item{`total.signal`}{Sum of absolute signal values across the cluster
#'       sub-table (after NA removal and, when applicable, absolute-value
#'       transformation).}
#'     \item{`percent.NA`}{Percentage of missing values in the cluster
#'       sub-table restricted to samples with at least one non-missing value.}
#'     \item{`intensity`}{Total signal after scaling by the missing-value
#'       fraction (`total.signal * (1 - percent.NA / 100)`).  Only included
#'       when `index.mode = "density"`.}
#'     \item{`Index`}{Composite quality index (see *Index formula* section).
#'       Higher values indicate better clusters.}
#'   }
#'
#' @seealso [MakeClusterList()] for generating the cluster list input.
#'
#' @export
#'
#' @examples
#' # Typical usage with TMT ratio data and default density index:
#' cl <- MakeClusterList(ex_tiny_ptm_table)
#' eval_df <- EvaluateClusters(cl[[1]], ex_tiny_ptm_table, data.type = "ratio")
#' head(eval_df)
#'
#' # Unordered cohort data (e.g. BRCA): disable slope filter
#' eval_brca <- EvaluateClusters(
#'   brca_clusters, brca_tbl,
#'   data.type  = "ratio",
#'   use.slope  = FALSE,
#'   index.mode = "density"
#' )
#'
#' # LINCS data with ratio columns to strip, size-based index:
#' eval_lincs <- EvaluateClusters(
#'   lincs_clusters, lincs_tbl,
#'   data.type          = "ratio",
#'   index.mode         = "size",
#'   use.slope          = TRUE,
#'   ratio.col.pattern  = "to"
#' )
EvaluateClusters <- function(
    clusterlist,
    tbl.sc,
    data.type         = c("ratio", "intensity", "count"),
    index.mode        = c("density", "size"),
    use.slope         = TRUE,
    ratio.col.pattern = NULL,
    verbose           = TRUE
) {

  # ---- argument validation ------------------------------------------------
  data.type  <- match.arg(data.type)
  index.mode <- match.arg(index.mode)

  if (!is.list(clusterlist) || length(clusterlist) == 0L) {
    stop("'clusterlist' must be a non-empty list.")
  }
  if (!is.data.frame(tbl.sc) && !is.matrix(tbl.sc)) {
    stop("'tbl.sc' must be a data frame or matrix.")
  }
  if (is.null(rownames(tbl.sc))) {
    stop("'tbl.sc' must have row names identifying genes / PTMs.")
  }

  # ---- helper: number of non-missing values in a vector ------------------
  .filled    <- function(x) sum(!is.na(x))
  .nmissing  <- function(x) sum( is.na(x))

  # ---- helper: extract gene names from one cluster element ---------------
  # Accepts either a character vector of names or a data frame with a
  # PTMnames column (MakeClusterList output format).
  .gene.names <- function(cl.el) {
    if (is.data.frame(cl.el)) {
      if ("PTMnames" %in% names(cl.el))  return(cl.el[["PTMnames"]])
      if ("Gene.Name" %in% names(cl.el)) return(cl.el[["Gene.Name"]])
      stop("Cluster data frame must contain a 'PTMnames' or 'Gene.Name' column.")
    }
    if (is.character(cl.el)) return(cl.el)
    stop("Each element of 'clusterlist' must be a character vector or data frame.")
  }

  # ---- helper: linear slope of a numeric vector against its index --------
  # Returns NA if fewer than 2 non-missing values are available.
  .get.slope <- function(x) {
    idx <- which(!is.na(x))
    if (length(idx) < 2L) return(NA_real_)
    stats::coef(stats::lm(x[idx] ~ idx))[2L]
  }

  # ---- initialise results data frame -------------------------------------
  n.clusters <- length(clusterlist)
  evaluation <- data.frame(
    Group                    = seq_len(n.clusters),
    no.genes                 = NA_integer_,
    culled.by.slope          = NA_integer_,
    percent.singlesamplegenes = NA_real_,
    no.samples               = NA_integer_,
    percent.singlegenesamples = NA_real_,
    total.signal             = NA_real_,
    percent.NA               = NA_real_,
    intensity                = NA_real_,
    Index                    = NA_real_,
    stringsAsFactors         = FALSE
  )

  # ---- main loop ----------------------------------------------------------
  for (i in seq_len(n.clusters)) {

    if (verbose) message("Starting Group ", i)

    gene.names              <- .gene.names(clusterlist[[i]])
    evaluation$no.genes[i] <- length(gene.names)

    # Extract the cluster sub-table.
    # When the cluster has a single gene, data.frame() is needed to prevent
    # drop to a vector.
    if (length(gene.names) == 1L) {
      at <- data.frame(tbl.sc[gene.names, , drop = FALSE])
    } else {
      at <- data.frame(tbl.sc[rownames(tbl.sc) %in% gene.names, , drop = FALSE])
    }

    # Optionally remove ratio descriptor columns (e.g. LINCS "H1_to_control").
    if (!is.null(ratio.col.pattern)) {
      ratio.cols <- grep(ratio.col.pattern, names(at))
      if (length(ratio.cols) > 0L) at <- at[, -ratio.cols, drop = FALSE]
    }

    # Apply absolute value for ratio data so that signal magnitude is
    # assessed without sign cancellation.
    if (data.type == "ratio") at <- abs(at)

    # Restrict to samples that have at least one non-missing value.
    has.data   <- which(vapply(at, .filled, integer(1L)) > 0L)
    n.has.data <- length(has.data)

    if (n.has.data > 1L) {
      acol <- names(at)[has.data]
    } else {
      acol <- if (n.has.data == 1L) names(at)[has.data] else character(0L)
    }
    evaluation$no.samples[i] <- length(acol)

    # Restrict columns to those with data before further calculations.
    if (length(acol) > 0L) {
      at <- at[, acol, drop = FALSE]
    }

    evaluation$total.signal[i] <- sum(at, na.rm = TRUE)

    # ---- degenerate case: single sample or single gene ------------------
    # Diagnostics cannot be computed meaningfully; mark as 100 % single.
    if (length(acol) <= 1L || length(gene.names) == 1L) {
      evaluation$culled.by.slope[i]           <- length(gene.names)
      evaluation$percent.NA[i]                <- 0
      evaluation$percent.singlesamplegenes[i] <- 100
      evaluation$percent.singlegenesamples[i] <- 100

    } else {
      # ---- full diagnostic block ----------------------------------------

      evaluation$percent.NA[i] <-
        100 * sum(vapply(at, .nmissing, integer(1L))) /
        (nrow(at) * ncol(at))

      # Genes present in only one sample.
      single.sample.genes <- at[vapply(seq_len(nrow(at)), function(r)
        .filled(as.numeric(at[r, ])) == 1L, logical(1L)), , drop = FALSE]
      evaluation$percent.singlesamplegenes[i] <-
        100 * nrow(single.sample.genes) / nrow(at)

      # Samples that contain only one gene.
      single.gene.samples <-
        sum(vapply(at, .filled, integer(1L)) == 1L)
      evaluation$percent.singlegenesamples[i] <-
        100 * single.gene.samples / ncol(at)

      # ---- slope filter -------------------------------------------------
      if (use.slope) {
        # Sort columns by decreasing total signal, then rows by decreasing
        # total signal, to create a monotonically organised matrix for slope
        # assessment.
        col.order <- order(-vapply(at, function(x) sum(x, na.rm = TRUE),
                                   numeric(1L)))
        row.order <- order(-vapply(seq_len(nrow(at)), function(r)
          sum(as.numeric(at[r, ]), na.rm = TRUE), numeric(1L)))
        cluster.mo <- at[row.order, col.order, drop = FALSE]

        slopes    <- apply(cluster.mo, 1, .get.slope)
        bad.slope <- names(which(is.na(slopes) | slopes > 0))

        if (verbose && length(bad.slope) > 0L)
          message("  ", length(bad.slope), " gene(s) culled by slope filter.")

        evaluation$culled.by.slope[i] <- length(bad.slope)
      } else {
        evaluation$culled.by.slope[i] <- 0L
      }
    } # end full diagnostic block

  } # end cluster loop

  # ---- compute index for all clusters ------------------------------------

  cleargenes  <- evaluation$no.genes - evaluation$culled.by.slope
  realsamples <- evaluation$no.samples -
    (evaluation$no.samples * evaluation$percent.singlegenesamples / 100)
  intensity   <- evaluation$total.signal -
    (evaluation$total.signal * evaluation$percent.NA / 100)

  evaluation$intensity <- intensity

  if (index.mode == "density") {
    # Reward data density per gene: dividing by no.genes penalises large
    # diffuse clusters relative to compact, information-rich ones.
    evaluation$Index <-
      (1 + realsamples) * (1 + cleargenes) /
      ((1 + evaluation$percent.NA) * evaluation$no.genes)
  } else {
    # "size": reward large, signal-dense clusters.
    evaluation$Index <-
      intensity * (1 + realsamples) * (1 + cleargenes) /
      (1 + evaluation$percent.NA)
  }

  # Drop the intensity column when using the size index (it is already
  # embedded in the index formula and clutters the output).
  output.cols <- c("Group", "no.genes", "culled.by.slope",
                   "percent.singlesamplegenes", "no.samples",
                   "percent.singlegenesamples", "total.signal",
                   "percent.NA", "Index")
  if (index.mode == "density") {
    output.cols <- append(output.cols, "intensity",
                          after = which(output.cols == "percent.NA"))
  }

  eval.sort <- evaluation[
    order(-evaluation$Index, evaluation$percent.NA),
    output.cols
  ]

  return(eval.sort)
}
