# Remove self-loop edges from an edge file

Drops any rows where the source and target node are identical.

## Usage

``` r
remove.autophos(edgefile)
```

## Arguments

- edgefile:

  A data frame edge list with `source` and `target` columns.

## Value

The edge file with self-loop rows removed.
