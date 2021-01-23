#!/bin/bash

readlink -f . | xargs -n1 basename | figlet
sleep 1

docker build . -t ansible:latest -t repo.home.local/tlhakhan/app/ansible:latest

docker push repo.home.local/tlhakhan/app/ansible:latest
