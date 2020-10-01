#!/bin/bash
set -e

docker build . -t debian:9 -t repo.home.local/tlhakhan/os/debian:9
docker push repo.home.local/tlhakhan/os/debian:9
