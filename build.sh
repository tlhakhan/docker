#!/bin/bash

# stop on fail
set -e

#
# find all build scripts and execute them
#

# find all os builds first
find ./os -type f -name build.sh -execdir ./{} ';'

# find all app builds
find ./app -type f -name build.sh -execdir ./{} ';'
