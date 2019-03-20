FROM redis:5-alpine
RUN apt-get update
RUN apt-get upgrade -y
COPY  redis.conf /etc/redis/redis.conf
RUN chown redis:redis /etc/redis/redis.conf
ENV MASTER_HOST redis-node-1
ENV MASTER_PORT 6379
ENV SLAVE_PORT 32786
ENV HOST redis-node-2
#COPY entrypoint.sh /usr/local/bin/
#RUN chmod +x /usr/local/bin/entrypoint.sh
#ENTRYPOINT ["entrypoint.sh"]