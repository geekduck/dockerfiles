FROM java:latest
MAINTAINER geekduck

WORKDIR /root

# download gitbucket
RUN wget https://github.com/takezoe/gitbucket/releases/download/2.6/gitbucket.war

EXPOSE 29418

ENTRYPOINT ["java", "-jar", "/root/gitbucket.war"]
