#!/bin/sh

set -eu
sleep 10
echo 'foobar'
if [ -f /data/mysql.tar.gz ]
  then
    cd /
    gunzip /data/mysql.tar.gz
    tar -xf /data/mysql.tar
fi

touch /var/lib/mysql/data_prepare_finish

exec $@
