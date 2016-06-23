#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/mysql-nodeadmin
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=mysql-nodeadmin

docker build -t $DOCKER_IMAGE_NAME:$DOCKER_TAG .

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 8083:4040 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
