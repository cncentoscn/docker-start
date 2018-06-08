# Docker for ssh

# Base iamges

FROM centos

#Base Pkg
RUN rpm -ivh https://mirrors.aliyun.com/epel/epel-release-latest-7.noarch.rpm && \

yum install -y wget mysql-devel git redis tree net-tools sudo psmisc && \
yum clean all
#For SSHD

RUN yum install -y openssh-clients openssl-devel openssh-server && yum clean all && \
ssh-keygen -t rsa -f /etc/ssh/ssh_host_ras_key && \
ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key && \
ssh-keygen -A -t dsa -f /etc/ssh/ssh_host_das_key

#Set Root Password

RUN echo "root:root2758" | chpasswd
