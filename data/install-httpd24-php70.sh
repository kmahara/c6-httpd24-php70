#!/bin/sh

# install Apache 2.4 + PHP 7.0
yum -y install epel-release
yum -y install centos-release-scl
yum -y install rh-php70 rh-php70-php rh-php70-php-pdo rh-php70-php-mysqlnd

# Setup Apache
ln -s /opt/rh/httpd24/root/etc/httpd /etc
mkdir -p /var/www/html
sed -i -e 's@/opt/rh/httpd24/root/var/www/html@/var/www/html@g' /etc/httpd/conf/httpd.conf
ln -s /opt/rh/httpd24/root/var/log/httpd /var/log/
