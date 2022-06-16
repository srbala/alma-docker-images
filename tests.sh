#!/bin/sh

docker run --rm -t \
  -v $(pwd):/project \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  srbala/testinfra:alma9
