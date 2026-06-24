# Graph a Pathway Crosstalk Network in Cytoscape

Creates a Cytoscape network from a Pathway Crosstalk Network (PCN) data
frame, applying edge color and width mappings. Requires Cytoscape to be
open and `RCy3` to be installed.

## Usage

``` r
cytoscape.graph.PCN.pathways(PCN, net.name, Jaccard.edges = TRUE)
```

## Arguments

- PCN:

  A data frame representing the pathway crosstalk network with columns
  `source`, `target`, `interaction`, and `Weight`.

- net.name:

  A character string used as the base network title in Cytoscape.

- Jaccard.edges:

  Logical; if `FALSE`, pathway Jaccard similarity edges are removed
  before plotting. Defaults to `TRUE`.

## Value

Called for its side effects; creates a network in Cytoscape.
