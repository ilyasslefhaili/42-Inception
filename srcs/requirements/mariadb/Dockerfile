FROM debian:buster

RUN apt update -y && apt install mariadb-server  -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY tools/setup_db.sh setup_db.sh

RUN chmod +x setup_db.sh

ENTRYPOINT [ "bash", "setup_db.sh" ]

CMD ["mysqld"]

