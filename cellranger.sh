#!/bin/bash
docker \
  run \
  --rm \
  -it \
  -v $(pwd):/share \
  --workdir=/share \
  koash/cellranger:0.1.0 \
  cellranger $@
