FROM debian

RUN apt update

RUN apt upgrade

RUN yes | apt install  nginx

RUN yes | apt install openssl

RUN mkdir /etc/nginx/certs

RUN openssl req -x509 \
            -sha256 -days 356 \
            -nodes \
            -newkey rsa:2048 \
            -subj "/CN=demo.mlopshub.com/C=US/L=San Fransisco" \
            -keyout key.pem -out cert.pem 

RUN mv key.pem cert.pem /etc/nginx/certs

COPY nginx.config /etc/nginx/nginx.conf

RUN service nginx restart

RUN nginx