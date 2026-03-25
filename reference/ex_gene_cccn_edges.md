# Gene CCCN Edgelist

Gene Co-Cluster Correlation Network as an Edgelist

## Usage

``` r
ex_gene_cccn_edges
```

## Format

Data Frame of 2279 rows and 4 columns

- source:

  A Gene

- target:

  A Gene

- Weight:

  Value from -1 to 1

- interaction:

  Either correlation, positive correlation, or negative correlation

## Source

"Produced by MakeCorrelationNetwork"

## Examples

``` r
head(ex_gene_cccn_edges)
#>   source target     Weight          interaction
#> 1 ADGRL2  ALDOA -0.4535714          correlation
#> 2   ACP1    ALK  0.6000000 positive correlation
#> 3  AHNAK   ANO1  1.5428571 positive correlation
#> 4   ACP1  ANXA2 -0.2571429          correlation
#> 5 ADAM10  ANXA2  0.1702786          correlation
#> 6  ALDOA  ANXA2 -0.7524510 negative correlation
```
