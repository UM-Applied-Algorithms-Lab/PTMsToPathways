# GeneMANIA Nodes Example

Dataframe from GeneMANIA relating GeneMANIA IDs to common gene names.

## Usage

``` r
ex.gm.nodes
```

## Format

Dataframe of 2762 rows and 16 columns:

- annotation.name:

  Note about the gene

- annotations:

  Processes associated with this gene according to Gene Ontology

- Ensembl.Gene.ID:

  ID of the gene in Ensemble

- Entrez.Gene.ID:

  ID of the gene in Entrez

- gene.name:

  Common name fo the gene

- log.score:

  Association strength to the set of entered genes on a log scale

- name:

  Name of the gene in GeneMANIA

- node.type:

  Why the node is in the list

- query.term:

  What was searched for; typically the common name of the gene

- RefSeq.Protein.ID:

  ID of the gene in RefSeq

- score:

  Predicted association strength to the set of entered genes

- selected:

  Internal flag

- shared.name:

  Name of the gene in GeneMANIA

- Synonym:

  Gene synonym in another database

- Uniprot.ID:

  ID of the gene in Uniprot

## Source

<https://apps.cytoscape.org/apps/genemania>

## Examples

``` r
head(ex.gm.nodes)
#>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     annotation.name
#> 1                                                                                                                                                                                                                                                                positive regulation of tumor necrosis factor superfamily cytokine production|amyloid precursor protein metabolic process|cellular response to peptide|regulation of ERK1 and ERK2 cascade|amyloid precursor protein catabolic process|peptidyl-tyrosine phosphorylation|amyloid-beta metabolic process|neuron projection guidance|positive regulation of supramolecular fiber organization|ERK1 and ERK2 cascade|regulation of supramolecular fiber organization|axonogenesis|membrane microdomain
#> 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               amyloid precursor protein metabolic process|amyloid precursor protein catabolic process|membrane protein proteolysis|amyloid-beta metabolic process
#> 3 positive regulation of tumor necrosis factor superfamily cytokine production|amyloid precursor protein metabolic process|cellular response to peptide|amyloid precursor protein catabolic process|positive regulation of protein transport|positive regulation of protein import|positive regulation of intracellular protein transport|positive regulation of establishment of protein localization|amyloid-beta metabolic process|positive regulation of cellular protein localization|positive regulation of supramolecular fiber organization|regulation of supramolecular fiber organization|positive regulation of intracellular transport|regulation of intracellular transport|membrane protein proteolysis|site of polarized growth|membrane microdomain
#> 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               amyloid precursor protein metabolic process|amyloid precursor protein catabolic process|membrane protein proteolysis|amyloid-beta metabolic process
#> 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
#> 6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
#>                                                                                                                                                                                  annotations
#> 1                                             GO:1903557|GO:0042982|GO:1901653|GO:0070372|GO:0042987|GO:0018108|GO:0050435|GO:0097485|GO:1902905|GO:0070371|GO:1902903|GO:0007409|GO:0098857
#> 2                                                                                                                                                GO:0042982|GO:0042987|GO:0033619|GO:0050435
#> 3 GO:1903557|GO:0042982|GO:1901653|GO:0042987|GO:0051222|GO:1904591|GO:0090316|GO:1904951|GO:0050435|GO:1903829|GO:1902905|GO:1902903|GO:0032388|GO:0032386|GO:0033619|GO:0030427|GO:0098857
#> 4                                                                                                                                                GO:0042982|GO:0042987|GO:0033619|GO:0050435
#> 5                                                                                                                                                                                           
#> 6                                                                                                                                                                                           
#>   Ensembl.Gene.ID Ensembl.Protein.ID Entrez.Gene.ID gene.name   log.score
#> 1          P05067    ENSP00000406539            351       APP -1.03369773
#> 2          Q96BI3    ENSP00000397473          51107     APH1A -0.06832068
#> 3          P49768    ENSP00000454156           5663     PSEN1 -3.60722807
#> 4          Q92542    ENSP00000495179          23385     NCSTN -4.08315109
#> 5          Q13435    ENSP00000436757          10992     SF3B2 -0.07103485
#> 6          P55795    ENSP00000361927           3188   HNRNPH2 -0.05821377
#>                    name node.type query.term RefSeq.Protein.ID      score
#> 1 H__sapiens__1_-780964     query        APP         NP_958817 0.35568928
#> 2 H__sapiens__1_-777445     query      APH1A         NP_057106 0.93396092
#> 3 H__sapiens__1_-774247    result                    NP_015557 0.02712694
#> 4 H__sapiens__1_-783570    result                    NP_056146 0.01685427
#> 5 H__sapiens__1_-774485     query      SF3B2         NP_006833 0.93142943
#> 6 H__sapiens__1_-778623     query    HNRNPH2         NP_062543 0.94344825
#>   selected           shared.name   Synonym Uniprot.ID
#> 1    false H__sapiens__1_-780964 NM_201414        AD1
#> 2    false H__sapiens__1_-777445 NM_016022     CGI-78
#> 3    false H__sapiens__1_-774247 NM_007318       S182
#> 4    false H__sapiens__1_-783570 NM_015331   KIAA0253
#> 5    false H__sapiens__1_-774485 NM_006842    SF3b145
#> 6    false H__sapiens__1_-778623 NM_019597     HNRPH2
```
