#!/bin/sh

DOCKER_IMAGE_NAME=redis
DOCKER_TAG=alpine
DOCKER_CONTAINER_NAME=redis

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 6379:6379 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v `pwd`/data:/data \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
