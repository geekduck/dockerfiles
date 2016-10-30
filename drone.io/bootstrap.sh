#!/bin/sh

DOCKER_IMAGE_NAME=drone/drone
DOCKER_TAG=0.4
DOCKER_CONTAINER_NAME=drone

docker run -d --name $DOCKER_CONTAINER_NAME \
  --env-file `pwd`/conf/dronerc \
  -e GITLAB_URL=xxxxx \
  -e GITLAB_APP_ID=xxxxx \
  -e GITLAB_APP_SECRET=xxxxx \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v `pwd`/conf:/var/lib/drone \
  -v /var/run/docker.sock:/var/run/docker.sock \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
