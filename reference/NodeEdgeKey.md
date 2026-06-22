# Create a node and edge legend network in Cytoscape

Builds a demo network in Cytoscape that illustrates all node shapes,
border colors, and edge colors used by the PTMsToPathways visual style,
serving as an interactive legend.

## Usage

``` r
NodeEdgeKey(visual.style.name = "PTMsToPathways.style")
```

## Arguments

- visual.style.name:

  Character string name of the visual style to apply; defaults to
  `"PTMsToPathways.style"`.

## Value

Called for its side effects; creates a legend network in Cytoscape.
