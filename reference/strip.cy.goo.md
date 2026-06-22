# Strip Cytoscape metadata strings to extract node names

Parses verbose Cytoscape node identifier strings of the form
`"...Object=NODENAME, ..."` and returns just the node name portion.

## Usage

``` r
strip.cy.goo(test)
```

## Arguments

- test:

  Character vector of raw Cytoscape node identifier strings.

## Value

A character vector of extracted node names.
