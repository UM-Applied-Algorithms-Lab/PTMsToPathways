# Adjust edge line widths in the active Cytoscape network

Computes edge widths from the `Weight` column of the Cytoscape edge
table, optionally log-transforming the values, and loads them back as a
continuous edge width mapping.

## Usage

``` r
setEdgeWidths(ffactor = -1.2, log = TRUE)
```

## Arguments

- ffactor:

  Numeric offset applied to all computed widths; a negative value shifts
  widths down (narrower). Defaults to `-1.2`.

- log:

  Logical; if `TRUE` (default), widths are computed as
  `log(|Weight|) + ffactor - min(log(|Weight|))`. If `FALSE`, widths are
  `ffactor * |Weight|`.

## Value

Called for its side effects in Cytoscape.
