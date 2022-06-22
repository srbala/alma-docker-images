#!/bin/sh

docker run --rm -t \
  -v $(pwd):/code \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  srbala/testinfra:docker
