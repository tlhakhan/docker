#!/bin/bash
set -e

docker build . \
  -t centos:centos8 \
  -t repo.home.local/tlhakhan/os/centos:centos8 \
  -t repo.home.local/tlhakhan/os/centos:$(date +%Y%m%d)

docker push \
  repo.home.local/tlhakhan/os/centos:centos8
docker push \
  repo.home.local/tlhakhan/os/centos:(date +%Y%m%d)
