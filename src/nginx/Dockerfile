FROM debian:11.6
RUN apt update
RUN apt upgrade
RUN apt install  -y nginx=1.18.0-6.1+deb11u3  -V
RUN apt install -y openssl
RUN mkdir /etc/nginx/certs
RUN openssl req -x509 \
            -sha256 -days 356 \
            -nodes \
            -newkey rsa:2048 \
            -subj "/CN=demo.mlopshub.com/C=US/L=San Fransisco" \
            -keyout key.pem -out cert.pem 
RUN mv key.pem cert.pem /etc/nginx/certs
RUN mkdir /wordpress
COPY nginx.config /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]