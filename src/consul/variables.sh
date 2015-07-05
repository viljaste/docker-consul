#!/usr/bin/env bash

if [ -z "${SERVER}" ]; then
  SERVER="Off"
fi

export FACTER_SERVER="${SERVER}"

if [ -z "${BOOTSTRAP_EXPECT}" ]; then
  BOOTSTRAP_EXPECT=""
fi

export FACTER_BOOTSTRAP_EXPECT="${BOOTSTRAP_EXPECT}"

if [ -z "${ADVERTISE_ADDR}" ]; then
  ADVERTISE_ADDR=""
fi

export FACTER_ADVERTISE_ADDR="${ADVERTISE_ADDR}"
