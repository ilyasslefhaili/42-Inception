FROM debian:buster
RUN apt update -y && apt-get install php-fpm php-mysql -y && apt install curl -y
RUN mkdir /var/run/php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN mkdir wordpress && cd wordpress && wp core download --allow-root
COPY conf/wp-config.php /wordpress/wp-config.php
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY tools/setup_wp.sh setup_wp.sh
RUN chmod +x setup_wp.sh
ENTRYPOINT [ "bash" , "setup_wp.sh"]
CMD ["php-fpm7.3", "-F", "-R"] 
