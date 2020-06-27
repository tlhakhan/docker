#!/bin/bash

docker build . -t go-env:latest -t repo.home.local/tlhakhan/app/go-env:latest
docker push repo.home.local/tlhakhan/app/go-env:latest
