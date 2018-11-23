#!/bin/sh

if [ "$http_proxy" != "" ]; then
	OPT="--build-arg http_proxy=$http_proxy"
fi

docker build \
-t kmahara/c6-httpd24-php70 \
$OPT \
.
