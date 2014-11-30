#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/minidlna
DOCKER_TAG=1.0
DOCKER_CONTAINER_NAME=minidlna

docker build -t $DOCKER_IMAGE_NAME:$DOCKER_TAG .

docker run -d --name $DOCKER_CONTAINER_NAME \
  --net=host \
  -v /var/data/public/videos:/data \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
