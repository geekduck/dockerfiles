#!/bin/sh

DOCKER_IMAGE_NAME=mongo
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=mongo

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 27017:27017 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v `pwd`/data/db:/data/db \
  -v `pwd`/data/configdb:/data/configdb \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
