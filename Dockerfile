FROM debian

RUN apt update

RUN apt upgrade

RUN yes | apt install nginx