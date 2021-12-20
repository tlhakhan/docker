FROM repo.home.internal/tlhakhan/os/ubuntu:20.04

# send over pre-seed selections for package installs
COPY files/deb-selections /deb-selections
RUN debconf-set-selections /deb-selections

# set of packages needed for smokeping and install
COPY files/packages /packages
RUN apt-get update && \
    xargs -t -a /packages apt-get install -y &&\
    apt-get clean

# set up smokeping dirs
RUN mkdir /var/run/smokeping && \
    mkdir -p /var/lib/smokeping && \
    chown -R smokeping:smokeping /var/lib/smokeping && \
    chown -R smokeping:smokeping /var/cache/smokeping && \
    chown -R smokeping:smokeping /usr/share/smokeping

# launch helper for smokeping with supervisord
COPY files/launch_smokeping.sh /launch_smokeping.sh
COPY files/supervisord.conf /etc/supervisord.conf
COPY files/nginx.conf /etc/nginx/nginx.conf

# smokeping basic config data
COPY files/smokeping/ /etc/smokeping/

# tcpping probe setup
RUN git clone -b master https://github.com/deajan/tcpping /tcpping &&\
    cp /tcpping/tcpping /usr/bin/tcpping &&\
    chmod a+x /usr/bin/tcpping

# launch supervisord
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
