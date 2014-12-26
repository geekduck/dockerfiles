#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/dev
DOCKER_TAG=1.0
DOCKER_CONTAINER_NAME=dev

docker build -t $DOCKER_IMAGE_NAME:$DOCKER_TAG .

docker run -d --name $DOCKER_CONTAINER_NAME \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -p 610022:22 \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
