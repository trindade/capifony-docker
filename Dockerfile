FROM debian:jessie

MAINTAINER Martin Janser <martin@duss-janser.ch>

RUN apt-get update && apt-get install -y rubygems git curl
RUN gem install capifony -v 2.4.2

WORKDIR /root/workdir

ENTRYPOINT ["cap"]
