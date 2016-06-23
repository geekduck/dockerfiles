FROM alpine:latest
MAINTAINER geekduck

RUN apk update \
    && apk add ngircd \
    && rm -rf /var/cache/apk/*

# Add ngircd conf
ADD conf/ngircd.conf /etc/ngircd/ngircd.conf
ADD conf/ngircd.motd /etc/ngircd/ngircd.motd

EXPOSE 6667

ENTRYPOINT ["/usr/sbin/ngircd"]
CMD ["-n"]
