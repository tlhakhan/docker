FROM repo.tenzin.io/tlhakhan/os/ubuntu:20.04

COPY files/packages /packages
 
# get build tools and libraries
RUN apt-get update && \
    xargs -a /packages -t apt-get install -y &&\
    apt-get clean
