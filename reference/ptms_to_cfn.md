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

``` r
# Example input objects
ptms <- c("TP53 p S15", "BRCA1 p S123; BRCA1 p T124", "MDM2 p S200")
# Example network (edge list with 'source', 'target', and cluster info, could be data.frame or igraph)
cfn.merged <- data.frame(source = c("TP53", "BRCA1", "BRCA1", "MDM2"),
                         target = c("BRCA1", "MDM2", "TP53", "TP53"),
                         cluster = c(1,1,2,1))
# Suppose filter.edges.0 and get.co.clustered.ptms are also defined and loaded
# The following returns the gene/PTM subnetwork
res <- ptms_to_cfn(ptms, cfn = cfn.merged, pepsep = ";")
#> Error in ptms_to_cfn(ptms, cfn = cfn.merged, pepsep = ";"): object 'cfn.merged' not found
print(res)
#> Error: object 'res' not found
```
