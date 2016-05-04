FROM java:alpine
MAINTAINER geekduck

WORKDIR /root

# download gitbucket
RUN wget https://github.com/gitbucket/gitbucket/releases/download/4.0/gitbucket.war

EXPOSE 8080 29418

ENTRYPOINT ["java", "-jar", "/root/gitbucket.war"]
