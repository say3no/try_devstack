# docker build -t say3no/devstack .
# docker run --rm --name test -ti --privileged say3no/devstack /sbin/init
FROM centos:centos7
MAINTAINER say3no@gmail.com

RUN yum update -y
RUN yum install -y sudo git vim iproute redhat-lsb-core openvswitch

RUN sudo useradd -s /bin/bash -d /opt/stack -m stack
RUN echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack

RUN git clone -b stable/queens https://git.openstack.org/openstack-dev/devstack /opt/stack/devstack
RUN chown -R stack:stack /opt/stack/devstack
RUN /opt/stack/devstack/stack.sh 
COPY local.conf /opt/stack/devstack/local.conf

