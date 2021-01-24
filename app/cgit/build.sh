#!/bin/bash

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t cgit:latest \
  -t repo.home.local/tlhakhan/app/cgit:latest

docker push repo.home.local/tlhakhan/app/cgit:latest