# Function Key Example

Gene-level annotation data used to build Cytoscape node metadata.

## Usage

``` r
function_key
```

## Format

Data frame with 24339 rows and 8 columns:

- Gene.Name:

  HGNC gene symbol.

- Approved.Name:

  Approved gene name.

- Hugo.Gene.Family:

  Gene family annotation.

- HPRD.Function:

  Functional annotation from HPRD.

- nodeType:

  Node classification used for Cytoscape styling.

- Domains:

  Protein domain annotations.

- Compartment:

  Subcellular compartment labels.

- Compartment.Overview:

  Simplified compartment grouping.

## Source

`FunctionKey.txt` processed into a package data object.

## Examples

``` r
head(function_key)
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
