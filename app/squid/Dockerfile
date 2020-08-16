FROM repo.home.local/tlhakhan/os/ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

# install squid
RUN apt-get update && \
    apt-get install -y squid=4.10-1ubuntu1 && \
    apt-get clean
