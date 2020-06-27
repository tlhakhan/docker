FROM repo.home.local/tlhakhan/os/centos:centos8

ENV NGINX_VERSION=1.18.0

COPY nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum makecache && \
    yum install -y nginx-${NGINX_VERSION}
