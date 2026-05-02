ARG BIOC_VERSION
FROM bioconductor/bioconductor_docker:${BIOC_VERSION}
COPY . /opt/pkg

# Install book package 
RUN Rscript -e 'options(pkgType = "both", install.packages.compile.from.source = "always") ; repos <- BiocManager::repositories(type = "both") ; remotes::install_local(path = "/opt/pkg/", repos=repos, dependencies=TRUE, build_vignettes=FALSE, upgrade=TRUE, type = "both") ; sessioninfo::session_info(installed.packages()[,"Package"], include_base = TRUE)'
