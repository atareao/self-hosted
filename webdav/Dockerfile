FROM alpine AS builder

RUN apk add --update \
            --no-cache \
            pcre \
            libxml2 \
            libxslt \
            gcc \
            make \
            libc-dev \
            pcre-dev \
            zlib-dev \
            libxml2-dev \
            libxslt-dev && \
    cd /tmp && \
    wget https://github.com/nginx/nginx/archive/master.zip -O nginx.zip && \
    unzip nginx.zip && \
    wget https://github.com/arut/nginx-dav-ext-module/archive/master.zip -O dav-ext-module.zip && \
    unzip dav-ext-module.zip && \
    cd nginx-master && \
    ./auto/configure --prefix=/opt/nginx --with-http_dav_module --add-module=/tmp/nginx-dav-ext-module-master && \
    make && \
    make install && \
    apk del gcc make libc-dev pcre-dev zlib-dev libxml2-dev libxslt-dev && \
    rm -rf /var/cache/apk

FROM alpine:latest

ARG UID=${UID:-1000}
ARG GID=${GID:-1000}

RUN apk add --update \
            --no-cache \
            pcre \
            libxml2 \
            libxslt \
            tini \
            shadow &&\
    rm -rf /var/cache/apk && \
    groupmod -g $GID www-data && \
    adduser -u $UID -S www-data -G www-data && \
    mkdir /share

COPY --from=builder /opt /opt

COPY webdav.conf /opt/nginx/conf/nginx.conf
COPY entrypoint.sh /

EXPOSE 8080
VOLUME /share

RUN chown -R www-data:www-data /share && \
    chown -R www-data:www-data /opt/nginx

USER www-data


ENTRYPOINT ["tini", "--"]
CMD ["/bin/sh", "/entrypoint.sh"]
