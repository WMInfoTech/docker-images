FROM wmit/java
MAINTAINER Phil Fenstermacher <pcfens@wm.edu>

ENV SOLR_VERSION 4.9.0

ADD http://apache.osuosl.org/lucene/solr/${SOLR_VERSION}/solr-${SOLR_VERSION}.tgz /tmp/solr.tgz
RUN mkdir -p /opt && tar -zxf /tmp/solr.tgz -C /opt && rm -Rf /tmp/solr.tgz && mv /opt/solr-${SOLR_VERSION}/example /opt/solr

RUN mkdir /opt/solr/config && mv /opt/solr/multicore/core0 /opt/solr/config/core0
ADD solr.xml /opt/solr/config/solr.xml

# Clean up extra stuff we don't need
RUN rm -Rf /opt/solr/docs /opt/solr/licenses /opt/solr/example* /opt/solr/multicore /opt/solr/*.txt /opt/solr-${SOLR_VERSION}


EXPOSE 8983
WORKDIR /opt/solr
CMD java -jar -Dsolr.solr.home=/opt/solr/config /opt/solr/start.jar
