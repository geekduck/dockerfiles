#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/minidlna
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=minidlna

docker run -d --name $DOCKER_CONTAINER_NAME \
  --net=host \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v "$MEDIA_VIDEO_DIR":/opt/Videos \
  -p 8200:8200 \
  -p 1900:1900/udp \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
