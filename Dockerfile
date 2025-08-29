# Dockerfile for R with tidyverse and microhaplotopia (from GitHub)
FROM rocker/tidyverse:4.5.1

LABEL maintainer="Bryan Nguyen"
LABEL description="microhaplotopia (emc-edits branch) with Rocker/tidyverse foundation"
LABEL version="64b0b1f"
LABEL url="https://github.com/eriqande/microhaplotopia/tree/emc-edits"
LABEL base="rocker/tidyverse:4.5.1"

## Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libglpk-dev && \
    rm -rf /var/lib/apt/lists/*

RUN install2.r --error --deps TRUE --skipinstalled \
    remotes \
    vroom \
    adegenet \
    vcfR \
    stringi \
    fs \
    && rm -rf /tmp/downloaded_packages

# Install microhaplotopia from GitHub
RUN R -e "remotes::install_github('eriqande/microhaplotopia', ref = '64b0b1fa0dd830856018d435bcf9c380c9370f66')"
