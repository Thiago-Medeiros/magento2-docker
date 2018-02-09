FROM nginx:alpine

ADD ./nginx.conf /etc/nginx/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && adduser -D -H -u 1000 -s /bin/bash www-data

ARG PHP_UPSTREAM_CONTAINER=php-fpm
ARG PHP_UPSTREAM_PORT=9000

ENV PHP_UPSTREAM_PORT ${PHP_UPSTREAM_PORT}
ENV PHP_UPSTREAM_CONTAINER ${PHP_UPSTREAM_CONTAINER}

RUN echo "upstream php-upstream { server ${PHP_UPSTREAM_CONTAINER}:${PHP_UPSTREAM_PORT}; }" > /etc/nginx/conf.d/upstream.conf

ADD ./conf/default.conf /etc/nginx/conf.d/

CMD ["nginx"]

EXPOSE 80