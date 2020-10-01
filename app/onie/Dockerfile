FROM repo.home.local/tlhakhan/os/centos:centos7

WORKDIR /onie

# pre-reqs
RUN yum makecache && \
  yum install -y gcc make stgit gperf texinfo autoconf bison flex help2man wget automake bzip2 patch ncurses-devel

RUN yum groupinstall -y "Development Tools"

# add user for make build target
RUN useradd -u 1500 builder

# get onie release
ADD http://repo.home.local/artifactory/downloads/opencomputeproject/onie/archive/2020.08.tar.gz /onie
RUN tar -zxvf /onie/2020.08.tar.gz

COPY build.sh /onie/
RUN chown -R builder:builder /onie

USER builder
ENTRYPOINT /onie/build.sh
