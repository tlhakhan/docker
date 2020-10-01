FROM repo.home.local/tlhakhan/os/debian:9

WORKDIR /onie

RUN apt-get install -y build-essential git sudo

# get onie release
ADD http://repo.home.local/artifactory/downloads/opencomputeproject/onie/archive/2020.08.tar.gz /onie
RUN tar -zxvf /onie/2020.08.tar.gz && \
	cd /onie/onie-2020.08/build-config/ && \
	make debian-prepare-build-host

# add user for make build target
RUN useradd -u 1500 builder
RUN chown -R builder:builder /onie
USER builder
