FROM ubuntu:trusty
MAINTAINER Phil Fenstermcher <pcfens@wm.edu>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y wget

RUN wget --progress=bar --no-check-certificate -O /tmp/jre.tar.gz --header "Cookie: oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jdk-7u60-linux-x64.tar.gz
RUN tar -zxf /tmp/jre.tar.gz
RUN mkdir -p /usr/lib/jvm/java-7-oracle
RUN mv jdk1.7.0_60/jre /usr/lib/jvm/java-7-oracle/jre
RUN rm -Rf jdk1.7.0_60 && rm /tmp/jre.tar.gz
RUN chown root:root /usr/lib/jvm/java-7-oracle

RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-7-oracle/jre/bin/java 1
RUN update-alternatives --set java /usr/lib/jvm/java-7-oracle/jre/bin/java

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade

RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/environment
