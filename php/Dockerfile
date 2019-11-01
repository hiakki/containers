FROM php:7.4.0RC5-fpm-alpine
ADD VERSION .
MAINTAINER Akshay Gupta
LABEL maintainer="hy.akshay@gmail.com"

RUN docker-php-ext-install mysqli

COPY ./start.sh /start.sh

RUN chmod +x /start.sh

CMD ['sh','-c','/start.sh']
