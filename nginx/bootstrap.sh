#!/bin/sh

DOCKER_IMAGE_NAME=nginx
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=nginx

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 80:80 \
  -v /etc/localtime:/etc/localtime:ro \
  -v `pwd`/conf/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v `pwd`/conf/conf.d:/etc/nginx/conf.d:ro \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
 
