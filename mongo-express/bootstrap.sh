#!/bin/sh

DOCKER_IMAGE_NAME=mongo-express
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=mongo-express

docker run -d --name $DOCKER_CONTAINER_NAME \
  --link mongo:mongo \
  -p 8081:8081 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
