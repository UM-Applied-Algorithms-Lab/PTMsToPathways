# Bioplanet Example

A data frame version of a small subset of the Bioplanet.csv database
file

## Usage

``` r
ex.bioplanet
```

## Format

Dataframe with 100 rows and 4 columns:

- PATHWAY_ID:

  ID of the pathway in bioplanet

- PATHWAY_NAME:

  Common name of the pathway

- GENE_ID:

  ID of the gene in bioplanet

- GENE_SYMBOL:

  Common name of the gene

## Source

<https://tripod.nih.gov/bioplanet/>

## Examples

``` r
head(ex.bioplanet)
#>           PATHWAY_ID    PATHWAY_NAME GENE_ID GENE_SYMBOL
#> 13221 bioplanet_1339 RXR/VDR pathway      19       ABCA1
#> 13222 bioplanet_1339 RXR/VDR pathway     596        BCL2
#> 13223 bioplanet_1339 RXR/VDR pathway    3164       NR4A1
#> 13224 bioplanet_1339 RXR/VDR pathway    5465       PPARA
#> 13225 bioplanet_1339 RXR/VDR pathway    5467       PPARD
#> 13226 bioplanet_1339 RXR/VDR pathway    5468       PPARG
```
