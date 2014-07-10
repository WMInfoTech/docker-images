docker-tomcat
=============

Install tomcat on an Ubuntu server.

Java startup parameters can be passed via environment variables. Port 8080 is
exposed to linked containers.

## Use

To build:
`docker build -t wmit/tomcat[:8]`

To run:
`docker run wmit/tomcat[:8]`

To change java options set the CATALINA_OPTS environment variable.
The default value is `-Xms512M -Xmx1024M`

## Adjusting Tomcat Version

The version of tomcat can be adjusted by editing the line that reads
`ENV TOMCAT_VERSION 8.0.9` in the Dockerfile, the re-building the image.
