# Create PTM Peptide Names

Builds standardized PTM peptide names from gene symbols, modification
type, amino acid, and site information. Supports ambiguous entries
separated by a delimiter.

## Usage

``` r
name.peptide(genes, modification = "p", sites, aa, pepsep = ";")
```

## Arguments

- genes:

  A character string of one or more gene symbols.

- modification:

  A character string indicating modification shorthand. Defaults to
  `"p"`.

- sites:

  A character string of one or more site positions.

- aa:

  A character string containing the amino acid code.

- pepsep:

  A separator used in `genes` and `sites` for ambiguous entries.
  Defaults to `";"`.

## Value

A character string containing unique peptide names.

## Examples

``` r
name.peptide("MAPK1; MAPK3", sites = "185; 204", aa = "T")
#> [1] "MAPK1 p T185;  MAPK3 p T 204"
```
