ARG BUILD_FROM
FROM $BUILD_FROM
ENV LANG C.UTF-8
COPY run.sh /
WORKDIR /data
RUN chmod a+x /run.sh
RUN apk add nginx curl --no-cache
RUN     mkdir -p /var/www /run/nginx/
COPY    www.conf /etc/php7/php-fpm.d/zz-docker.conf
COPY    ingress.conf /etc/nginx/http.d/ingress.conf
CMD [ "/run.sh" ]
