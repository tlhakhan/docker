#FROM centos:centos8
FROM repo.home.local/tlhakhan/os/ubuntu:20.04

ENV ANSIBLE_VERSION=2.9

RUN apt-get install -y ansible=${ANSIBLE_VERSION}* ansible-doc=${ANSIBLE_VERSION}*

WORKDIR /playbooks
