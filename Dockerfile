FROM redis:6.2.6-alpine
RUN mkdir '/var/lib/redis'
COPY redis.conf .

ENTRYPOINT ["redis-server", "./redis.conf"]
