FROM centos:centos7
MAINTAINER Tony Pujals
RUN yum -y update yum
RUN yum -y install wget tar make gcc gcc-c++
RUN wget http://nodejs.org/dist/v0.10.33/node-v0.10.33.tar.gz
RUN tar xzf node-v*
WORKDIR /node-v0.10.33
RUN ./configure
RUN make
RUN make install
WORKDIR /
RUN rm -rf /node-v0.10.33

