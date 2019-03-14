#!/bin/sh
 
MASTER_IP=`getent hosts ${MASTER_HOST} | awk '{ print $1 }'`
#MYIP=`getent hosts ${HOST} | awk '{ print $1 }'`
MYIP=13.71.87.72
sed -i "s/\$MYIP/$MYIP/g" /etc/redis/redis.conf
sed -i "s/\$SLAVE_PORT/$SLAVE_PORT/g" /etc/redis/redis.conf
exec docker-entrypoint.sh redis-server /etc/redis/redis.conf --slaveof ${MASTER_IP} ${MASTER_PORT} --requirepass F1tanUusDaII --appendonly yes --masterauth F1tanUusDaII