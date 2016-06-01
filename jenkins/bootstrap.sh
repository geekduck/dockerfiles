#!/bin/sh

DOCKER_IMAGE_NAME=jenkinsci/jenkins
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=jenkins

docker run -d --name $DOCKER_CONTAINER_NAME \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v `pwd`/data:/var/jenkins_home \
  -e JENKINS_JAVA_OPTIONS="-Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Tokyo" \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG \
  --prefix=/jenkins -Dfile.encoding=UTF-8
