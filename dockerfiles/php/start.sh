#!/bin/bash

dir=/var/www/blog

# 更新composer
composer update

# 增加host.docker.internal
ip -4 route list match 0/0 | awk '{print $3 " host.docker.internal"}' >> /etc/hosts

# 启动php-fpm
php-fpm -F