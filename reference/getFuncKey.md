# Graphing and Manipulating Cluster Filtered Network

Creates a cytoscape graph of the cluster filtered network. Ensure that
you have the Cytoscape app open and the RCy3 package downloaded. The
package RCy3 is required for many of the functions in this script. To
download, run:

- if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

- BiocManager::install("RCy3") It is also recommended (but not required)
  that users load RCy3 with library(RCy3) to access its functions
  directly.

## Usage

``` r
getFuncKey(funckey.filename = "FunctionKey.txt")
```

## Arguments

- cfn:

  A version of ppi.network with only the edges that exist in cccn.matrix
  and have non-zero weights

- ptmtable:

  A dataset for post-translational modifications. Formatted with
  numbered rows, and the first column containing PTM names. The rest of
  the column names should be drugs. Values are numeric values that
  represent how much the PTM has reacted to the drug.

- funckey:

  A table graphing gene names to type of protein; defaults to internal
  database at PTMsToPathways::ex.funckey

- Network.title:

  Desired title for the created Cytoscape Network; defaults to "cfn"

- Network.collection:

  Desired name for the collection created on Cytoscape in which the
  network will reside; defaults to "PTMsToPathways"

- visual.style.name:

  Desired name for the visual style created on Cytoscape; defaults to
  "PTMsToPathways.style"

- background.color:

  Hex code of background color of graph; defaults to '#fcf3cf'

- edge.label.color:

  Hex code of edge label color of graph; defaults to '#17202a'

- node.label.color:

  Hex code of node label color of graph; defaults to '#145a32'

- default.font:

  Font style of edge and node names; defaults to "Times New Roman"

- node.font.size:

  Font size of the node name; defaults to 12

- edge.font.size:

  Font size of the edge name; defaults to 8

- edge.line.style:

  Type of edge style; defaults to "SOLID"; options include:
  "PARALLEL_LINES", "MARQUEE_EQUAL", "DOT", "EQUAL_DASH", "LONG_DASH",
  "CONTIGUOUS_ARROW", "MARQUEE_DASH", "DASH_DOT", "BACKWARD_SLASH",
  "FORWARD_SLASH", "VERTICAL_SLASH", "SOLID", "SEPARATE_ARROW",
  "MARQUEE_DASH_DOT", "ZIGZAG", "SINEWAVE"

- edge.opacity:

  Opacity of the edge line on a scale of 0 - 255 with 0 being
  transparent; defaults to 175

- edge.label.opacity:

  Opacity of the edge label on a scale of 0 - 255 with 0 being
  transparent; defaults to 255

- border.opacity:

  Opacity of the node border on a scale of 0 - 255 with 0 being
  transparent; defaults to 255

- node.label.opacity:

  Opacity of the node label on a scale of 0 - 255 with 0 being
  transparent; defaults to 255

- node.fill.opacity:

  Opacity of the node fill on a scale of 0 - 255 with 0 being
  transparent; defaults to 255

## Value

A cytoscape graph of the cluster filtered network

## Details

Graph Key

- Node Size

  - Greater the node size, larger the absolute value of the score

- Blue Node

  - Negative score

- Yellow Node

  - Positive score

- Green Node

  - Approximately zero score Node Shapes:

- "ELLIPSE"

  - unknown

- "ROUND_RECTANGLE"

  - receptor tyrosine kinase

- "VEE"

  - SH2 protein or

  - SH2-SH3 protein

- "TRIANGLE"

  - SH3 protein

- "HEXAGON"

  - tyrosine kinase

- "DIAMOND"

  - SRC-family kinase

- "OCTAGON"

  - kinase or

  - phosphatase

- "PARALLELOGRAM"

  - transcription factor

- "RECTANGLE"

  - RNA binding protein Node Border Colors:

- Orange

  - deacetylase or

  - acetyltransferase

- Blue

  - demethylase or

  - methyltransferase

- Royal Purple

  - membrane protein

- Red

  - kinase or

  - tyrosine kinase or

  - SRC-family kinase

- Yellow

  - phosphatase or

  - tyrosine phosphatase

- Lilac

  - G protein-coupled receptor or

  - receptor tyrosine kinase

- Grey

  - default

- Edge Thickness

  - Stronger correlation Edge Colors:

- Red

  - Phosphorylation or

  - pp or

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

  - Phystical interactions

- Green

  - BioPlex

- Dull Green

  - in-complex-with

- Seafoam Green

  - experiments or

  - experiments_transferred

- Cyan

  - database or

  - database_transferred

- Teal

  - Pathway or

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

  - combined_score

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

  - Default Arrow Types:

- Arrow

  - Phosphorylation or

  - pp or

  - controls-phosphorylation-of or

  - controls-expression-of or

  - controls-transport-of or

  - controls-state-change-of or

  - Acetylation

- No Arrow

  - Default

## Examples

``` r
# GraphCFN(ex.cfn)
# See vignette for default graph
```
