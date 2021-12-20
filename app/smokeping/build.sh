#!/bin/bash

REPO_SERVER=repo.home.internal

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t smokeping:latest \
  -t ${REPO_SERVER}/tlhakhan/app/smokeping:latest \
  -t ${REPO_SERVER}/tlhakhan/app/smokeping:$(date +%Y%m%d)

docker login ${REPO_SERVER}

docker push ${REPO_SERVER}/tlhakhan/app/smokeping:latest
docker push ${REPO_SERVER}/tlhakhan/app/smokeping:$(date +%Y%m%d)
