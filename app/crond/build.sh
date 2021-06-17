#!/bin/bash
set -e

REPO_SERVER=repo.tenzin.io

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t crond:latest \
  -t ${REPO_SERVER}/tlhakhan/app/crond:latest

docker login ${REPO_SERVER}
docker push ${REPO_SERVER}/tlhakhan/app/crond:latest
