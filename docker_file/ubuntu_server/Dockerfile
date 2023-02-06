FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt install curl -y && curl -fsSL https://get.casaos.io | sudo bash
WORKDIR /home
EXPOSE 80
