#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/gitbucket
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=gitbucket

docker run -d --name $DOCKER_CONTAINER_NAME \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v `pwd`/data:/root/.gitbucket \
  -p 29418:29418 \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
