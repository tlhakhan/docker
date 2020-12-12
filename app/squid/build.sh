#!/bin/bash

docker build . \
  -t squid:latest \
  -t repo.home.local/tlhakhan/app/squid:latest \
  -t repo.home.local/tlhakhan/app/squid:$(date +%Y%m%d)

#docker push repo.home.local/tlhakhan/app/squid:latest
#docker push repo.home.local/tlhakhan/app/squid:$(date +%Y%m%d)
