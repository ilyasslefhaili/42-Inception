FROM debian:buster
RUN apt update -y && apt install redis-server -y
CMD ["redis-server","/etc/redis/redis.conf"]