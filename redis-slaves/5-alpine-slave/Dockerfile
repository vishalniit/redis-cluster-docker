FROM redis:5-alpine
RUN apk update && apk upgrade
COPY  redis.conf /etc/redis/redis.conf
RUN chown redis:redis /etc/redis/redis.conf
