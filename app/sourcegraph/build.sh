#!/bin/bash
set -e

REPO_SERVER=repo.tenzin.io
IMAGE_TAG=3.29.1

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t sourcegraph:latest \
  -t ${REPO_SERVER}/tlhakhan/app/sourcegraph:${IMAGE_TAG}\
  -t ${REPO_SERVER}/tlhakhan/app/sourcegraph:${IMAGE_TAG}-$(date +%Y%m%d)

docker login ${REPO_SERVER}
docker push ${REPO_SERVER}/tlhakhan/app/sourcegraph:${IMAGE_TAG}
docker push ${REPO_SERVER}/tlhakhan/app/sourcegraph:${IMAGE_TAG}-$(date +%Y%m%d)
