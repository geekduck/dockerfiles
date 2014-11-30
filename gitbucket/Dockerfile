FROM java:latest
MAINTAINER geekduck

RUN apt-get -yq update

WORKDIR /root

# download gitbucket
RUN wget https://github.com/takezoe/gitbucket/releases/download/2.6/gitbucket.war

EXPOSE 8080 29418

ENTRYPOINT ["java", "-jar", "/root/gitbucket.war"]
