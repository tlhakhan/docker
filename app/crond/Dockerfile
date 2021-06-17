FROM repo.tenzin.io/tlhakhan/os/ubuntu:20.04

# send over packages
COPY files/packages /packages

# install packages
RUN apt-get update &&\
    xargs -a /packages -t apt-get install -y &&\
    apt-get clean

CMD ["cron", "-f"]
