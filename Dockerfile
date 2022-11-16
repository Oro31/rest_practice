FROM debian:buster

WORKDIR /home

RUN apt update && apt upgrade -y \
	vim \
	git \
	curl

RUN curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh

RUN bash nodesource_setup.sh

RUN apt install nodejs

RUN npm i -g @nestjs/cli

EXPOSE 8000
