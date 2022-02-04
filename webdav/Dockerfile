FROM nginx:stable-alpine

ARG UID=${UID:-1000}
ARG GID=${GID:-1000}

RUN apk add --update \
            --no-cache \
            tini \
            shadow \
            apache2-utils && \
    rm -rf /var/cache/apk && \
    groupmod -g $GID www-data && \
    adduser -u $UID -S www-data -G www-data && \
    mkdir /share

COPY webdav.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /

EXPOSE 8080
VOLUME /share

RUN chown -R www-data:www-data /share && \
    chown -R www-data:www-data /var/cache/nginx && \
    chown -R www-data:www-data /var/log/nginx && \
    chown -R www-data:www-data /etc/nginx && \
    touch /var/run/nginx.pid && \
    chown -R www-data:www-data /var/run/nginx.pid

USER www-data


ENTRYPOINT ["tini", "--"]
CMD ["/bin/sh", "/entrypoint.sh"]
