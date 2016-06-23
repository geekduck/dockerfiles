FROM alpine:latest
MAINTAINER geekduck

# install minidlna
RUN apk --update add minidlna && rm -rf /var/cache/apk/*

# Add config file
ADD conf/minidlna.conf /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200

CMD minidlnad -d
