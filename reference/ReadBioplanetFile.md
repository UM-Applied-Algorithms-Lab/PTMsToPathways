# Read Bioplanet File

Reads a Bioplanet CSV file and converts it into a named list of
pathways, where each list element is a character vector of gene symbols.

## Usage

``` r
ReadBioplanetFile(bioplanet.file = "bioplanet.csv")
```

## Arguments

- bioplanet.file:

  Path to a delimited Bioplanet text file. Common delimiters such as
  comma, tab, semicolon, and pipe are supported.

## Value

A named list of pathways and associated gene symbols.
