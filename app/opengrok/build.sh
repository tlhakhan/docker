#!/bin/bash
set -e

REPO_SERVER=repo.tenzin.io

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t opengrok:latest \
  -t ${REPO_SERVER}/tlhakhan/app/opengrok:1.7.10 \
  -t ${REPO_SERVER}/tlhakhan/app/opengrok:1.7.10-$(date +%Y%m%d)

docker login ${REPO_SERVER}
docker push ${REPO_SERVER}/tlhakhan/app/opengrok:1.7.10
docker push ${REPO_SERVER}/tlhakhan/app/opengrok:1.7.10-$(date +%Y%m%d)
