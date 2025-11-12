# Full GeneMANIA Network Example

Network of relationships between genes based on information from the
GeneMANIA database.

## Usage

``` r
ex.gm.network
```

## Format

Dataframe of 601,552 rows and 4 columns:

- Gene.1:

  The gene interacting with Gene.2

- Gene.2:

  The gene interacting with Gene.1

- raw.weights:

  Strength of the interaction

- GM.weights:

  Weights from Genemania file

## Source

<https://apps.cytoscape.org/apps/genemania>

## Examples

``` r
head(ex.gm.network)
#>    Gene.1  Gene.2 interaction   GM.weights
#> 1     APP   APH1A     Pathway 6.132073e-03
#> 6   SF3B2 HNRNPH2     Pathway 5.446725e-05
#> 7  HNRNPF HNRNPH2     Pathway 5.446725e-05
#> 8  HNRNPF   SF3B2     Pathway 5.446725e-05
#> 9  HNRNPU HNRNPH2     Pathway 5.446725e-05
#> 10 HNRNPU   SF3B2     Pathway 5.446725e-05
```
