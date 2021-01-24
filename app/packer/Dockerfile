FROM repo.home.local/tlhakhan/os/ubuntu:20.04

ENV PACKER_VERSION=1.6.3

COPY packages /packages

RUN apt-get update && \
    xargs -a /packages -t -n1 apt-get install -y

RUN curl -o /tmp/packer.zip http://repo.home.local/artifactory/downloads/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
    unzip /tmp/packer.zip -d /usr/local/sbin && \
    chmod +x /usr/local/sbin/packer

WORKDIR /workspace
