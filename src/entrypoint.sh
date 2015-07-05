#!/usr/bin/env bash

case "${1}" in
  build)
    /bin/su - root -mc "apt-get update && /src/consul/build.sh && /src/consul/clean.sh"
    ;;
  run)
    /bin/su - root -mc "source /src/consul/variables.sh && /src/consul/run.sh"
    ;;
esac
