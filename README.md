# PTMsToPathways <a href="https://um-applied-algorithms-lab.github.io/PTMsToPathways/"><img src="man/figures/logo.png" align="right" height="138" alt="PTMsToPathways website" /></a>

PTMsToPathways (P2P) implements the methods developed in [Ross et al. 2023](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1010690),
[Grimes et al. 2018](https://www.science.org/doi/10.1126/scisignal.aaq1087).
It takes mass spectrometry data of protein post-translational modifications
under different experimental conditions.
Tools are provided to aid
formatting mass spectrometry data for subsequent steps. We employ machine learning pattern
recognition algorithms to cluster PTMs based on several statistical tests that reveal patterns in
their detection under different experimental conditions. We use a cluster-filtered network
approach were clustering patterns are combined with external databases that catalog protein-
protein interactions (PPIs) and proteins’ involvement in known cell signaling pathways. The
resulting networks are navigable data structures that show data-driven interactions among
individual proteins and groups of proteins that represent well-defined cell signaling pathways.
These data structures can be interrogated in various ways to facilitate hypothesis-driven
investigation and exploratory data analysis. Networks are formatted to enable creation of
visually appealing graphs in Cytoscape, an open source network visualization application.

A following figure provides a summary of the functions implemented in P2P.

![](P2P_Pipeline_Fig.png)

## Installation

Before proceeding, ensure you have R installed. You will also need the devtools package, which can be installed with:

```
install.packages("devtools")
```

Then you can do:

```
devtools::install_github("UM-Applied-Algorithms-Lab/PTMsToPathways")
```

## Usage

After installation, load the package in R with:

```
library(PTMsToPathways)
```

You can then use the available functions as described in the package documentation.

## Development & Contribution

If you wish to modify or contribute to the package, we provide instructions on how to clone our repository, as well as an in depth look at some our solutions on [our wiki](https://github.com/UM-Applied-Algorithms-Lab/PTMsToPathways/wiki)
