FROM ubuntu:bionic

RUN apt-get update && apt-get install -y locales

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install APR Apache and Openvas-CLI
RUN apt-get install -y libtcnative-1 openvas-cli && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/tomcat/logs

CMD ["/bin/bash"]
