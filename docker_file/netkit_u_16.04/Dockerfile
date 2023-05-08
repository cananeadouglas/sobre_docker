# link
# https://www.netkit.org/assets/netkit/netkit-2.8.tar.bz2
# https://github.com/KatharaFramework/Kathara/wiki/Kathara-Python-API

FROM ubuntu:16.04
LABEL version="1.0.0" description="Ubuntu Netkit" maintainer="Douglas Cananéa<cananeadouglas@gmail.com>"

RUN apt-get update && apt-get install -y --force-yes vim git curl wget gzip zip tar net-tools lib32z1 libc6-i386 xterm xtermcontrol xtermset bzip2
RUN useradd -rm -d /home/jdfc1 -s /bin/bash -g root -G sudo -u 1001 jdfc1
USER jdfc1
WORKDIR /home/jdfc1

RUN wget -c https://www.netkit.org/assets/netkit/netkit-2.8.tar.bz2
CMD tar -jxvf netkit-2.8.tar.bz2
RUN wget -c https://www.netkit.org/assets/netkit/netkit-kernel-i386-K2.8.tar.bz2
CMD tar -jxvf netkit-kernel-i386-K2.8.tar.bz2
RUN wget -c https://www.netkit.org/assets/netkit/netkit-filesystem-i386-F5.2.tar.bz2
CMD tar -jxvf netkit-filesystem-i386-F5.2.tar.bz2
 
CMD export NETKIT_HOME=/home/jdfc1/netkit && export PATH=$NETKIT_HOME/bin:$PATH && export MANPATH=:$NETKIT_HOME/man

WORKDIR /home/jdfc1/netkit
CMD ./check_configuration.sh

CMD echo "export NETKIT_HOME=/home/jdfc1/netkit" >> /etc/bash.bashrc && echo "export PATH=$PATH:/home/jdfc1/netkit/bin" >> /etc/bash.bashrc && echo "export MANPATH=$MANPATH:/home/jdfc1/netkit/man" >> /etc/bash.bashrc

VOLUME ./app/:/home/jdfc1/app/