FROM debian:latest
MAINTAINER Kengo Suzuki <kengoscal@gmail.coim>

RUN apt-get update && \
apt-get upgrade -y && \
apt-get install --no-install-recommends -y \
    build-essential && \
apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/* /var/tmp/*
