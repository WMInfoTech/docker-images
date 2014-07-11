FROM wmit/java
MAINTAINER Phil Fenstermacher <pcfens@wm.edu>

ENV TOMCAT_VERSION 7.0.54
ENV CATALINA_OPTS -Xms512M -Xmx1024M

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libtcnative-1

ADD http://mirror.cc.columbia.edu/pub/software/apache/tomcat/tomcat-7/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz /tmp/tomcat.tar.gz
RUN tar -zxf /tmp/tomcat.tar.gz -C /opt && mv /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat && rm /tmp/tomcat.tar.gz

# RUN rm -Rf /opt/tomcat/webapps/docs /opt/tomcat/webapps/examples

EXPOSE 8080

CMD /opt/tomcat/bin/catalina.sh run
