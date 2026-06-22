# Map node size and color to ratio-scale data in Cytoscape

Applies continuous node size and color mappings to the active Cytoscape
network using fixed log2-based control points suited for ratio or
fold-change data centered on zero.

## Usage

``` r
setNodeColorToRatios(plotcol)
```

## Arguments

- plotcol:

  A character string naming the node table column to map to both node
  size and node color.

## Value

Called for its side effects in Cytoscape.
