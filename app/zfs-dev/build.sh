#!/bin/bash

docker build . -t zfs-dev:latest -t repo.home.local/tlhakhan/app/zfs-dev:latest
docker push repo.home.local/tlhakhan/app/zfs-dev:latest
