FROM ubuntu:15.04
MAINTAINER geekduck

RUN apt-get -yq update

# install minidlna
RUN apt-get install -y minidlna

# Add config file
ADD conf/minidlna.conf /etc/minidlna.conf

VOLUME /data

CMD service minidlna start && /usr/bin/tail -f /dev/null
