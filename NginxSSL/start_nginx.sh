#!/bin/bash
cd /etc/nginx
cp nginx.conf.template nginx.conf
eval "echo \"`cat upstream.template`\"" >> nginx.conf
service nginx start
