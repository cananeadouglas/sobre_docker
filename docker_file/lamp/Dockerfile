FROM ubuntu:latest
RUN  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 \
    mysql-server \
    php7.4 \
    git \
    gunzip \
    openssh-server
COPY start-script.sh /root/
RUN chmod +x /root/start-script.sh 
CMD /root/start-script.sh
RUN git clone git@github.com:cananeadouglas/almox.git /root
