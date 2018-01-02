#!/bin/sh

ps aux

mysql -p --password=$MYSQL_ROOT_PASSWORD << EOF
 create database test;
 grant all privileges on gallery.* to 'test' identified by "$MYSQL_ROOT_PASSWORD";
 flush privileges;
EOF

