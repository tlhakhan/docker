FROM repo.home.local/tlhakhan/os/centos:centos8

# setup 
ENV GO_VERSION=1.14.4
ENV GOPATH=/app
ENV GOBIN=/${GOPATH}/bin

ENV PATH=${PATH}:/usr/local/go/bin:${GOBIN}:${GOPATH}

# get docker
RUN curl -o- https://repo.home.local/artifactory/downloads/go/go${GO_VERSION}.linux-amd64.tar.gz | tar -C /usr/local -zxf -  

WORKDIR /${GOPATH}
