#! /bin/sh
cd /opt/
yum upgarde -y
yum install wget -y
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
wget https://raw.githubusercontent.com/asimtech12/spring-boot-playbook/master/setup.yml
rpm -ivh /opt/epel-release-latest-6.noarch.rpm
yum upgrade -y
yum install ansible -y
echo "*************pre-reques are completed successfully***************"