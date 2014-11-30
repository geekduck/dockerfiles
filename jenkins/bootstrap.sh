#!/bin/sh

DOCKER_IMAGE_NAME=jenkins
DOCKER_TAG=weekly
DOCKER_CONTAINER_NAME=jenkins

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 8080:8080 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /data/jenkins:/var/jenkins_home \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
