#!/bin/sh

DOCKER_IMAGE_NAME=dperson/samba
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=samba

docker run -it -d --name $DOCKER_CONTAINER_NAME \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -p 137:137 \
  -p 139:139 \
  -p 445:445 \
  -v samba_volume:/etc/samba \
  -v /var/data:/mnt \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG \
  -u "`whoami`;`whoami`" \
  -s "public;/mnt/public;no;no;yes" \
  -s "private;/mnt/private;no;no;no;`whoami`"
