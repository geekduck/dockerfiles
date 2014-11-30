#!/bin/sh

DOCKER_IMAGE_NAME=jenkins
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=jenkins

docker run --name $DOCKER_CONTAINER_NAME \
  -p 8080:8080 \
  -v /data/jenkins:/var/jenkins_home \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
