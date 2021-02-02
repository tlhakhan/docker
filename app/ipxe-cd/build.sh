#!/bin/bash
set -e

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t ipxe-cd:latest \
  -t repo.home.local/tlhakhan/app/ipxe-cd:latest

docker push repo.home.local/tlhakhan/app/ipxe-cd:latest
