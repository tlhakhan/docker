#!/bin/bash

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t crond:latest \
  -t repo.home.local/tlhakhan/app/crond:latest

docker push repo.home.local/tlhakhan/app/crond:latest
