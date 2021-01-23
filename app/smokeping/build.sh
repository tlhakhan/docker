#!/bin/bash

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t smokeping:latest \
  -t repo.home.local/tlhakhan/app/smokeping:latest \
  -t repo.home.local/tlhakhan/app/smokeping:$(date +%Y%m%d)

docker push repo.home.local/tlhakhan/app/smokeping:latest
docker push repo.home.local/tlhakhan/app/smokeping:$(date +%Y%m%d)
