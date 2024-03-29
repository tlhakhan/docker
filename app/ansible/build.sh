#!/bin/bash
set -e

REPO_SERVER=repo.home.internal
readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t ansible:latest \
  -t ${REPO_SERVER}/tlhakhan/app/ansible:latest

docker login ${REPO_SERVER}
docker push ${REPO_SERVER}/tlhakhan/app/ansible:latest
