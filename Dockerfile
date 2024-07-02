FROM centos:7
RUN yum -y install wget; yum clean all
RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz
RUN tar xvfz node_exporter-*.*-amd64.tar.gz; rm -rf node_exporter-*.*-amd64.tar.gz
RUN mv node_exporter-*.*-amd64/node_exporter /usr/local/bin/
CMD ["node_exporter"]
