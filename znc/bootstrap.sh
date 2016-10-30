#!/bin/sh

DOCKER_IMAGE_NAME=jimeh/znc
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=znc

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 9000:6667 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v `pwd`/conf:/znc-data \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
