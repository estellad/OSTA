# Orchestrating Spatial (Transcript)omics Analysis with Bioconductor

📖 [Book](https://lmweber.github.io/OSTA) [![deployment](https://img.shields.io/github/actions/workflow/status/lmweber/OSTA/pages/pages-build-deployment?label=Book%20deployment)](https://github.com/lmweber/OSTA/actions/workflows/pages/pages-build-deployment)  
🐳 [Docker](https://github.com/lmweber/OSTA/pkgs/container/OSTA) [![biocbook](https://img.shields.io/github/actions/workflow/status/lmweber/OSTA/biocbook.yml?label=Docker%20image)](https://github.com/lmweber/OSTA/actions/workflows/biocbook.yml)


## Overview

This repository contains source files for the "Orchestrating Spatial (Transcript)omics Analysis with Bioconductor" book.


## Link to book

The development version of the book is available at: https://lmweber.org/OSTA/


## For developers

The online version of the book is built by the GitHub Actions workflows in `.github/workflows/` after merging into the `devel` branch.

Please send pull requests into `sandbox` branch (instead of `devel`).

To build a local rendered version of the book (e.g. for checking), run the following in the `inst/` directory:

```
quarto::quarto_render(cache = TRUE, output_format = "html")
```

In each analysis / method chapter, we aim to include the following:
- brief background and overview
- mention any relevant benchmark papers
- demonstrate 1-2 key methods available in Bioconductor using code examples
- (optional) mention any other important methods in text (but keep concise)

Workflow chapters are longer and are intended to demonstrate a comprehensive workflow for a given data type / technological platform.

Please keep any added file sizes (e.g. images) as small as possible, and/or commit only code files.
