#!/bin/bash
set -e

docker build . -t onie:202008 -t repo.home.local/tlhakhan/os/onie:202008
docker push repo.home.local/tlhakhan/os/onie:202008
