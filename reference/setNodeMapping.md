# Apply node visual mappings in the active Cytoscape network

Sets default node appearance (shape, color, size, border) and applies
discrete visual mappings for node shape and border color based on the
`nodeType` column from the function key.

## Usage

``` r
setNodeMapping(cf = RCy3::getTableColumns("node"))
```

## Arguments

- cf:

  A data frame of node attributes from the active Cytoscape network;
  defaults to the full node table retrieved via
  [`RCy3::getTableColumns`](https://rdrr.io/pkg/RCy3/man/getTableColumns.html).

## Value

Called for its side effects in Cytoscape.
