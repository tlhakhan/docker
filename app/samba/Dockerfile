FROM repo.home.local/tlhakhan/os/ubuntu:20.04

COPY packages /packages

RUN apt-get update && \
    xargs -t -n1 -a /packages apt-get install -y

WORKDIR /samba-build

RUN curl -s -o - http://repo.home.local/artifactory/samba/samba-4.13.3.tar.gz | tar --strip-components 1 -zxvf - -C .

RUN ./configure && \
    make && \
    make install
