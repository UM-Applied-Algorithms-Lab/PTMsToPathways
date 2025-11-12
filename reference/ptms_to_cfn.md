# Extracts co-clustered PTM and gene network from a cluster filtered network object.

This function takes a list of PTM (post-translational modification) site
IDs and a cluster-filtered network, extracts the genes from unambiguous
and ambiguous PTM entries, then returns the co-clustered subnetwork.

## Usage

``` r
ptms_to_cfn(ptms, cfn = cfn.merged, pepsep = ";")
```

## Arguments

- ptms:

  Character vector of PTM site strings (e.g., \\TP53 p S15\\)

- cfn:

  List or data frame representing the cluster filtered network (default:
  global cfn.merged)

- pepsep:

  Character used to split ambiguous PTM entries (default: \\;\\)

## Value

Subnetwork object with co-clustered PTMs and genes

## Examples
