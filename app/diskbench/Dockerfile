FROM repo.home.local/tlhakhan/os/ubuntu:20.04

COPY packages /packages

# fio build tools
RUN apt-get update && \
    xargs -a /packages -t -n1 apt-get install -y 

# test area
RUN mkdir /fio_tmp

COPY bench /bench
WORKDIR /bench
