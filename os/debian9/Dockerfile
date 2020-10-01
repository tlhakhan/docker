# FROM ubuntu:20.04
FROM repo.home.local/dockerhub/debian:9

# this apt.conf file breaks artifactory generic mirror repo, removing fixes it
RUN rm /etc/apt/apt.conf.d/docker-gzip-indexes

# send over sources
COPY sources.list /etc/apt/sources.list

# perform an update and clean up
RUN apt-get clean && \
    apt-get update && \
    apt-get install -y curl && \
    apt-get clean

# add home.local ca certificate to trust
RUN mkdir /usr/local/share/ca-certificates/home.local && \
    curl -o /usr/local/share/ca-certificates/home.local/ca-home-local.crt http://repo.home.local/artifactory/files/ca-home-local.crt && \
    update-ca-certificates

