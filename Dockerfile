FROM ubuntu:bionic

RUN apt-get update && apt-get install -y libtcnative-1 openvas-cli && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/tomcat/logs

CMD ["/bin/bash"]
