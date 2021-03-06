FROM centos:latest

USER root

WORKDIR /opt

RUN yum install -y wget which \
  && wget https://bootstrap.pypa.io/get-pip.py \
  && python get-pip.py \
  && rm -f get-pip.py

ENTRYPOINT ["/bin/bash"]
