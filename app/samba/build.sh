#!/bin/bash

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t samba:latest \
  -t repo.home.local/tlhakhan/app/samba:latest

docker push repo.home.local/tlhakhan/app/samba:latest
