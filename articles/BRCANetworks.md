# BRCANetworks

Note that we will use the complete PPI and BioPlanet edgefiles available
in “/Data_repository_path/” for this vignette. Lucy todo: these can come
with the package

This tutorial will load and create networks from the breast cancer
cohort (BRCA, N = 122), produced by

> **Proteogenomic landscape of breast cancer tumorigenesis and targeted
> therapy** Krug, K., Jaehnig, E. J., Satpathy, S., Blumenberg, L.,
> Karpova, A., Anurag, M., et al. *Cell* 183,
> 1436PTMsToPathways::name6.e31

And downloaded from Supplemental data S2 from

> **PhosphoDisco: A Toolkit for Co-regulated Phosphorylation Module
> Discovery in Phosphoproteomic Data** Schraink, T., Blumenberg, L.,
> Hussey, G., George, S., Miller, B., Mathew, N., Gonzalez-Robles, T.J.,
> Sviderskiy, V., Papagiannakopoulos, T., Possemato, R., et al. *Mol
> Cell Proteomics* 22, 100596. 10.1016/j.mcpro.2023.100596

### Preprocess data for PTMsToPathways functions

First, let’s load the PTMsToPathways package so its functions are
available:

``` r

library(PTMsToPathways)
```

The BRCA data table described above is provided with the PTMsToPathways
package and and can be read in as follows:

``` r

file_path <- system.file("extdata", "PhosphoDiscoData_mmc9.txt", package = "PTMsToPathways")
newphos <- utils::read.table(file_path, header = TRUE,
                               stringsAsFactors = FALSE, sep = "\t", comment.char = "#",
                               na.strings = "", quote = "", fill = TRUE)
```

It has 4237 rows and 124 columns representing 4237 phosphosites and 122
samples with phosphoproteomic data.

``` r
dim(newphos)
>> [1] 4237  124
```

The first two columns are `gene_symbol` and `variable_sites_names` which
we will use to create row names for the PTM table to match the expected
input format for the PTMsToPathways functions. The [Raw Data Processing
vignette](https://um-applied-algorithms-lab.github.io/PTMsToPathways/articles/RawDataProcessing.md)
gives another example of how to process raw data tables to create the
expected input format for the PTMsToPathways functions. Here are the
first few rows and columns of the data frame:

``` r
head(newphos[, 1:5])
>>   gene_symbol variable_sites_names X11BR047 X11BR043 X11BR049
>> 1       ACTN1                 S6s    0.2936  -1.9643  -0.9256
>> 2       BAZ2A              S1783s   -1.2947   1.5820  -0.4770
>> 3       BRCA2                S93s   -1.5739   0.5702  -1.1614
>> 4    C12orf45               S178s   -3.6418   0.3764  -1.4522
>> 5    C17orf49                S96s   -1.1685   0.2572   0.1649
>> 6    C6orf106               S215s   -2.7001   0.2895  -2.7325
```

Now we will process the first two columns to create row names for the
PTM table. We extract the amino acid and the site number from the
`variable_sites_names` column and remove trailing letters from the site
number if they exist.

``` r
 newphos$Amino.Acid <- sapply(newphos$variable_sites_names, function(x) substring (x, 1, 1))
 newphos$Site <- trimws(substring(newphos$variable_sites_names, 2))
 newphos$Site <- sub("[a-z]$", "", newphos$Site)
 head(newphos[, c("gene_symbol", "variable_sites_names", "Amino.Acid", "Site")])
>>   gene_symbol variable_sites_names Amino.Acid Site
>> 1       ACTN1                 S6s           S    6
>> 2       BAZ2A              S1783s           S 1783
>> 3       BRCA2                S93s           S   93
>> 4    C12orf45               S178s           S  178
>> 5    C17orf49                S96s           S   96
>> 6    C6orf106               S215s           S  215
```

Now use the PTMsToPathways function `name.peptide` to create peptide
names for the row names of the PTM table.

``` r

 newphos$Peptide.Name <- mapply(
   name.peptide, genes = newphos$gene_symbol,
   sites =  newphos$Site, aa = newphos$Amino.Acid)
```

Create `ptmtable` with PTMs as rows and samples as columns for use in
the next steps, and remove the columns we used to create the row names.

``` r
phosdata <- newphos[, 3:ncol(newphos), ]
rownames(phosdata) <- newphos$Peptide.Name
phosdata <- phosdata[, !(names(phosdata) %in% c("gene_symbol", "variable_sites_names", "Amino.Acid", "Site", "Peptide.Name"))]
ptmtable <- phosdata
head(ptmtable[, 1:5])
>>                 X11BR047 X11BR043 X11BR049 X11BR023 X18BR010
>> ACTN1 p S6        0.2936  -1.9643  -0.9256  -2.6409  -0.8071
>> BAZ2A p S1783    -1.2947   1.5820  -0.4770   1.5900  -1.0283
>> BRCA2 p S93      -1.5739   0.5702  -1.1614   0.5241  -0.3049
>> C12orf45 p S178  -3.6418   0.3764  -1.4522   0.1373  -0.2151
>> C17orf49 p S96   -1.1685   0.2572   0.1649   1.8283  -1.0399
>> C6orf106 p S215  -2.7001   0.2895  -2.7325   1.6096  -1.7117
```

Next, we create clusters and networks from those clusters as in the
[Creating Networks
vignette](https://um-applied-algorithms-lab.github.io/PTMsToPathways/articles/CreatingNetworks.md).

### Create Clusters and Co-Cluster Correlation Networks (CCCNs)

This takes about 10 minutes on a laptop, so we provide both the code and
the pre-computed results for this step. To re-run the analysis, run, the
following:

``` r

set.seed(88)
clusterlist.data <- MakeClusterList(ptmtable,
                                    keeplength = 3, toolong = 3.5)
CCCN.data <- MakeCorrelationNetwork(adj.consensus.matrix,
                                    ptm.correlation.matrix)
```

Or load in pre-computed results from within the PTMsToPathways package:

``` r

clusterlist.data <- brca_clusterlist_data
CCCN.data <- brca_CCCN_data
```

Whether computed or loaded, the `cluster.data` and `CCCN.data` are lists
that contain the following elements:

``` r

common.clusters <- clusterlist.data[[1]]
adj.consensus.matrix <- clusterlist.data[[2]]
ptm.correlation.matrix <- clusterlist.data[[3]]
ptm.cccn.edges <- CCCN.data[[1]]
gene.cccn.edges <- CCCN.data[[2]]
gene.cccn.nodes <- CCCN.data[[3]]
```

We expect 231 common clusters:

``` r
length(common.clusters)
>> [1] 231
```

If desired, the clusters can be trimmed to those \> 4. This reduces the
number of clusters from 231 to 204.

``` r
cclength <- sapply(common.clusters, length)
common.clusters4 <- common.clusters[which(cclength>3)]
length(common.clusters4)
>> [1] 204
```

We can use
[graph.ptm.by.cluster](https://um-applied-algorithms-lab.github.io/PTMsToPathways/articles/references/graph.ptm.by.cluster.md)
to visualize these in a heatmap. To demonstrate, let’s look at the
output for the first 3 clusters. PTMs are rows and samples are columns,
and color represents the value of the PTM in that sample. Black
indicates missing values.


    ``` r
    fig_dir <- knitr::opts_current$get("fig.path")
    dir.create(fig_dir, recursive = TRUE, showWarnings = FALSE)
    output <- file.path(fig_dir, "ptm_all_clusters_l4.pdf")
    res <- graph.ptm.by.cluster(
         ptmtable         = ptmtable,
         common.clusters  = common.clusters4[1:3],          # use all clusters > 4, only first 3
         filename         = output,
         order.rows       = "slope",
         zlim             = 3,
         show.row.labels  = FALSE,
         show.col.labels  = TRUE,
         col_cex          = 0.7
       )
    >> Heatmap written to: plots//ptm_all_clusters_l4.pdf
    knitr::include_graphics(output)

PTMsToPathways provides the function
[`EvaluateClusters`](https://um-applied-algorithms-lab.github.io/PTMsToPathways/articles/references/EvaluateClusters.md)
which computes the following for each cluster:

- `intensity` = total signal after removing the NA fraction of samples
  for this cluster
- `realsamples` = samples that are not single-gene/PTM samples for this
  cluster
- `cleargenes` = genes/PTMs that fit a pattern that ranks by decreasing
  total signal
- `percent.NA` = percentage of missing values in the cluster sub-table

It also computes an `index` value for every cluster, which is a
composite value computed from the above. The output is ordered by this
`index` value, so we examine the top 10 clusters here:

``` r
eval_brca <- EvaluateClusters(
   common.clusters4, ptmtable,
   data.type  = "ratio",
   use.slope  = FALSE,
   index.mode = "density",
   verbose    = FALSE
 )
eval_brca[1:10, ]

>>     Group no.genes culled.by.slope percent.singlesamplegenes no.samples
>> 201   201        5               0                         0        122
>> 204   204        5               0                         0        122
>> 130   130       11               0                         0        122
>> 13     13        4               0                         0        105
>> 194   194        4               0                         0        105
>> 145   145       13               0                         0        122
>> 103   103       17               0                         0        122
>> 86     86       20               0                         0        122
>> 71     71       52               0                         0        122
>> 59     59       10               0                         0        122
>>     percent.singlegenesamples total.signal percent.NA intensity    Index
>> 201                         0     407.1629 0.00000000  407.1629 147.6000
>> 204                         0     630.5927 0.00000000  630.5927 147.6000
>> 130                         0     785.0943 0.00000000  785.0943 134.1818
>> 13                          0     565.5595 0.00000000  565.5595 132.5000
>> 194                         0     532.2606 0.00000000  532.2606 132.5000
>> 145                         0    1453.0472 0.00000000 1453.0472 132.4615
>> 103                         0    1769.5302 0.00000000 1769.5302 130.2353
>> 86                          0    1807.7815 0.00000000 1807.7815 129.1500
>> 71                          0    4704.2481 0.00000000 4704.2481 125.3654
>> 59                          0    1388.7363 0.08196721 1387.5980 125.0500
```

### Build Cluster Filtered Networks (CFNs) and Pathway Crosstalk Networks (PCNs)

For PPI edges, the code below demonstrates how to get the STRING-db and
GeneMANIA edges from the static downloaded networks provided in
“Data_repository_path”. Alternatively, the resulting edges can be loaded
from within the package.

``` r

string_db_filepath <- "your/filepath/here.tsv"

stringdb.edges <- GetSTRINGdb.edges(gene.cccn.edges,
                              gene.cccn.nodes,
                              local                  = TRUE,
                              string.local.path      = string_db_filepath
)
```

Here we just read from within the package:

``` r
stringdb.edges <- BRCA_stringdb.edges
head(stringdb.edges)
>>      source target  interaction Weight
>> 3197   AAK1  ACTR2 experimental    232
>> 3206   AAK1   ANLN experimental    198
>> 3232   AAK1 BCLAF1 experimental     45
>> 3237   AAK1  CAMK4 experimental    178
>> 3242   AAK1  CDK13 experimental     93
>> 3243   AAK1  CDK19 experimental     59
```

Similary for GeneMANIA edges:

``` r

genemania_filename <- "~/Downloads/hs_interactions_hugo.tsv"
# gm.all.edges.path <- paste0(Data_repository_path, genemania_filename)
```

This file contains the following types of interactions: \* “Genetic
Interactions” \* “Pathway” \* “Physical Interactions” \* “Predicted”

We choose all but “Genetic Interactions” to include in the following
function.

``` r

genemania.edges <- GetGeneMANIA.edges (gm.all.edges.path,
                                gene.cccn.nodes,
                                local                = TRUE,
                                genemania.local.path = gm.all.edges.path,
                                gm.interaction.types = c("Pathway", "Physical Interactions", "Predicted"))

# Kinsub edges obtained as previously using the Kinase Substrate data from PhosphoSitePlus.
input.filename <- "~/Downloads/Kinase_Substrate_Dataset.txt"
kinsub.all.edges.path <- paste0(Data_repository_path, input.filename)
kinsub.edges <- GetKinsub.edges(input.filename, gene.cccn.nodes)

# Now we can build the CFN.
network.list <- BuildClusterFilteredNetwork(gene.cccn.edges,
                                            stringdb.edges,
                                            genemania.edges,
                                            kinsub.edges,
                                            db.filepaths = c())

combined.PPIs <- network.list[[1]]
cfn <- network.list[[2]]
# 67376 edges
cfn.merged <- mergeEdges(cfn)
# 27048 edges
```

We build the PCN from the BioPlanet pathways as done previously.

``` r

bioplanet_filename <- "bioplanet_pathway_June2025.csv"
bioplanet.pathways.path <- paste0(Data_repository_path, bioplanet_filename)
PCN.data <- BuildPathwayCrosstalkNetwork(common.clusters, bioplanet.file,
                                         createfile = FALSE)
pathway.crosstalk.network <- PCN.data[[1]] # 679707 edges
PCNedgelist <- PCN.data[[2]]
pathways.list <- PCN.data[[3]]
```

Now we can explore these networks.

### Preprocess modules from Shraink et al.

We will examine the modules from Schraink, et al., 2023, Supplemental
Table S4

``` r

# Read in PhosphoDisco Modules file.
PD_module.file <- paste0(paperpath, "PhosDiscoModules_mmc11.txt")

PD_module.df <- utils::read.table(PD_module.file, header = TRUE,
                  stringsAsFactors = FALSE, sep = "\t", comment.char = "#",
                  na.strings = "", quote = "", fill = TRUE)
# Note these have trailing spaces as do the rownames(ptmtable)
# Column names: geneSymbol, variableSites, HDBSCAN.min_cluster_size.4
# 1017 rows
# Note differences from the PTM table imported above.
length(intersect(newphos$variable_sites_names, PD_module.df$variableSites)) # 530
length(intersect(newphos$gene_symbol, PD_module.df$geneSymbol)) # 161

# Make peptide names as above

PD_module.df$Amino.Acid <- sapply(PD_module.df$variableSites, function(x) substring (x, 1, 1))
PD_module.df$Site <- trimws(substring(PD_module.df$variableSites, 2))
PD_module.df$Site <- sub("[a-z]$", "", PD_module.df$Site)

PD_module.df$Peptide.Name <- mapply(
  name.peptide, genes = PD_module.df$geneSymbol,
  sites =  PD_module.df$Site, aa = PD_module.df$Amino.Acid)

# Treat modules like our clusters
PD_module.df2 <- PD_module.df[,c("Peptide.Name", "HDBSCAN.min_cluster_size.4")]
PD_module.list <- dlply(
  PD_module.df2,
  .(HDBSCAN.min_cluster_size.4),
  function(x) x$Peptide.Name
)
PD_module.genes.unique <- lapply(
  PD_module.list,
  function(x) unique(sub(" .*", "", x)))
```

### Compare P2P clusters and Schraink, et al. modules

P2P identified different clusters than these modules.

``` r


mod63.interesct <- sapply(common.clusters, function(x) intersect(x, PD_module.list$`63`))

# Interesctions were found in common.clusters$ConsensusCluster1; common.clusters$ConsensusCluster3; common.clusters$ConsensusCluster4; common.clusters$ConsensusCluster5; common.clusters$ConsensusCluster6

# First, consider all ptms from major clusters that intersect with module 63
mod63.clust.ptms <- unlist(c(common.clusters$ConsensusCluster1, common.clusters$ConsensusCluster3, common.clusters$ConsensusCluster4, common.clusters$ConsensusCluster5, common.clusters$ConsensusCluster6))

# This code graphs the CFN/CCCN from all these PTMs:
funckey <- getFuncKey(paste0(Data_repository_path, "FunctionKey.txt"))
cfn.cccn <- ptms_to_cfn(mod63.clust.ptms, cfn = cfn.merged, pepsep = ";")
cfn_cccn.nodes <- make.cytoscape.node.file(cfn.cccn, funckey, ptmtable,
                                           include.gene.data = TRUE,
                                           include.coclustered.PTMs = TRUE)
g1 <- GraphCfn(cfn.edges = cfn.cccn, cfn.nodes = cfn_cccn.nodes,
               Network.title = "CFN/CCCN All PTMs 1", Network.collection = "PTMsToPathways")
 
```

This is a complex graph that shows PTMs clusters as cliques connected by
yellow correlation edges surrounding a CFN of interconnected gene nodes.

Let’s focus on CDK1 substrates to complement the work done in Schraink,
et al., 2023.

``` r

cdk1.kinsub <- filter.edges.1("CDK1", kinsub.edges) # 82 edges

cdk1.substrates <- cdk1.kinsub [which(cdk1.kinsub$source=="CDK1"), "target"]

cfn_cccn.nodes.cdksubs <- cfn_cccn.nodes[cfn_cccn.nodes$Gene.Name %in% cdk1.substrates, ]
```

Two ways to select for CDK1 substrates are presented.

``` r

# Method 1: Using RCy3.
selectNodes(cfn_cccn.nodes.cdksubs$id, by = "id", preserve=FALSE)
selectEdgesConnectingSelectedNodes()

createSubnetwork(nodes = getSelectedNodes(), edges = getSelectedEdges(), nodes.by.col = "id", edges.by.col = "name")

# Method 2: Using P2P functions.

cfn_cccn.nodes.cdksubs.edges <- filter.edges.0(nodenames = cfn_cccn.nodes.cdksubs$id, edge.file = cfn.cccn)

g2 <- GraphCfn(cfn.edges = cfn_cccn.nodes.cdksubs.edges, cfn.nodes = cfn_cccn.nodes.cdksubs,
               Network.title = "CFN/CCCN All PTMs 5", Network.collection = "PTMsToPathways")

# Gives the exact same network.
```

Now further simplify the graph to show only CCCN PTMs.

``` r


cfn_cccn.nodes.cdksubs <- cfn_cccn.nodes[cfn_cccn.nodes$Gene.Name %in% cdk1.substrates, ] # repeat of above to make this stand alone

cdksubs.genes <- unique(cfn_cccn.nodes.cdksubs$Gene.Name)
cdksubs.cfn <- filter.edges.0(cfn_cccn.nodes.cdksubs.genes, cfn.merged)
cdksubs.cfn.cccn <- get.co.clustered.ptms(cdksubs.cfn, ptm.cccn.edges=ptm.cccn.edges)
cdksubs.cfn.cccn.nodes <- make.cytoscape.node.file(cdksubs.cfn.cccn, funckey, ptmtable,
                                           include.gene.data = TRUE,
                                           include.coclustered.PTMs = TRUE)
g3 <- GraphCfn(cfn.edges = cdksubs.cfn.cccn, cfn.nodes = cdksubs.cfn.cccn.nodes,
               Network.title = "CFN/CCCN All PTMs 6", Network.collection = "PTMsToPathways")
```

Each of these graphs can be modified to set node size and shape using
the following P2P functions that act on the front window in Cytoscape.
Note the differences that reflect activation of different cell signaling
pathways in tumors with different mutations: X02BR011 (AKT1 missense
mutant); X21BR010 (PIK3CA missense mutant); and X05BR045 (TP53 nonsense
and MLLT4 frameshift mutants).

``` r

setNodeColorToRatios(plotcol="X03BR011")
setNodeColorToRowz(plotcol="X03BR011")  # This exaggerates the node size and shape somewhat. 
setNodeColorToRatios(plotcol="X21BR010")
setNodeColorToRowz(plotcol="X21BR010")    
setNodeColorToRatios(plotcol="X05BR045")
setNodeColorToRowz(plotcol="X05BR045")

# Note that different samples have dramatically different differences in PTMs that are up or down, which is reflected also in total in gene nodes.
```
