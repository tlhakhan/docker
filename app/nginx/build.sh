#!/bin/bash
set -e

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . -t nginx:latest -t repo.home.local/tlhakhan/app/nginx:latest

docker push repo.home.local/tlhakhan/app/nginx:latest
