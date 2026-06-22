# Get Cytoscape-formatted edge names

Constructs edge name strings in the format Cytoscape uses internally
(`source (interaction) target`), suitable for use with
[`RCy3::selectEdges`](https://rdrr.io/pkg/RCy3/man/selectEdges.html).

## Usage

``` r
getCyEdgeNames(edgefile)
```

## Arguments

- edgefile:

  A data frame with columns `source`, `interaction`, and `target`.

## Value

A character vector of edge name strings.
