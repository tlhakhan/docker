#!/bin/bash

set -e

REPO_SERVER=repo.home.internal

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t squid:latest \
  -t ${REPO_SERVER}/tlhakhan/app/squid:latest \
  -t ${REPO_SERVER}/tlhakhan/app/squid:$(date +%Y%m%d)

docker login ${REPO_SERVER}

docker push ${REPO_SERVER}/tlhakhan/app/squid:latest
docker push ${REPO_SERVER}/tlhakhan/app/squid:$(date +%Y%m%d)
