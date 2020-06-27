#FROM centos:centos8
FROM repo.home.local/tlhakhan/os/centos:centos8

ENV ANSIBLE_VERSION=2.9.10

RUN yum makecache && \
    yum install -y python38 python38-pip ansible-${ANSIBLE_VERSION}

WORKDIR /playbooks
