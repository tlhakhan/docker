#!/bin/bash

docker build . -t ansible:latest -t repo.home.local/tlhakhan/app/ansible:latest

docker push repo.home.local/tlhakhan/app/ansible:latest
