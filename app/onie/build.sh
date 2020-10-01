#!/bin/bash

# git config
git config --global user.email "root@home.local" && git config --global user.name "Engineer 1"

# output ls
ls -lha /onie

# change into directory
cd /onie/onie-2020.08/build-config/

# become builder
echo "ONIE_MIRROR = http://repo.home.local/artifactory/onie" > local.make

# make recovery-iso target
make recovery-iso
