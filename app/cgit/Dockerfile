FROM repo.home.local/tlhakhan/os/ubuntu:20.04

COPY packages /packages

RUN apt-get update && \
    xargs -n1 -t -a /packages apt-get install -y

RUN rm /etc/apache2/conf-enabled/* && \
    a2enconf cgit && \
    a2enmod cgid

COPY apache2.conf /etc/apache2/apache2.conf
COPY 000-default.conf /etc/apache2/sites-enabled/00-default.conf
COPY cgitrc /etc/cgitrc

RUN chown root:www-data /var/lib/git && \
    chmod 750 /var/lib/git

EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
