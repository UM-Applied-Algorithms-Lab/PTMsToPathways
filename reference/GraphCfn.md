# Graph a Cluster Filtered Network in Cytoscape

Creates a Cytoscape network from CFN edge and node tables, then applies
the PTMsToPathways node shape/color and edge color/width visual
mappings. Requires Cytoscape to be open and `RCy3` to be installed.

## Usage

``` r
GraphCfn(
  cfn.edges,
  cfn.nodes,
  Network.title = "CFN",
  Network.collection = "PTMsToPathways",
  visual.style.name = "PTMsToPathways.style"
)
```

## Arguments

- cfn.edges:

  A data frame of CFN edges (`source`, `target`, `interaction`,
  `Weight`).

- cfn.nodes:

  A data frame of CFN node attributes with an `id` column.

- Network.title:

  Character string title for the new Cytoscape network; defaults to
  `"CFN"`.

- Network.collection:

  Character string name for the Cytoscape collection; defaults to
  `"PTMsToPathways"`.

- visual.style.name:

  Character string name for the visual style to create; defaults to
  `"PTMsToPathways.style"`.

## Value

Called for its side effects; creates a styled network in Cytoscape.
