FROM ubuntu:16.04

RUN apt-get -y -qq update

RUN apt-get install -y -qq apt-utils
RUN apt-get install -y -qq apt-transport-https
RUN apt-get install -y -qq software-properties-common 


RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 1CE2AFD36DBCCA00
RUN add-apt-repository "deb https://repos.loraserver.io/ubuntu xenial testing"

RUN apt-get -y -qq update

### CUSTOM

RUN apt-get install -y -qq lora-app-server

RUN openssl req -newkey rsa:1024 -nodes -sha512 -x509 -days 3650 -nodes -out cert.pem -keyout key.pem -batch

ENV HTTP_TLS_CERT cert.pem
ENV HTTP_TLS_KEY key.pem

CMD lora-app-server
