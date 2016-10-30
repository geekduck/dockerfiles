#!/bin/sh

DOCKER_IMAGE_NAME=gitlab/gitlab-ce
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=gitlab

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 64322:22 \
  --restart always \
  -v `pwd`/conf/config:/etc/gitlab \
  -v `pwd`/conf/logs:/var/log/gitlab \
  -v `pwd`/conf/data:/var/opt/gitlab \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
