#!/bin/bash

docker build . \
  -t smokeping-app:latest \
  -t repo.home.local/tlhakhan/app/smokeping-app:latest
  -t repo.home.local/tlhakhan/app/smokeping-app:$(date +%Y%m%d)

docker push repo.home.local/tlhakhan/app/smokeping-app:latest
docker push repo.home.local/tlhakhan/app/smokeping-app:$(date +%Y%m%d)
