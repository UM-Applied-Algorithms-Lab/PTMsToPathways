# Function Key Example

Gene-level annotation data used to build Cytoscape node metadata.

## Usage

``` r
data(function_key)
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
#> Error: object 'function_key' not found
```
