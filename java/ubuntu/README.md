docker-java
===========

Install Oracle Java on the Ubuntu base image.

## Use

To build
`docker build -t wmit/java .`

This image is intended to be used to build other docker images that
require Oracle Java. If you want/need to run bash inside the container
you can use
`docker run -i -t wmit/java /bin/bash`

## Adjusting Version

The java version can be adjusted by changing the Dockerfile in lots
of places (lines 6, 9, and 10) prior to building the image.
