# FROM ubuntu:20.04
FROM repo.home.local/dockerhub/ubuntu:20.04

ENV TERM=xterm

# send over my preferences
COPY root /root/

# send over my sources
COPY sources.list /etc/apt/sources.list

# send over my package list
COPY packages /packages

# send over selections
COPY deb-selections /deb-selections
RUN debconf-set-selections /deb-selections

# perform cache update
RUN apt-get clean && \
    apt-get update 

# perform packages install
RUN xargs -t -a /packages apt-get install -y && \
    apt-get clean

# add home.local ca certificate to trust
RUN mkdir /usr/local/share/ca-certificates/home.local && \
    curl -o /usr/local/share/ca-certificates/home.local/ca-home-local.crt http://repo.home.local/artifactory/files/ca-home-local.crt && \
    update-ca-certificates
