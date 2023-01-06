FROM debian:buster

RUN apt update

RUN apt install redis-server -y
COPY conf/redis.conf /etc/redis/redis.conf
CMD ["redis-server","/etc/redis/redis.conf"]