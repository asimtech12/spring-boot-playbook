# spring-boot-playbook
uploaded
step-1 is to run the pre-req script which will install ansible in centos 6.8 and will put required setup.yml file in /opt/ directory , this step will take close to 8 min depending upon internet speed.
step -2 is to run "ansible-playbook /opt/setup.yml" command which will install JDK 7/ Git/ Maven/ setup the paths and disable SElinux
step -3 is start the app by passing the command "myapp start",<myapp will take either start or stop or restart as an arguments>
