FROM java:latest
MAINTAINER geekduck

WORKDIR /root

# download gitbucket
RUN wget https://github.com/takezoe/gitbucket/releases/download/3.0/gitbucket.war

EXPOSE 8080 29418

ENTRYPOINT ["java", "-jar", "/root/gitbucket.war"]
