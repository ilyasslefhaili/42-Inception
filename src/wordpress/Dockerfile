FROM debian:11.6
RUN apt update -y
RUN apt upgrade -y
RUN apt install php-fpm php-mysql -y
RUN apt install wget -y
RUN wget http://wordpress.org/latest.tar.gz
RUN tar xfz latest.tar.gz && rm -f latest.tar.gz
COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf
RUN mkdir /var/run/php
COPY wp-config.php /wordpress/wp-config.php
CMD php-fpm7.4 -F -R