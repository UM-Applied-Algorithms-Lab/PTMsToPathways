# Apply edge visual mappings in the active Cytoscape network

Sets edge line widths (log-scaled from correlation weights), colors, and
arrow types based on the `interaction` column. Handles merged edge
labels by extracting the primary interaction type before applying
mappings.

## Usage

``` r
setCorrEdgeAppearance()
```

## Value

Called for its side effects in Cytoscape.
