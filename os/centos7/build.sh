#!/bin/bash
set -e
docker build -t centos:centos7 -t repo.home.local/tlhakhan/os/centos:centos7 . 

docker push repo.home.local/tlhakhan/os/centos:centos7
