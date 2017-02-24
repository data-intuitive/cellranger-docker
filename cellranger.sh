#!/bin/bash
docker \
  run \
  --rm \
  -it \
  koash/cellranger:0.1.0 \
  cellranger $@
