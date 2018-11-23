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
cd data
git clone mkb-charaden:kmahara/RingRing_Admin.git
cd /data/RingRing_Admin && git checkout -b cms_master origin/cms_master
cd /data/RingRing_Admin/fuel/app && chmod -R go+w logs

cp /tmp/RingRing_Admin.conf /etc/httpd/conf.d/

# Docker start script
cp /tmp/run.sh /
