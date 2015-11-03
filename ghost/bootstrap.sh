#!/bin/sh

DOCKER_IMAGE_NAME=ghost
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=ghost

docker run -d --name $DOCKER_CONTAINER_NAME \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -p 2368:2368 \
  -v `pwd`/data:/var/lib/ghost \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
