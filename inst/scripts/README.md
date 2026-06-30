# PTMsToPathways data provenance

This directory documents how package data and bundled extdata files are
prepared.

## Source-of-truth scripts

- `data-raw/function-key.R` reads `inst/extdata/FunctionKey.txt` and writes
  `data/function_key.rda`.
- `data-raw/ex-pathways-list.R` reads the BioPlanet pathway table and writes
  `data/ex_pathways_list.rda`.
- `data-raw/ex-creating-networks-data.R` derives the example clustering and
  CCCN objects used in the Getting Started vignette.
- `data-raw/full-PCN-edgelist.R` documents the larger example PCN workflow.
- `data-raw/processed-brca.R` derives the BRCA example objects from the BRCA
  phosphoproteomics table and local STRING/GeneMANIA/BioPlanet inputs.

## Bundled extdata sources

- `inst/extdata/AlldataPTMs.txt` is the larger PTM example used in the
  Getting Started vignette. The source URL is documented in the vignette and
  points to the package repository copy of the file.
- `inst/extdata/pathway.csv` is a BioPlanet pathway table used by
  `ReadBioplanetFile()`; the public source is
  https://tripod.nih.gov/bioplanet/download/pathway.csv.
- `inst/extdata/bioplanet_pathway_June2025.csv` is a package-local BioPlanet
  snapshot used for vignette and data generation workflows.
- `inst/extdata/PhosphoDiscoData_mmc9.txt` is the BRCA phosphoproteomics input
  table used in the BRCA vignette and `data-raw/processed-brca.R`.
- `inst/extdata/PhosDiscoModules_mmc11.txt` is the associated module annotation
  table used in the BRCA vignette.
- `inst/extdata/FunctionKey.txt` is the annotation key used to generate
  `function_key`.
- `inst/extdata/small_string_hs_hugo.tsv` is the preprocessed local STRING
  example used to keep vignette and build-time examples offline. It is a subset
  of the dataset available on [Zenodo](https://zenodo.org/record/1234567).
- `inst/extdata/Kinase_Substrate_Dataset.txt` is the kinase-substrate example
  input used by `GetKinsub.edges()`.
- `inst/extdata/ex_genemania_interactions.txt` and `inst/extdata/ex_gm_results.txt`
  are example GeneMANIA outputs used in the vignettes and tests.

## Regeneration notes

- The BRCA example objects are derived from the BRCA phosphoproteomics input,
  then filtered through `MakeClusterList()`, `MakeCorrelationNetwork()`,
  `GetSTRINGdb.edges()`, `GetGeneMANIA.edges()`, and
  `BuildPathwayCrosstalkNetwork()`.
- Several generated data objects rely on randomized clustering. The example
  scripts preserve the existing package data rather than overwriting it when the
  stochastic outputs would differ.