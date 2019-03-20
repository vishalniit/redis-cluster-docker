# High Availability Redis
This `docker-compose.yml` is based on `redis:alpine-5` and `haproxy:1.7`. It creates a three node Redis cluster with [redis-sentinel](https://redis.io/topics/sentinel) and haproxy. The proxy node will always route traffic to the current master node. Sentinel will handle automation failover.

## Running the Cluster
Run following command to create one master 3 slaves & 3 sentinel redis High Availability setup. Don't increase number of scaled instance directly without making necessary changes in docker-compose file.
```sh
docker-compose up --scale redis-slave=3 --scale redis-sentinels=3 -d --build
```

## Table of ports
| Service       |  Host Port  | Container Port |
:--------------:|:-----------:|:---------------:
redis_proxy                           | 6379        | 6379           |
redis_proxy                           | 9000        | 9000           |
redis-master                          | Random Port | 6379           |
redis-cluster-docker_redis-slave_1    | Random Port | 6379           |
redis-cluster-docker_redis-slave_2    | Random Port | 6379           |
redis-cluster-docker_redis-slave_3    | Random Port | 6379           |
redis-cluster-docker_redis-sentinels_1| Random Port | 26379          |
redis-cluster-docker_redis-sentinels_2| Random Port | 26379          |
redis-cluster-docker_redis-sentinels_3| Random Port | 26379          |


#do it on Host Machine add it to your /etc/rc.local in order to retain the setting after a reboot
run below commands
``` 
echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag
```
