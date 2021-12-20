#FROM ubuntu:20.04
FROM repo.home.internal/hub/ubuntu:20.04
ENV TERM=xterm

# send over package list
COPY files/packages /packages

# send over selections
COPY files/deb-selections /deb-selections
RUN debconf-set-selections /deb-selections

# perform packages install
RUN apt-get update && \
    xargs -t -a /packages apt-get install -y && \
    apt-get clean

# add homelab CA certificate
COPY files/internal-ca.crt /usr/local/share/ca-certificates/internal-ca/internal-ca.crt
RUN update-ca-certificates
