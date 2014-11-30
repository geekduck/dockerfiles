FROM ubuntu:14.04
MAINTAINER geekduck

RUN apt-get -yq update

# install irc
RUN apt-get install -y ngircd

# Add ngircd conf
ADD conf/ngircd.conf /etc/ngircd/ngircd.conf
ADD conf/ngircd.motd /etc/ngircd/ngircd.motd

EXPOSE 6667

ENTRYPOINT ["/usr/sbin/ngircd"]
CMD ["-n"]
