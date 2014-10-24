#!/bin/bash
yum -y install httpd
yum -y install mysql-server
yum -y install php php-mysql
chkconfig httpd on
chkconfig mysqld on
service httpd start
service mysqld start
mysql_secure_installation
echo -n "Server IP: "
ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'
