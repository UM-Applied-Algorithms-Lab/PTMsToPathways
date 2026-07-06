# PTMsToPathways data provenance

This directory documents how package data and bundled extdata files are
prepared.

## Source-of-truth scripts

- `data-raw/ex-pathways-list.R` reads the BioPlanet pathway table and writes
  `data/ex_pathways_list.rda`.
- `data-raw/ex-creating-networks-data.R` derives the example clustering and
  CCCN objects used in the Getting Started vignette.
- `data-raw/full-PCN-edgelist.R` documents the larger example PCN workflow.

## Bundled extdata sources

- `inst/extdata/pathway.csv` is a BioPlanet pathway table used by
  `ReadBioplanetFile()`; the public source is
  https://tripod.nih.gov/bioplanet/download/pathway.csv.
- `inst/extdata/small_string_hs_hugo.tsv` is the preprocessed local STRING
  example used to keep vignette and build-time examples offline. It is a subset
  of the dataset available on [Zenodo](https://zenodo.org/record/1234567).
- `inst/extdata/ex_genemania_interactions.txt` and `inst/extdata/ex_gm_results.txt`
  are example GeneMANIA outputs used in the vignettes and tests.