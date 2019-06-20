#!/bin/sh

if [ ! -f /.dockerenv ]; then
	echo "docker 内で実行してください。"
	exit 1
fi

/bin/cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
yum -y install telnet dstat tcpdump perl

# Content
mv /tmp/.ssh ~

mkdir /data

# Docker start script
cp /tmp/run.sh /
