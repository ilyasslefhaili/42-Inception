FROM debian:buster

RUN apt update -y && apt install mariadb-server  -y

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/

COPY setup_db.sh /usr/bin/setup

RUN chmod +x /usr/bin/setup

ENTRYPOINT [ "setup" ]

CMD ["mysqld"]

