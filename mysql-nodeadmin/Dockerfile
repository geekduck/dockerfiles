FROM node:4
MAINTAINER geekduck

WORKDIR /root

RUN npm install nodeadmin

EXPOSE 4040

ENTRYPOINT ["node", "/root/node_modules/nodeadmin/testserver"]