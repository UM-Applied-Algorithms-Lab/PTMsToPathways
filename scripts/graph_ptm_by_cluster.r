# ============================================================
#  graph.ptm.by.cluster()
#  Large phosphopeptide heatmap, grouped by consensus cluster
#  - Blue (down) -> light grey (neutral/zero) -> Yellow (up)
#  - NA values drawn in black
#  - Color key and cluster legend saved as separate PDFs
#  - Cluster side-bar colors are high-contrast, non-rainbow
# ============================================================

graph.ptm.by.cluster <- function(
    ptmtable,
    common.clusters,
    filename          = "ptm_by_cluster_heatmap.pdf",
    legend.filename   = NULL,    # separate cluster-color legend PDF
    heatkey.filename  = NULL,    # separate blue-grey-yellow scale PDF
    cluster.order     = names(common.clusters),
    order.rows        = c("as.is", "mean", "slope", "hclust"),
    cluster.cols      = FALSE,
    zlim              = 3,
    min.shared        = 2,
    show.row.labels   = FALSE,
    show.col.labels   = TRUE,
    row_cex           = 0.2,
    col_cex           = 0.8,
    main              = "Phosphopeptides grouped by cluster"
) {

  # ---- helpers -------------------------------------------------------

  order.rows <- match.arg(order.rows)

  ## NA-aware Euclidean distance (pairwise column overlap)
  safe_dist2 <- function(m, min.shared = 2) {
    m  <- as.matrix(m)
    nr <- nrow(m)
    if (nr <= 1) return(as.dist(matrix(0, nr, nr)))
    dmat      <- matrix(0, nr, nr)
    rownames(dmat) <- colnames(dmat) <- rownames(m)
    for (i in seq_len(nr - 1)) {
      for (j in (i + 1):nr) {
        ok <- is.finite(m[i, ]) & is.finite(m[j, ])
        d  <- if (sum(ok) >= min.shared) sqrt(sum((m[i,ok] - m[j,ok])^2)) else NA_real_
        dmat[i,j] <- dmat[j,i] <- d
      }
    }
    fv       <- dmat[upper.tri(dmat) & is.finite(dmat)]
    fallback <- if (length(fv)) 2 * max(fv) else 1
    dmat[!is.finite(dmat)] <- fallback
    diag(dmat) <- 0
    as.dist(dmat)
  }

  ## row-wise linear slope helper for order.rows = "slope"
  row_slope <- function(v) {
    ok <- which(is.finite(v))
    if (length(ok) < 2) return(NA_real_)
    coef(lm(v[ok] ~ ok))[2]
  }

  ## high-contrast qualitative palette for cluster sidebar
  ## Strategy: fixed set of maximally-distinct hues, then when n > set size
  ## fall back to HCL with large hue steps so adjacent bars never look similar.
  make_cluster_colors <- function(n) {
    # 22 hand-picked colors spanning very different hues AND luminances
    base.cols <- c(
      "#E41A1C",  # red
      "#377EB8",  # blue
      "#4DAF4A",  # green
      "#FF7F00",  # orange
      "#984EA3",  # purple
      "#A65628",  # brown
      "#00CED1",  # dark turquoise
      "#F781BF",  # pink
      "#1B9E77",  # teal
      "#FFD92F",  # yellow
      "#7570B3",  # lavender
      "#E7298A",  # hot pink
      "#66A61E",  # olive green
      "#E6AB02",  # gold
      "#D95F02",  # burnt orange
      "#66C2A5",  # mint
      "#FC8D62",  # salmon
      "#8DA0CB",  # periwinkle
      "#A6D854",  # lime
      "#999999",  # grey
      "#A6761D",  # khaki
      "#666666"   # dark grey
    )
    if (n <= length(base.cols)) {
      return(base.cols[seq_len(n)])
    }
    # For very large n: generate HCL colors stepping by large hue angle
    # (golden-angle spacing ~137.5 deg) to maximise adjacent contrast
    hues <- ((seq_len(n) - 1) * 137.508) %% 360
    grDevices::hcl(h = hues, c = 70, l = 55)
  }

  ## standalone cluster-color legend PDF
  write_cluster_legend <- function(cluster.palette, filename, cex = 0.9) {
    n    <- length(cluster.palette)
    ncol <- if (n > 18) 2L else 1L
    pdf(filename,
        width  = max(5, 3 * ncol),
        height = max(4, 0.32 * ceiling(n / ncol) + 1))
    on.exit(dev.off())
    par(mar = c(0.3, 0.3, 0.3, 0.3), xpd = NA)
    plot.new()
    legend("topleft",
           inset  = 0.01,
           legend = names(cluster.palette),
           fill   = cluster.palette,
           border = NA,
           bty    = "n",
           cex    = cex,
           ncol   = ncol)
  }

  ## standalone heat-scale (colour key) PDF
  ## image() requires: nrow(z) == length(x)-1, ncol(z) == length(y)-1
  write_heat_key <- function(filename, zlim = 3) {
    n     <- 256L                                     # number of colour cells
    cols  <- colorRampPalette(c("#3333FF","#E6E6E6","#FFFF00"),
                               space = "rgb", interpolate = "linear")(n)
    # breakpoints: length n+1 so the z matrix is (1 x n)
    brks  <- seq(-zlim, zlim, length.out = n + 1L)
    z     <- matrix(seq_len(n), nrow = 1L, ncol = n)  # 1 x n

    pdf(filename, width = 1.8, height = 4.5)
    on.exit(dev.off())
    # left margin wide enough for the bar; right margin for axis labels
    par(mar = c(2, 1.0, 1.5, 2.8))
    # x: 2 breakpoints = 1 column; y: n+1 breakpoints = n rows
    image(x = c(0, 1), y = brks, z = z,
          col = cols, xaxt = "n", yaxt = "n", xlab = "", ylab = "")
    axis(4, at = pretty(c(-zlim, zlim)), las = 2, cex.axis = 0.85)
    mtext("Signal", side = 4, line = 1.8, cex = 0.85)
    box()
  }

  # ---- data prep -----------------------------------------------------

  ptmtable <- as.matrix(ptmtable)
  rownames(ptmtable)       <- trimws(rownames(ptmtable))
  names(common.clusters)   <- trimws(names(common.clusters))
  common.clusters          <- lapply(common.clusters, trimws)

  # drop rows that are entirely non-finite
  ptmtable <- ptmtable[rowSums(is.finite(ptmtable)) > 0, , drop = FALSE]

  cluster.order <- intersect(cluster.order, names(common.clusters))

  ordered.blocks <- list()
  cluster.id     <- character(0)

  for (cl in cluster.order) {
    pep  <- unique(common.clusters[[cl]])
    pep  <- pep[pep %in% rownames(ptmtable)]
    if (!length(pep)) next
    subm <- ptmtable[pep, , drop = FALSE]

    if (nrow(subm) > 1) {
      subm <- switch(order.rows,
        mean  = subm[order(rowMeans(subm, na.rm=TRUE), decreasing=TRUE, na.last=TRUE), , drop=FALSE],
        slope = { sl <- apply(subm, 1, row_slope)
                  subm[order(sl, decreasing=TRUE, na.last=TRUE), , drop=FALSE] },
        hclust = subm[hclust(safe_dist2(subm, min.shared))$order, , drop=FALSE],
        subm   # "as.is"
      )
    }

    ordered.blocks[[cl]] <- subm
    cluster.id           <- c(cluster.id, rep(cl, nrow(subm)))
  }

  if (!length(ordered.blocks)) stop("No peptides from common.clusters matched rownames(ptmtable).")

  mat <- do.call(rbind, ordered.blocks)

  if (cluster.cols && ncol(mat) > 1) {
    mat <- mat[, hclust(safe_dist2(t(mat), min.shared))$order, drop=FALSE]
  }

  cluster.sizes <- sapply(ordered.blocks, nrow)
  rowsep        <- cumsum(cluster.sizes)[-length(cluster.sizes)]   # no sep after last block

  # ---- colour setup --------------------------------------------------

  heatcols        <- colorRampPalette(c("#3333FF","#E6E6E6","#FFFF00"),
                                      space="rgb", interpolate="linear")(255)
  breaks          <- seq(-zlim, zlim, length.out = 256)

  cluster.palette <- make_cluster_colors(length(ordered.blocks))
  names(cluster.palette) <- names(ordered.blocks)
  row.side.colors <- unname(cluster.palette[cluster.id])

  # ---- device sizing -------------------------------------------------
  # Width: accommodate column labels; Height: 1 px per row ~ 1/72 inch
  # Give at least 10 inches height so the plot region is never microscopic.

  pdf.w <- max(14, ncol(mat) / 5)
  pdf.h <- max(10, nrow(mat) / 40)

  # ---- heatmap (key = FALSE → no internal key panel) ---------------

  pdf(filename, width = pdf.w, height = pdf.h)
  gplots::heatmap.2(
    mat,
    Rowv        = FALSE,
    Colv        = FALSE,
    dendrogram  = "none",
    trace       = "none",
    scale       = "none",
    col         = heatcols,
    breaks      = breaks,
    na.color    = "black",
    key         = FALSE,          # << prevents the "margins too large" crash
    symbreaks   = FALSE,
    density.info = "none",
    labRow      = if (show.row.labels) rownames(mat) else NA,
    labCol      = if (show.col.labels) colnames(mat) else NA,
    RowSideColors = row.side.colors,
    # Narrow the RowSideColors sidebar: lwid[1]=sidebar, lwid[2]=body
    lwid        = c(0.1, 8),
    lhei        = c(0.5, 4),
    rowsep      = rowsep,
    sepcolor    = "white",
    sepwidth    = c(0.003, 0.003),
    cexRow      = row_cex,
    cexCol      = col_cex,
    margins     = c(10, 6),
    main        = main
  )
  dev.off()
  message("Heatmap written to: ", filename)

  # ---- optional legend files ----------------------------------------

  if (!is.null(legend.filename)) {
    write_cluster_legend(cluster.palette, legend.filename)
    message("Cluster legend written to: ", legend.filename)
  }

  if (!is.null(heatkey.filename)) {
    write_heat_key(heatkey.filename, zlim = zlim)
    message("Heat key written to: ", heatkey.filename)
  }

  invisible(list(
    mat             = mat,
    blocks          = ordered.blocks,
    rowsep          = rowsep,
    cluster.palette = cluster.palette
  ))
}


# ============================================================
#  Example call — adjust paths/names to match your session
# ============================================================
#
# res <- graph.ptm.by.cluster(
#   ptmtable         = ptmtable,
#   common.clusters  = common.clusters,          # use all clusters
#   filename         = "ptm_all_clusters.pdf",
#   legend.filename  = "ptm_legend.pdf",
#   heatkey.filename = "ptm_heatkey.pdf",
#   order.rows       = "hclust",
#   zlim             = 3,
#   show.row.labels  = FALSE,
#   show.col.labels  = TRUE,
#   col_cex          = 0.7
# )
#
# Inspect colour mapping:
# res$cluster.palette
#
# Subset to first 3 clusters only:
# res3 <- graph.ptm.by.cluster(
#   ptmtable        = ptmtable,
#   common.clusters = common.clusters[1:3],
#   filename        = "ptm_clusters_1_3.pdf",
#   legend.filename = "ptm_clusters_1_3_legend.pdf",
#   heatkey.filename= "ptm_clusters_1_3_heatkey.pdf",
#   order.rows      = "hclust",
#   zlim            = 3
# )
