#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/redis-commander
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=redis-commander

docker run -d --name $DOCKER_CONTAINER_NAME \
  --link redis:redis \
  -p 8082:8081 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v `pwd`/data/.redis-commander:/root/.redis-commander \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
