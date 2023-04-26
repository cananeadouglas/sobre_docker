FROM ubuntu:22.04
LABEL version="1.0.0" description="Ubuntu Machine" maintainer="Douglas Cananéa<cananeadouglas@gmail.com>"
RUN apt-get update && apt-get install -y vim git curl

RUN useradd -rm -d /home/jdfc1 -s /bin/bash -g root -G sudo -u 1001 jdfc1
USER jdfc1
WORKDIR /home/jdfc1
 
ARG SSH_PRIVATE_KEY
RUN mkdir ~/.ssh/
RUN echo "${SSH_PRIVATE_KEY}" > ~/.ssh/id_rsa
RUN chmod 600 ~/.ssh/id_rsa
