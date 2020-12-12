FROM repo.home.local/tlhakhan/os/ubuntu:20.04
 
ENV SQUID_VERSION=4.12
 
# get build tools and libraries
RUN apt-get update && \
    apt-get install -y build-essential libghc-gnutls-dev libssl-dev libexpat1-dev
 
# get and extract source
RUN curl -L -o- http://www.squid-cache.org/Versions/v4/squid-${SQUID_VERSION}.tar.gz | tar -zxvf - -C /
 
# create install folder
RUN mkdir /squid
 
# source folder
RUN cd /squid-${SQUID_VERSION} && \
    ./configure --prefix=/squid \
    --disable-translation \
    --with-filedescriptors=65536 \
    --with-gnutls \
    --with-large-files \
    --with-openssl \
    --enable-async-io=8 \
    --enable-build-info=Ubuntu \
    --enable-cache-digests \
    --enable-delay-pools \
    --enable-esi \
    --enable-eui \
    --enable-follow-x-forwarded-for \
    --enable-icap-client \
    --enable-icmp \
    --enable-inline \
    --enable-removal-policies=lru,heap \
    --enable-security-cert-validators=fake \
    --enable-storeid-rewrite-helpers=file \
    --enable-storeio=ufs,aufs,diskd,rock \
    --enable-url-rewrite-helpers=fake \
    --enable-zph-qos \
    --enable-useragent-log \
    --enable-referer-log && \
    make && make install
 
# move the built
FROM repo.home.local/tlhakhan/os/ubuntu:20.04
 
# create proxy user
#RUN useradd --uid 2000 --user-group --no-create-home proxy
 
# setup workdir
WORKDIR /squid
 
# copy squid install files from previous build
COPY --from=0 --chown=proxy:proxy /squid .
