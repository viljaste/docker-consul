#!/usr/bin/env bash

puppet apply --modulepath=/src/consul/build/modules /src/consul/build/build.pp
