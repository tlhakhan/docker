#!/bin/bash

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . -t go-dev:latest -t repo.home.local/tlhakhan/app/go-dev:latest
docker push repo.home.local/tlhakhan/app/go-dev:latest
