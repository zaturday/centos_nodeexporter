FROM centos:centos7 as build
LABEL maintainer="opsdev@qunar.com"

RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz
RUN tar xvfz node_exporter-*.*-amd64.tar.gz
# WORKDIR
# ENV PATH=$PATH:/usr/local/go/bin:/home/q/go/bin 
