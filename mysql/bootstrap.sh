#!/bin/sh

DOCKER_IMAGE_NAME=mysql
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=mysql

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 3306:3306 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v `pwd`/data:/var/lib/mysql \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
