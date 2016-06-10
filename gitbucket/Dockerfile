FROM java:alpine
MAINTAINER geekduck

WORKDIR /root

RUN apk update \
    && apk add openssl \
    && rm -rf /var/cache/apk/*

# download gitbucket
RUN wget https://github.com/gitbucket/gitbucket/releases/download/4.1/gitbucket.war

EXPOSE 8080 29418

ENTRYPOINT ["java", "-jar", "/root/gitbucket.war"]
