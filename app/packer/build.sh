#!/bin/bash

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t packer:latest \
  -t repo.home.local/tlhakhan/app/packer:latest

docker push repo.home.local/tlhakhan/app/packer:latest
