FROM redis:5-alpine


ADD sentinel.conf /etc/redis/sentinel.conf
RUN chown redis:redis /etc/redis/sentinel.conf
ENV SENTINEL_QUORUM 2
ENV SENTINEL_DOWN_AFTER 500000
ENV SENTINEL_FAILOVER 10000
ENV SENTINEL_PORT 26381
ENV REDIS_PASSWORD F1tanUusDaII
ENV HOST redis-sentinel
ADD entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]