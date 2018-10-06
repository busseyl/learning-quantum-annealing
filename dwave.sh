#!/bin/bash

docker run -it --rm --name dwave \
  -v "$PWD/.config/dwave/dwave.conf":/root/.config/dwave/dwave.conf \
  -v "$PWD/src":/usr/local/src/dwave \
  -w /usr/local/src/dwave \
  dwave:latest \
  dwave $@