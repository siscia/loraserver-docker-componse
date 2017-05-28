FROM ubuntu:16.04

RUN apt-get -y -qq update

RUN apt-get install -y -qq apt-utils
RUN apt-get install -y -qq apt-transport-https
RUN apt-get install -y -qq software-properties-common 


RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 1CE2AFD36DBCCA00
RUN add-apt-repository "deb https://repos.loraserver.io/ubuntu xenial testing"

RUN apt-get -y -qq update

### CUSTOM

RUN apt-get install -y -qq lora-gateway-bridge

CMD lora-gateway-bridge
