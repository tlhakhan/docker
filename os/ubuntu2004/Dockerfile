# FROM ubuntu:20.04
FROM repo.home.local/dockerhub/ubuntu:20.04

# this apt.conf file breaks artifactory generic's remote repo, removing fixes it
RUN rm /etc/apt/apt.conf.d/docker-gzip-indexes

# send over my sources
COPY sources.list /etc/apt/sources.list

ARG DEBIAN_FRONTEND=noninteractive
ARG DEBCONF_NONINTERACRTIVE_SEEN=true
ENV TERM=xterm

COPY deb-selections /deb-selections
RUN debconf-set-selections /deb-selections

# perform an update and clean up
RUN apt-get clean && \
    apt-get update && \
    apt-get install -y dialog debconf-utils apt-utils apt-file curl tzdata && \
    apt-get clean

# add home.local ca certificate to trust
RUN mkdir /usr/local/share/ca-certificates/home.local && \
    curl -o /usr/local/share/ca-certificates/home.local/ca-home-local.crt http://repo.home.local/artifactory/files/ca-home-local.crt && \
    update-ca-certificates
