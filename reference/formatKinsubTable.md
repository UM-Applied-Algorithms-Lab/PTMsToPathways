# Format Kinsub Table

Include kinase substrate dataset from PhosphoSitePlus
https://www.phosphosite.org/staticDownloads

## Usage

``` r
formatKinsubTable(
  kinasesubstrate.filename = "Kinase_Substrate_Dataset.txt",
  gene.cccn.nodes
)
```

## Arguments

- kinasesubstrate.filename:

  The path to the kinase substrate database file from
  https://www.phosphosite.org/staticDownloads

- gene.cccn.nodes:

  A list of nodes that are in the Gene CoCluster Correlation Network
  derived from common clusters between the three distance metrics
  (Euclidean, Spearman, and Combined (SED))

## Value

An edgelist filtered by the gene cccn and nodenames
