FROM repo.home.local/tlhakhan/os/ubuntu:20.04

# send over pre-seed selections for package installs
COPY deb-selections /deb-selections
RUN debconf-set-selections /deb-selections

# set of packages needed for smokeping
RUN apt-get update && \
    apt-get install -y rrdtool librrds-perl libssl-dev curl smokeping tcptraceroute traceroute ssmtp openssh-client bind9-utils spawn-fcgi supervisor nginx fping

# set up smokeping dirs
RUN mkdir /var/run/smokeping && \
    mkdir -p /var/lib/smokeping && \
    chown -R smokeping:smokeping /var/lib/smokeping && \
    chown -R smokeping:smokeping /var/cache/smokeping && \
    chown -R smokeping:smokeping /usr/share/smokeping


COPY launch_smokeping.sh /launch_smokeping.sh # launch helper for smokeping with supervisord
COPY supervisord.conf /etc/supervisord.conf
COPY nginx.conf /etc/nginx/nginx.conf

# smokeping basic config data
COPY smokeping/ /etc/smokeping/

# probe setup
RUN ln -sf /usr/bin/bash /bin/sh
COPY tcpping/tcpping /usr/bin/tcpping
RUN chmod a+x /usr/bin/tcpping

# launch supervisord
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
