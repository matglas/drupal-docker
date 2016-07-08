FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

# Set timezone and locale.
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install basics.
RUN apt-get update -q && \
    apt-get install apt-utils git wget curl unzip nano -q -y && \
    apt-get clean

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*