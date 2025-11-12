# Full GeneMANIA Edges Example

Network of interactions from the GeneMANIA database.

## Usage

``` r
ex.gm.edges
```

## Format

Dataframe of 601,552 rows and 10 columns:

- data.type:

  Type of interaction; typically co-expression

- highlight:

  Internal flag

- interaction:

  Type of interaction

- name:

  The names of the two genes interacting as well as the data type

- networks:

  Source of information

- normalized.max.weight:

  raw.weights scaled to be consistent

- raw.weights:

  A number weighting the strength of the interaction

- selected:

  Internal flag

- shared.interaction:

  Type of interaction

- shared.name:

  The names of the two genes interacting as well as the data type

## Source

<https://apps.cytoscape.org/apps/genemania>

## Examples

``` r
head(ex.gm.edges)
#>   data.type highlight interaction
#> 1   Pathway         1          NA
#> 2   Pathway         1          NA
#> 3   Pathway         1          NA
#> 4   Pathway         1          NA
#> 5   Pathway         1          NA
#> 6   Pathway         1          NA
#>                                                  name               networks
#> 1 H__sapiens__1_-780964|H__sapiens__1_-777445|Pathway CELL_MAP|Wu-Stein-2010
#> 2 H__sapiens__1_-774247|H__sapiens__1_-777445|Pathway CELL_MAP|Wu-Stein-2010
#> 3 H__sapiens__1_-774247|H__sapiens__1_-780964|Pathway CELL_MAP|Wu-Stein-2010
#> 4 H__sapiens__1_-783570|H__sapiens__1_-777445|Pathway CELL_MAP|Wu-Stein-2010
#> 5 H__sapiens__1_-783570|H__sapiens__1_-774247|Pathway CELL_MAP|Wu-Stein-2010
#> 6 H__sapiens__1_-774485|H__sapiens__1_-778623|Pathway REACTOME|Wu-Stein-2010
#>   normalized.max.weight                               raw.weights selected
#> 1          6.132073e-03  0.17951326072216034|0.015473525039851665    false
#> 2          4.651681e-03  0.13617554306983948|0.020789392292499542    false
#> 3          6.132073e-03  0.17951326072216034|0.013418099842965603    false
#> 4          5.313012e-03  0.15553568303585052|0.023973975330591202    false
#> 5          5.313012e-03  0.15553568303585052|0.020789392292499542    false
#> 6          5.446725e-05 0.011579038575291634|0.010383594781160355    false
#>   shared.interaction                                         shared.name
#> 1                 NA H__sapiens__1_-780964|H__sapiens__1_-777445|Pathway
#> 2                 NA H__sapiens__1_-774247|H__sapiens__1_-777445|Pathway
#> 3                 NA H__sapiens__1_-774247|H__sapiens__1_-780964|Pathway
#> 4                 NA H__sapiens__1_-783570|H__sapiens__1_-777445|Pathway
#> 5                 NA H__sapiens__1_-783570|H__sapiens__1_-774247|Pathway
#> 6                 NA H__sapiens__1_-774485|H__sapiens__1_-778623|Pathway
```
