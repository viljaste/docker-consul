#!/usr/bin/env bash

puppet apply --modulepath=/src/consul/run/modules /src/consul/run/run.pp

supervisord -c /etc/supervisor/supervisord.conf
