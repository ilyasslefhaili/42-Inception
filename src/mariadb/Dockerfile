FROM debian

RUN apt update -y

RUN apt upgrade -y

RUN apt install mariadb-server  -y

COPY 50-server.cnf /etc/mysql/mariadb.conf.d

COPY setup_db.sh /setup_db.sh

RUN chmod 777 setup_db.sh

CMD bash setup_db.sh