FROM repo.tenzin.io/tlhakhan/os/ubuntu:20.04

# send over packages and install
COPY files/packages /packages
RUN apt-get update &&\
    xargs -t -a /packages apt-get install -y &&\
    apt-get clean

WORKDIR /playbooks
