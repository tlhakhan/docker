#!/bin/bash
set -e

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t debian:10 \
  -t repo.home.local/tlhakhan/os/debian:10 \
  -t repo.home.local/tlhakhan/os/debian:10-$(date +%Y%m%d)

docker push \
  repo.home.local/tlhakhan/os/debian:10
docker push \
  repo.home.local/tlhakhan/os/debian:10-$(date +%Y%m%d)
