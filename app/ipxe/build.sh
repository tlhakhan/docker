#!/bin/bash

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t ipxe:latest \
  -t repo.home.local/tlhakhan/app/ipxe:latest

docker push repo.home.local/tlhakhan/app/ipxe:latest
