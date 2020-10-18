#!/bin/bash
set -e

docker build . \
  -t debian:10 \
  -t repo.home.local/tlhakhan/os/debian:10 \
  -t repo.home.local/tlhakhan/os/debian:10-$(date +%Y%m%d)

docker push \
  repo.home.local/tlhakhan/os/debian:10
docker push \
  repo.home.local/tlhakhan/os/debian:10-$(date +%Y%m%d)
