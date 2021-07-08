#!/bin/bash
set -e

REPO_SERVER=repo.tenzin.io
IMAGE_TAG=1.7

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t opengrok:latest \
  -t ${REPO_SERVER}/tlhakhan/app/opengrok:${IMAGE_TAG}\
  -t ${REPO_SERVER}/tlhakhan/app/opengrok:${IMAGE_TAG}-$(date +%Y%m%d)

docker login ${REPO_SERVER}
docker push ${REPO_SERVER}/tlhakhan/app/opengrok:${IMAGE_TAG}
docker push ${REPO_SERVER}/tlhakhan/app/opengrok:${IMAGE_TAG}-$(date +%Y%m%d)
