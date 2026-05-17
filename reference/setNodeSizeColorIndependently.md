# Set node size and color from independent Cytoscape node attributes

Apply independent continuous visual mappings for node size and node
color in the active Cytoscape network using columns from the node table.
This helper is intended for PTMsToPathways-style networks where one node
attribute controls size and a different attribute controls color.

## Usage

``` r
setNodeSizeColorIndependently(sizeplotcol, colorplotcol, ratio = FALSE)
```

## Arguments

- sizeplotcol:

  A character string naming the node table column to use for node size
  mapping.

- colorplotcol:

  A character string naming the node table column to use for node color
  mapping.

- ratio:

  Logical; if `TRUE`, use predefined log2 ratio control points and ratio
  color palette. If `FALSE`, compute control points from the observed
  ranges of `sizeplotcol` and `colorplotcol`.

## Value

This function is called for its side effects in Cytoscape and returns
`NULL` invisibly.

## Details

If either requested column is not present in the Cytoscape node table,
the user is prompted to choose a valid column name interactively. For
non-ratio data, color and size control points are derived from the
observed ranges of the selected columns. For ratio-style data, fixed
log2-based control points are used.

For `ratio = FALSE`, this function builds separate continuous mappings
for node color and node size based on the minimum and maximum values
observed in the selected Cytoscape node table columns.
Blue-to-white-to-yellow color gradients are used for color mapping.

For `ratio = TRUE`, the function assumes ratio-like values centered on
zero and applies fixed log2-scaled control points for both node size and
node color. In this mode, a blue-to-green-to-yellow palette is used.

The function also locks node width and height and sets the default node
selection color to magenta.

## See also

[`RCy3::setNodeColorMapping()`](https://rdrr.io/pkg/RCy3/man/setNodeColorMapping.html),
[`RCy3::setNodeSizeMapping()`](https://rdrr.io/pkg/RCy3/man/setNodeSizeMapping.html),
[`RCy3::lockNodeDimensions()`](https://rdrr.io/pkg/RCy3/man/lockNodeDimensions.html),
[`RCy3::getTableColumns()`](https://rdrr.io/pkg/RCy3/man/getTableColumns.html)

## Examples

``` r
if (FALSE) { # \dontrun{
setNodeSizeColorIndependently(
  sizeplotcol = "mean_expression",
  colorplotcol = "logFC",
  ratio = FALSE
)

setNodeSizeColorIndependently(
  sizeplotcol = "abundance_ratio",
  colorplotcol = "abundance_ratio",
  ratio = TRUE
)
} # }
```
