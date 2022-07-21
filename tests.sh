#!/bin/sh
test_path=${1}
docker run --rm -t \
  -v $PWD:/code \
  -v /var/run/docker.sock:/var/run/docker.sock:rw \
  -e SYS_BASE=$SYS_BASE \
  -e SYS_INIT=$SYS_INIT \
  -e SYS_MICRO=$SYS_MICRO \
  -e SYS_DEFAULT=$SYS_DEFAULT \
  -e SYS_MINIMAL=$SYS_MINIMAL \
  srbala/testinfra:docker pytest --verbose --junit-xml junit.xml
