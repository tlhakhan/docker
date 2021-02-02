FROM repo.home.local/tlhakhan/os/ubuntu:20.04

COPY packages /packages

RUN xargs -t -n1 -a /packages apt-get install -y 

WORKDIR /playbooks
