# Principles of Spatial (Transcript)omics Analysis with Bioconductor

📖 [Book](https://lmweber.github.io/PrinciplesSTA/devel) [![deployment](https://img.shields.io/github/actions/workflow/status/lmweber/PrinciplesSTA/pages/pages-build-deployment?label=Book%20deployment)](https://github.com/lmweber/PrinciplesSTA/actions/workflows/pages/pages-build-deployment)  
🐳 [Docker](https://github.com/lmweber/PrinciplesSTA/pkgs/container/PrinciplesSTA) [![biocbook](https://img.shields.io/github/actions/workflow/status/lmweber/PrinciplesSTA/biocbook.yml?label=Docker%20image)](https://github.com/lmweber/PrinciplesSTA/actions/workflows/biocbook.yml)


## Overview

This repository contains source files for the "Principles of Spatial (Transcript)omics Analysis with Bioconductor" book.


## Link to book

The development version of the book is available at: https://lmweber.org/PrinciplesSTA/


## For developers

The book is built using [BiocBook](https://github.com/js2264/BiocBook). To preview and build the book locally, run the following code:

```
library(BiocBook)
bb <- BiocBook(".")
preview(bb)
```

You may also need to first manually install the dependency packages listed in `DESCRIPTION`, e.g.:

```
install.packages("BiocManager")
BiocManager::install(c("BiocParallel","SingleCellExperiment",
                     "reticulate","zellkonverter","BiocFileCache",
                     "STexampleData","SpatialExperiment","igraph",
                     "lobstr","rtracklayer","scater","scran",
                     "spatialLIBD","Banksy","RANN","RColorBrewer",
                     "hoodscanR","igraph","imcRtools","ExperimentHub",
                     "STexampleData","ggplot2","dplyr","nnSVG",
                     "patchwork","pheatmap","tidyr","ggspavis",
                     "scran","scater","SpatialExperiment",
                     "SpotSweeper", "scuttle"))
```


## For admins

To make changes and publish an updated version of the book, first manually commit and push any changes to files that are located outside the `inst/` directory, and then run the following code using the `BiocBook` package to commit and publish changes to files in `inst/` (e.g. `inst/assets/_book.yml` and `inst/pages/chapter-name.qmd` if adding a new chapter):

```
library(BiocBook)
bb <- BiocBook(".")
publish(bb, message = "commit message")
```


## BiocBook

The [BiocBook](https://github.com/js2264/BiocBook) package was developed by [Jacques Serizay](https://jserizay.com/) for building Quarto books with Bioconductor. More details on BiocBook can be found in the [BiocBook book](https://jserizay.com/BiocBookDemo/devel/).


## Instructions for Hackathon Jan 2025

For our hackathon in January 2025, see details in the [Project](https://github.com/users/lmweber/projects/1).

Some additional key points to keep in mind when preparing material:
- use `sandbox` branch from GitHub
- synchronize / pull updates from `sandbox` before getting started to minimize merge conflicts
- use the chapter `.qmd` template (saved in `inst/template.qmd` or [here](https://hackmd.io/@pzQuMLXvRmKJyMcPvKCLvg/SJ2HCv5Ukl)) and save `.qmd` files in `/inst/pages/`
- prefix any generated `.rds` output files with `seq-` / `img-` / `crs-`
- please keep file sizes in all commits small (e.g. commit only `.qmd` / code files, possibly include small image files if absolutely needed, do not include `.rds` data files in commits)
- save any necessary image files in `/inst/images/` and please keep image file sizes small (<100 KB) (or use a URL to an external image file instead)

In each analysis / method chapter, we aim to include the following:
- brief background and overview
- mention any relevant benchmark papers
- demonstrate 1-2 key methods available in Bioconductor using code examples
- (optional) mention any other important methods in text (but keep concise)

Workflow chapters are longer and are intended to demonstrate a comprehensive workflow for a given data type / technological platform.
