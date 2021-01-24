#!/bin/bash


readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . \
  -t tftpd:latest \
  -t repo.home.local/tlhakhan/app/tftpd:latest

docker push repo.home.local/tlhakhan/app/tftpd:latest
