#!/bin/sh

DOCKER_IMAGE_NAME=postgres
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=postgres

docker run -d --name $DOCKER_CONTAINER_NAME \
  -e POSTGRES_PASSWORD=postgres \
  -p 5432:5432 \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v `pwd`/data:/var/lib/postgresql/data \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
