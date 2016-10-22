#!/bin/sh
# script take 1 argument start/stop/restart"
export JAVA_HOME=/opt/jdk1.7.0_45
export PATH=$JAVA_HOME/bin:$PATH
status=$1;
app_dir=/opt/src
maven_home=/opt/apache-maven-3.1.1

start(){
echo starting...;
cd $app_dir
$maven_home/bin/mvn spring-boot:run > /tmp/start.out &
sleep 5s;
echo "server started"
}

stop(){
echo stopping;
kill_pid=`ps -ef | grep spring-boot | grep -v grep | awk '{print $2}'`
if [ "$kill_pid" != "" ];then
kill -9 $kill_pid;
else
echo process is already down;
fi
}

restart(){
stop;
sleep 5s;
start;
}

if [ "$status" == "stop" ];then
stop;
elif [ "$status" == "start" ];then
start;
elif [ "$status" == "restart" ];then
restart;
else
echo invalid argument;
echo valid arguments = start, stop, restart;
fi