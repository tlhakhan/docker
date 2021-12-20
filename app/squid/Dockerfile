FROM repo.home.internal/tlhakhan/os/ubuntu:20.04

COPY files/packages /packages
 
# get build tools and libraries
RUN apt-get update && \
    xargs -a /packages -t apt-get install -y &&\
    apt-get clean

# send over sudoers file for proxy user
COPY files/proxy /etc/sudoers.d/proxy

EXPOSE 3128/tcp

USER proxy
ENTRYPOINT ["/usr/bin/sudo", "/usr/sbin/squid", "--foreground"]
