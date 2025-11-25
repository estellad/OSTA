<img src="inst/images/carousel/02_OSTA.png" width="25%" align="right"/> 

# Orchestrating Spatial Transcriptomics Analysis with Bioconductor

[![biocbook](https://img.shields.io/github/actions/workflow/status/lmweber/OSTA/biocbook.yml?label=Book%20build)](https://github.com/lmweber/OSTA/actions/workflows/biocbook.yml)  
[![depbuild](https://img.shields.io/github/actions/workflow/status/lmweber/OSTA/depbuild.yml?label=Dependencies%20build)](https://github.com/lmweber/OSTA/actions/workflows/depbuild.yml)

## Overview

This repository contains source files for the "Orchestrating Spatial Transcriptomics Analysis with Bioconductor" book.
The online version of the book is available at https://bioconductor.org/books/OSTA/

***

HL Crowell\*°, Y Dong\*, I Billato, P Cai, M Emons, S Gunz, B Guo, 
M Li, A Mahmoud, A Manukyan, H Pagès, P Panwar, S Rao, CJ Sargeant, L Shepherd Kern, 
M Ramos, J Sun, M Totty, VJ Carey, Y Chen, L Collado-Torres, S Ghazanfar, KD Hansen, 
K Martinowich, KR Maynard, E Patrick, D Righelli, D Risso, S Tiberi, L Waldron, 
R Gottardo†°, MD Robinson†°, SC Hicks†°, LM Weber†°.
Orchestrating spatial transcriptomics analysis with Bioconductor. *bioRxiv* (2025). 
[doi:10.1101/2025.11.20.688607](http://doi.org/10.1101/2025.11.20.688607)

(\* co-first. † co-senior. ° correspondence.)

***

## For developers

### GitHub Actions

The book is built by the GitHub Actions workflows in `.github/workflows/`.

The GitHub Actions workflows are split into two files:
- `depbuild.yml` installs dependencies and stores these in a Docker image (triggered only if there are changes to `DESCRIPTION` or `deps.Dockerfile`)
- `biocbook.yml` builds the book and runs checks (triggered by changes to any other files)

A new public version of the book is deployed if changes are pushed to `devel` branch.


### Pull requests

Please send pull requests into `sandbox` branch (instead of `devel`). This will trigger GitHub Actions to build the book and run checks, but will not deploy a new version of the book. The maintainers will then merge into `devel` to deploy a new version of the book after reviewing and accepting the pull request.


### Local build

To build a local version of the book, first install all dependency packages (from `DESCRIPTION`) manually. Then, run `quarto_render()` in an R session in the `inst/` directory as follows:

```
setwd("inst")
quarto::quarto_render(cache = TRUE)
```

To compile a complete fresh local build, delete all existing build files by deleting the following directories and files: `inst/.quarto/`, `inst/docs/`, `inst/index_cache/`, any files and directories except `.qmd` files and `images/` directory in `inst/pages/` (e.g. directory names ending with `_cache/` or `_files/`, `.md` files, and `.rds` files). You may also need to empty the `BiocFileCache` cache directory if any data files stored in the OSF data repository have changed.
