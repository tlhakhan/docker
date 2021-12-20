#!/bin/bash

REPO_SERVER=repo.home.internal
readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t samba:latest \
  -t ${REPO_SERVER}/tlhakhan/app/samba:latest

docker login ${REPO_SERVER}
docker push ${REPO_SERVER}/tlhakhan/app/samba:latest
