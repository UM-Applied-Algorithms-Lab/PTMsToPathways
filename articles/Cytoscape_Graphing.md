# Cytoscape_Graphing

## 

## Graphing Networks in Cytoscape

### Top-down approach starting with pathways

It is possible to graph the entire PCN, CFN, and CCCNs in their
entirety, though very large graphs take a long time to graph. One
approach to navigating these data structures is to select nodes from the
large networks in Cytoscape (or in R using RCy3::selectNodes()) and
select nearest neighbors or shortest paths and create a subnetwork in a
new window (see the Cytoscape Manual
<https://manual.cytoscape.org/en/stable/>).

The alternative approach described below is to identify pathways, genes,
and PTMs of interest in the R data objects, then make smaller, more
interpretable graphs in Cytoscape using RCy3.

For example, we will find names of all pathways in Bioplanet that
contain EGFR. The data object ‘pathways.list’ is a list, where the name
of the list element is the name of a Bioplanet pathway and each element
is a character vector of the genes in that pathway. Then we want to find
interactions between the pathway “Transmembrane transport of small
molecules” and those pathways. The utility functions used below are in
CytoscapeGraphing.R

``` r
egfr_pathways <- names(pathways.list)[sapply(1:length(pathways.list),function(x){"EGFR" %in% pathways.list[[x]]})]
length(egfr_pathways) #83
egfr_transporter.pcn <- filter.edges.between("Transmembrane transport of small molecules", egfr_pathways, PCNedgelist)
egfr_transporter_pcn.cy <- filter.edges.between("Transmembrane transport of small molecules", egfr_pathways, pathway.crosstalk.network)

#
head(egfr_transporter.pcn)
```

These two versions of the PCN show cluster evidence and Jaccard
smilarity in adjacent columns (the first case) or as distinct edges (the
second case, which can be used to plot this network in cytoscape).

Let’s zero in on interactions between proteins in the two pathways
“EGF/EGFR signaling pathway” and “Transmembrane transport of small
molecules” because they have no genes in common, yet the cluster
evidence for their interaction is strong. First we extract a network of
interactions between the genes in the two pathways. Then we generate a
node file for cytoscape. In the following case we include the data
extracted from the ptmtable. This is optional, useful if node size and
color is used later to indicate values in data.

``` r
egfr_transporter.cfn <- filter.edges.0(c(pathways.list[["EGF/EGFR signaling pathway"]], pathways.list[["Transmembrane transport of small molecules"]]), cfn)
egfr_transporter.nodes <- make.cytoscape.node.file (egfr_transporter.cfn, funckey, ptmtable, include.gene.data = TRUE) 
```

The function GraphCfn creates a graph using the cluster filtered network
in the Cytoscape app. When graphed, Cytoscape provides an interactive
interface to view the data. This function requires the edge list file
(egfr_transporter.cfn in the example), and node data file
(egfr_transporter.nodes).

#### Generating the graph and setting node size and color

#### Asking questions about signaling pathways that connect proteins

Another example of how to use the network is to ask, what are the paths
between two nodes (two proteins)?. We use the function
connectNodes.all() to identify all shortest paths between two nodes.

Having identified the pathways, let’s also zoom in further on PTMs to
examine which PTMs co-cluster, as indicated by yellow edges between
them.

#### Bottom-up approach to investigate how dasatinib affects proteins invovled in focal adhesion

Dasatinib exhibits strong binding and inhibitory effects on multiple
focal adhesion-associated genes from the BioPlanet list:

• SRC (proto-oncogene tyrosine-protein kinase Src)

• FYN (tyrosine-protein kinase Fyn)

• EGFR (epidermal growth factor receptor)

• ERBB2 (receptor tyrosine-protein kinase erbB-2)

All these genes are directly implicated in focal adhesion signaling
regulation. We hypothesize that ptms on proteins involved in focal
adhesion will be downregulated by dasatinib.

#### Node and Edge Key

We adopt the following standards for visualizing nodes and edges in
Cytoscape. The border and shape of the node represent the type of
protein this gene is, based on the function key (funckey).

Edges represent different types of interactions from PPI databases,
correlations, or links between proteins and their PTMs. The thicker the
edge is, the stronger the interaction weight.

Node Size:

- Greater the node size, larger the absolute value of the amount or
  ratio

Node Color:

- Blue Node
  - Negative amount or ratio  
- Yellow Node
  - Positive amount or ratio  
- Green Node
  - Approximately zero amount or ratio

Node Shapes:

- “ELLIPSE”
  - unknown  
- “ROUND_RECTANGLE”
  - receptor tyrosine kinase  
- “VEE”
  - SH2 protein  
  - SH2-SH3 protein  
- “TRIANGLE”
  - SH3 protein  
- “HEXAGON”
  - tyrosine kinase  
- “DIAMOND”
  - SRC-family kinase  
- “OCTAGON”
  - kinase  
  - phosphatase  
- “PARALLELOGRAM”
  - transcription factor  
- “RECTANGLE”
  - RNA binding protein

Node Border Colors:

- Orange
  - deacetylase  
  - acetyltransferase  
- Blue
  - demethylase  
  - methyltransferase  
- Royal Purple
  - membrane protein  
- Red
  - kinase  
  - tyrosine kinase  
  - SRC-family kinase  
- Yellow
  - phosphatase  
  - tyrosine phosphatase  
- Lilac
  - G protein-coupled receptor  
  - receptor tyrosine kinase  
- Grey
  - default

Edge Colors:

- Red
  - Phosphorylation  
  - pp  
  - controls-phosphorylation-of  
- Bright Magenta
  - controls-expression-of  
- Dull Magenta
  - controls-transport-of  
- Purple
  - controls-state-change-of  
- Blood Orange
  - Acetylation  
- Lime Green
  - Physical interactions  
- Green
  - BioPlex  
- Dull Green
  - in-complex-with  
- Seafoam Green
  - experiments  
  - experiments_transferred  
- Cyan
  - database  
  - database_transferred  
- Teal
  - Pathway  
  - Predicted  
- Dark Turquoise
  - Genetic interactions  
- Yellow-Orange
  - correlation  
- Royal Blue
  - negative correlation  
- Bright Yellow
  - positive correlation  
- Grey
  - combined_amount or ratio  
- Dark Grey
  - merged  
- Light Grey
  - intersect  
- Black
  - peptide  
- Orange
  - homology  
- Dull Orange
  - Shared protein domains  
- White
  - Default

Arrow Types:

- Arrow

  - Phosphorylation  
  - pp  
  - controls-phosphorylation-of  
  - controls-expression-of  
  - controls-transport-of  
  - controls-state-change-of  
  - Acetylation  

- No Arrow

  - Default

  These properties can be visualized in Cytoscape using the
  NodeEdgeKey() function:
