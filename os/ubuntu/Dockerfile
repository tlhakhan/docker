# FROM ubuntu:20.04
FROM repo.home.local/ubuntu:20.04

# this apt.conf file breaks artifactory generic mirror repo, removing fixes it
RUN rm /etc/apt/apt.conf.d/docker-gzip-indexes

# send over sources
COPY sources.list /etc/apt/sources.list

# perform an update and clean up
RUN apt-get clean && apt-get update && apt-get clean
