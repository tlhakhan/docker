FROM repo.home.local/tlhakhan/os/ubuntu:20.04

# setup 
ENV GO_VERSION=1.15
ENV GOPATH=/app
ENV GOBIN=/${GOPATH}/bin

# setup path
ENV PATH=${PATH}:/usr/local/go/bin:${GOBIN}:${GOPATH}

# get go
RUN curl -s -o- https://repo.home.local/artifactory/downloads/go/go${GO_VERSION}.linux-amd64.tar.gz | tar -C /usr/local/ -zvxf -  

# get zfs
RUN apt-get update && \
    apt-get install -y zfsutils-linux

WORKDIR /${GOPATH}
