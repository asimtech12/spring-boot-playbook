#! /bin/sh
cd /opt/
yum upgarde -y
yum install wget -y
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
wget https://github.com/asimtech12/spring-boot-playbook/blob/master/helper.sh
rpm -ivh /opt/epel-release-latest-6.noarch.rpm
yum upgrade -y
yum install ansible -y
cp /opt/helper.sh /usr/bin/myapp
echo"*************pre-reques are completed successfully***************"