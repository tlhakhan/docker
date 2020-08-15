#!/bin/bash

docker build . -t go-dev:latest -t repo.home.local/tlhakhan/app/go-dev:latest
docker push repo.home.local/tlhakhan/app/go-dev:latest
