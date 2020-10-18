#!/bin/bash
set -e

docker build . \
  -t ubuntu:latest \
  -t repo.home.local/tlhakhan/os/ubuntu:20.04 \
  -t repo.home.local/tlhakhan/os/ubuntu:20.04-$(date +%Y%m%d)

docker push \
  repo.home.local/tlhakhan/os/ubuntu:20.04
docker push \
  repo.home.local/tlhakhan/os/ubuntu:20.04-$(date +%Y%m%d)
