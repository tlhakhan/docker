FROM repo.home.internal/tlhakhan/os/ubuntu:20.04

COPY files/packages /packages

RUN apt-get update && \
    xargs -t -a /packages apt-get install -y &&\
    apt-get clean

WORKDIR /samba-build

RUN curl -o - https://repo.home.internal/artifactory/samba/samba-4.14.5.tar.gz | tar --strip-components 1 -zxvf - -C .

RUN ./configure --with-shared-modules='!vfs_snapper' && \
    make && \
    make install
