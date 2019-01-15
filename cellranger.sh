#!/bin/bash

docker run -it -v "`pwd`":/share cellranger:3.0.1 cellranger $@
