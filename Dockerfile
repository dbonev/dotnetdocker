FROM ubuntu:16.04

MAINTAINER Dimitar Bonev <dimitar.bonev@gmail.com>

RUN apt-get update
RUN apt-get install apt-transport-https -y

RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs

RUN sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
RUN apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893

RUN apt-get update
RUN apt-get install dotnet-dev-1.0.0-preview2-003131 -y
RUN apt-get install vim -y
RUN apt-get install git -y
RUN cd /root && git clone https://github.com/dbonev/vimsetup.git
RUN mv /root/vimsetup/.vim* /root/
RUN rm -rf /root/vimsetup
