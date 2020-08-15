# FROM centos:centos8
FROM repo.home.local/dockerhub/centos:centos8

# setup yum repos
COPY yum.repos.d /etc/yum.repos.d

# install packages
RUN yum makecache && \
    yum install -y which bind-utils lsof tree less vim-enhanced openssh-clients git

# add home.local CA certificate to trust
ADD http://repo.home.local/artifactory/files/ca-home-local.crt /etc/pki/ca-trust/source/anchors/
RUN update-ca-trust

# clean
RUN yum clean all
