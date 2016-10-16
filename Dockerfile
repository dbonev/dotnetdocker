FROM ubuntu:16.04

MAINTAINER Dimitar Bonev <dimitar.bonev@gmail.com>

# install https apt-get support
RUN apt-get update
RUN apt-get install apt-transport-https -y

# install nodejs
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs
# update npm version
RUN npm install -g npm
# install yo dotnet generators
RUN npm install -g yo
RUN npm install -g generator-aspnet

# install dot net
RUN sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
RUN apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893

RUN apt-get update
RUN apt-get install dotnet-dev-1.0.0-preview2-003131 -y

# install vim
RUN apt-get install vim -y
# install git
RUN apt-get install git -y
# configure vim
RUN cd /root && git clone https://github.com/dbonev/vimsetup.git
RUN mv /root/vimsetup/.vim* /root/
RUN rm -rf /root/vimsetup
