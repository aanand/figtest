FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu quantal main universe" > /etc/apt/sources.list

RUN apt-get update

RUN apt-get -y install curl socat

ADD test.sh /test.sh

WORKDIR /

CMD ["sh", "-c", "/test.sh"]