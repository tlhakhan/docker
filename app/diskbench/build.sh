#!/bin/bash

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t diskbench:latest \
  -t repo.home.local/tlhakhan/app/diskbench:latest

docker push repo.home.local/tlhakhan/app/diskbench:latest
