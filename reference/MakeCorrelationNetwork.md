# Make Correlation Network

Make Correlation Network filters a correlation matrix of PTMs by
specific PTMs. It groups the PTM correlation matrix based on the Genes
of PTMs. By summing these submatrices, it also produces a gene by gene
cocluster correlation network shows strength of relationships between
proteins using the common clusters between the three distance metrics.

## Usage

``` r
MakeCorrelationNetwork(adj.consensus.matrix, ptm.correlation.matrix)
```

## Arguments

- adj.consensus.matrix:

  Adjacency matrix showing PTM co-cluster relationships from all three
  t-SNE embeddings

- ptm.correlation.matrix:

  A data frame showing the correlation between ptms (as the rows and the
  columns). NAs are placed along the diagonal.

## Value

A list containing the following data structures at the given index:

1.  The PTM CoCluster Correlation Network as an edgelist.

2.  The Gene CoCluster Correlation Network as an edgelist.

3.  A list of nodes that are in the Gene CoCluster Correlation Network.

## Examples

``` r
Example_Output <- MakeCorrelationNetwork(ex_adj_consensus, ex_ptm_correlation_matrix)
#> Making PTM CCCN
#> PTM CCCN complete after 0.25 secs total.
#> Making Gene CCCN
#> Gene CCCN complete after 2.27 secs total.
head(Example_Output[[1]])
#>                                                                              source
#> 1                                                                       SHC1 p S426
#> 2                                                                        PXN p S119
#> 3                                                                      PRKCD p S304
#> 4                                                                       CTTN p S417
#> 5                                                                      SRSF9 p S178
#> 6 HSP90AA1 p S63; HSP90AA2P p S63; HSP90AB1 p S58; HSP90AB3P p S58; HSP90AB2P p S58
#>            target     Weight          interaction
#> 1      SYK p S295 -1.0000000 negative correlation
#> 2   ANXA11 p S480 -0.7642857 negative correlation
#> 3     CTTN p S447  0.7000000 positive correlation
#> 4     CTTN p S418  1.0000000 positive correlation
#> 5      SHB p S247 -1.0000000 negative correlation
#> 6 HSP90AB4P p S34  1.0000000 positive correlation
head(Example_Output[[2]])
#>   source target     Weight          interaction
#> 1 ADGRL2  ALDOA -0.4535714          correlation
#> 2   ACP1    ALK  0.6000000 positive correlation
#> 3  AHNAK   ANO1  1.5428571 positive correlation
#> 4   ACP1  ANXA2 -0.2571429          correlation
#> 5 ADAM10  ANXA2  0.1702786          correlation
#> 6  ALDOA  ANXA2 -0.7524510 negative correlation
```
