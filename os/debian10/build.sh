#!/bin/bash
set -e

REPO_SERVER=repo.tenzin.io

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t debian:10 \
  -t ${REPO_SERVER}/tlhakhan/os/debian:10 \
  -t ${REPO_SERVER}/tlhakhan/os/debian:10-$(date +%Y%m%d)

docker login ${REPO_SERVER}

docker push ${REPO_SERVER}/tlhakhan/os/debian:10
docker push ${REPO_SERVER}/tlhakhan/os/debian:10-$(date +%Y%m%d)
