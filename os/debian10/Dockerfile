FROM repo.home.internal/hub/debian:10

ARG DEBIAN_FRONTEND=noninteractive
ARG DEBCONF_NONINTERACRTIVE_SEEN=true
ENV TERM=xterm

# send over deb-selections
COPY files/deb-selections /deb-selections
RUN debconf-set-selections /deb-selections

# send over packages list
COPY files/packages /packages

# perform an update and clean up
RUN apt-get update &&\
    xargs -t -a /packages apt-get install -y &&\
    apt-get clean

# add internal CA certificate
COPY files/internal-ca.crt /usr/local/share/ca-certificates/internal-ca/internal-ca.crt
RUN update-ca-certificates
