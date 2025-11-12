# Funckey

DESCRIPTION

## Usage

``` r
ex.funckey
```

## Format

Dataframe of 24339 rows and 8 columns:

- Gene.Name:

  Name of the gene

- Approved.Name:

  Name of the protein

- Hugo.Gene.Family:

  Family of the gene

- HPRD.Function:

  Function of the protein

- nodeType:

  Type of protein

- Domains:

  Known domains of protein

- Compartment:

  Location of the protein

- Compartment.Overview:

  Alternate location of the protein

## Source

""

## Examples

``` r
head(ex.funckey)
#>   Gene.Name                     Approved.Name
#> 1      A1BG            alpha-1-B glycoprotein
#> 2      A1CF    APOBEC1 complementation factor
#> 3     A2LD1                         undefined
#> 4       A2M             alpha-2-macroglobulin
#> 5     A2ML1      alpha-2-macroglobulin-like 1
#> 6   A3GALT2 alpha 1,3-galactosyltransferase 2
#>                        Hugo.Gene.Family
#> 1 Immunoglobulin-like domain containing
#> 2          RNA binding motif containing
#> 3                             undefined
#> 4                             undefined
#> 5                             undefined
#> 6          Glycosyltransferase family 6
#>                                 HPRD.Function
#> 1     Molecular function unknown (GO:0005554)
#> 2                    RNA binding (GO:0003723)
#> 3     Molecular function unknown (GO:0005554)
#> 4    Protease inhibitor activity (GO:0030414)
#> 5    Protease inhibitor activity (GO:0030414)
#> 6 Galactosyltransferase activity (GO:0008378)
#>                             nodeType   Domains             Compartment
#> 1                          undefined      IGC2               undefined
#> 2 RNA binding and processing protein       RRM RNA-associated; nucleus
#> 3                          undefined undefined               undefined
#> 4                          undefined       A2M      cytosol; secretion
#> 5                          undefined undefined               undefined
#> 6                          undefined        TM               undefined
#>   Compartment.Overview
#> 1      plasma.membrane
#> 2       RNA.associated
#> 3            undefined
#> 4      plasma.membrane
#> 5      plasma.membrane
#> 6            undefined
```
