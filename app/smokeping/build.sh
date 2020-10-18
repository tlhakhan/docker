#!/bin/bash

docker build . \
  -t smokeping:latest \
  -t repo.home.local/tlhakhan/app/smokeping:latest \
  -t repo.home.local/tlhakhan/app/smokeping:$(date +%Y%m%d)

docker push repo.home.local/tlhakhan/app/smokeping:latest
docker push repo.home.local/tlhakhan/app/smokeping:$(date +%Y%m%d)
