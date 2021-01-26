FROM repo.home.local/tlhakhan/os/ubuntu:20.04

ENV IPXE_VERSION=v1.21.1

WORKDIR /build

COPY packages /packages
COPY run.ipxe /build/run.ipxe

RUN apt-get update && \
    xargs -a /packages -t -n1 apt-get install -y

RUN git clone -b ${IPXE_VERSION} http://git.home.local/cgit/ipxe/ipxe

RUN cd ipxe/src && \
    make all && \
    make bin/ipxe.iso EMBED=/build/run.ipxe && \
    mv bin/ipxe.iso /build/ipxe.iso
