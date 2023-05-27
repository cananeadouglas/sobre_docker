FROM centos

RUN yum -y update && yum -y install gcc openssl-devel bzip2-devel libffi-devel wget make && yum clean all

RUN cd /opt && wget --no-check-certificate https://www.python.org/ftp/python/3.8.3/Python-3.8.3.tgz && tar xzf Python-3.8.3.tgz && cd Python-3.8*/ && ./configure --enable-optimizations && make altinstall && rm -rf /opt/Python* && mkdir /pyscripts

