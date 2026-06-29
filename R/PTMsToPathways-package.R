#' PTMsToPathways: Filtered CoCluster Correlation Network Guide
#'
#' PTMsToPathways provides tools for turning mass spectrometry data on
#' post-translational modifications into clustered networks, co-cluster
#' correlation networks, and downstream pathway and Cytoscape-ready views.
#' The package includes example PTM tables, BRCA example networks, and helper
#' functions for building CCCNs, cluster-filtered PPIs, and pathway crosstalk
#' networks.
#'
#' Typical entry points are [MakeClusterList()], [MakeCorrelationNetwork()],
#' [BuildClusterFilteredNetwork()], [BuildPathwayCrosstalkNetwork()], and the
#' Cytoscape helpers in [GraphCfn()] and related functions.
#'
#' Example data objects are documented in [data_documentation.R].
#'
#' @docType package
#' @name PTMsToPathways
#' @aliases PTMsToPathways-package
#' @keywords package
#' @seealso [browseVignettes("PTMsToPathways")]
NULL