#!/bin/bash
set -e
docker build . -t nginx:latest -t repo.home.local/tlhakhan/app/nginx:latest

docker push repo.home.local/tlhakhan/app/nginx:latest