#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/ngirc
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=ngirc

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 6667:6667 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
