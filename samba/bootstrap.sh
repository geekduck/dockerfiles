#!/bin/sh

DOCKER_IMAGE_NAME=svendowideit/samba
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=samba

DOCKER_VOLUME_IMAGE_NAME=busybox
DOCKER_VOLUME_TAG=latest
DOCKER_VOLUME_CONTAINER_NAME=samba_volume

docker run -d --name $DOCKER_VOLUME_CONTAINER_NAME \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v /data \
  $DOCKER_VOLUME_IMAGE_NAME:$DOCKER_VOLUME_TAG

docker run -d --name $DOCKER_CONTAINER_NAME \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
  $DOCKER_VOLUME_CONTAINER_NAME
