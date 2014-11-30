#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/ngirc
DOCKER_TAG=1.0
DOCKER_CONTAINER_NAME=ngirc

docker build -t $DOCKER_IMAGE_NAME:$DOCKER_TAG .

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 6667:6667 \
  -v /etc/localtime:/etc/localtime:ro \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
