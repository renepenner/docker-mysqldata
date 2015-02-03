#!/bin/sh

if [ -f /data/mysql.tar.gz ]
  then
    rm /data/mysql.tar.gz
fi

rm /var/lib/mysql/data_prepare_finish
mkdir -p /data
tar -cf /data/mysql.tar /var/lib/mysql
gzip /data/mysql.tar
