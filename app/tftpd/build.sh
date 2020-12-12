#!/bin/bash

docker build . -t tftpd:latest -t repo.home.local/tlhakhan/app/tftpd:latest

docker push repo.home.local/tlhakhan/app/tftpd:latest
