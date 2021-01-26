FROM repo.home.local/tlhakhan/os/ubuntu:20.04

COPY packages /packages
 
# get build tools and libraries
RUN apt-get update && \
    xargs -a /packages -t -n1 apt-get install -y
