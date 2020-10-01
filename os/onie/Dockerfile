FROM repo.home.local/tlhakhan/os/debian:9

WORKDIR /onie

# pre-reqs for tar install
RUN apt-get install -y build-essential git sudo

# get onie release
ADD http://repo.home.local/artifactory/downloads/opencomputeproject/onie/archive/2020.08.tar.gz /onie
RUN tar -zxvf /onie/2020.08.tar.gz && \
	  cd /onie/onie-2020.08/build-config/ && \
	  make debian-prepare-build-host

# send mirror
RUN echo "ONIE_MIRROR = http://repo.home.local/artifactory/onie" > /onie/onie-2020.08/build-config/local.make

# add user for make build target
RUN useradd -u 1500 builder --create-home --comment build_engineer
RUN chown -R builder:builder /onie

# run as builder
USER builder
RUN touch /home/builder/.gitconfig && \
    git config --global user.email "builder@home.local" && \
    git config --global user.name "Build Engineer"
