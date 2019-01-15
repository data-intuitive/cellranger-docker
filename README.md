# cellranger-docker

This is a fork of [koash/cellranger-docker](https://github.com/koash/cellranger-docker) aimed at creating a Docker container with an up-to-date version of CellRanger.

I did not touch the original Dockerfile when it comes to the base image for the container.

|Label|Name|Version|
|:--|:--|:--|
|Software|Cell Range|3.0.1|
|Base image|CentOS|7.3.1611|
|Docker container|cellranger-docker|3.0.1|

## Cell Ranger

Cell Ranger is a set of analysis pipelines that processes Chromium single cell 3’ RNA-seq output to align reads, generate gene-cell matrices and perform clustering and gene expression analysis.

- [Software Web Site](https://support.10xgenomics.com/single-cell/software/pipelines/latest/what-is-cell-ranger)

## Requirements
- [Docker](https://www.docker.com/)
- [Cell Ranger](https://support.10xgenomics.com/single-cell/software/downloads/latest)
    - **Please download the software in advance.**

## Installation

1. Clone this repository

```
git clone https://github.com/data-intuitive/cellranger-docker
cd cellranger-docker
```

2. Download `cellranger-3.0.1.tar.gz` from the [website](https://github.com/data-intuitive/cellranger-docker) and put it in the `cellranger-docker` directory.

3. Build the dockerfile

```
docker build -t cellranger:3.0.1 .
```

## Usage

Use the following as if you would normally run the tool:

```
./cellranger.sh [methods]
```

## Verify Installation
```
./cellranger.sh testrun --id=tiny
```

