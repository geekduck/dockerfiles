#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/minidlna
DOCKER_TAG=alpine
DOCKER_CONTAINER_NAME=minidlna

docker build -t $DOCKER_IMAGE_NAME:$DOCKER_TAG .

docker run -d --name $DOCKER_CONTAINER_NAME \
  --net=host \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v /var/data/public/videos:/var/lib/minidlna/videos \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
