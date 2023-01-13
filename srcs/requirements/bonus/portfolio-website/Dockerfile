FROM debian:buster
RUN apt update -y && apt install  -y nginx
COPY tools/index.html /var/www/html/
COPY tools/style.css /var/www/html/
CMD ["nginx", "-g", "daemon off;"]