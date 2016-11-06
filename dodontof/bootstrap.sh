#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/dodontof
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=dodontof

docker run -d --name $DOCKER_CONTAINER_NAME \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
