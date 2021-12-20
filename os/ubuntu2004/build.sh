#!/bin/bash
set -e

REPO_SERVER=repo.home.internal

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t ubuntu:latest \
  -t ${REPO_SERVER}/tlhakhan/os/ubuntu:20.04 \
  -t ${REPO_SERVER}/tlhakhan/os/ubuntu:20.04-$(date +%Y%m%d)

docker login ${REPO_SERVER}
docker push ${REPO_SERVER}/tlhakhan/os/ubuntu:20.04
docker push ${REPO_SERVER}/tlhakhan/os/ubuntu:20.04-$(date +%Y%m%d)
