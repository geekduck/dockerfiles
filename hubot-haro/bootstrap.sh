#!/bin/sh

DOCKER_IMAGE_NAME=geekduck/hubot-haro
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=hubot-haro

docker run -d --name $DOCKER_CONTAINER_NAME \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -e HUBOT_SLACK_TOKEN=$HUBOT_SLACK_TOKEN \
  -e REDIS_URL=redis \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
