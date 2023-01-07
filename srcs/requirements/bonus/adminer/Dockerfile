FROM debian:buster
RUN apt update && apt install  -y nginx && apt install -y adminer && apt install -y php php-fpm
RUN mkdir /var/run/php
COPY ./tools/setup.sh setup.sh
RUN chmod +x setup.sh
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["bash", "setup.sh"]
CMD ["php-fpm7.3", "-F", "-R"] 