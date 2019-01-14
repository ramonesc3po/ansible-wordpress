FROM ubuntu:18.04

RUN apt-get update && apt-get install -y openssh-server sudo software-properties-common ansible python-setuptools git curl
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN mkdir /var/run/sshd
RUN echo 'root:ansible' | chpasswd

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN cat /etc/ssh/sshd_config

ADD . /opt/role-wordpress

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
