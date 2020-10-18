FROM repo.home.local/tlhakhan/os/ubuntu:20.04

COPY deb-selections /deb-selections
RUN debconf-set-selections /deb-selections

RUN apt-get update && \
    apt-get install -y rrdtool librrds-perl libssl-dev curl smokeping tcptraceroute traceroute ssmtp openssh-client bind9-utils spawn-fcgi supervisor nginx fping

RUN mkdir /var/run/smokeping && \
    mkdir -p /var/lib/smokeping && \
    chown -R smokeping:smokeping /var/lib/smokeping && \
    chown -R smokeping:smokeping /var/cache/smokeping && \
    chown -R smokeping:smokeping /usr/share/smokeping


COPY launch_smokeping.sh /launch_smokeping.sh
COPY supervisord.conf /etc/supervisord.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY smokeping/ /etc/smokeping/

# probes
RUN ln -sf /usr/bin/bash /bin/sh
COPY tcpping/tcpping /usr/bin/tcpping
RUN chmod a+x /usr/bin/tcpping

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
