FROM java:alpine
MAINTAINER geekduck

WORKDIR /root

# download gitbucket
RUN wget https://github.com/gitbucket/gitbucket/releases/download/3.13/gitbucket.war

EXPOSE 8080 29418

ENTRYPOINT ["java", "-jar", "/root/gitbucket.war"]
