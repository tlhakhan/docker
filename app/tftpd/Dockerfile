FROM repo.home.local/tlhakhan/os/ubuntu:20.04

VOLUME /data

RUN apt-get update && \
    apt-get install -y tftpd-hpa && \
    chown tftp:tftp /data

WORKDIR /data

CMD [ "/sbin/in.tftpd", "--ipv4", "--foreground", "--secure", "--user", "tftp", "/data"]
