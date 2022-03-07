FROM alpine:3.15 AS builder

RUN apk add --update \
            --no-cache \
            pcre~=8.45 \
            libxml2~=2.9 \
            libxslt~=1.1 \
            gcc~=10.3 \
            make~=4.3 \
            libc-dev~=0.7 \
            pcre-dev~=8.45 \
            zlib-dev~=1.2 \
            libxml2-dev~=2.9 \
            libxslt-dev~=1.1 && \
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

FROM alpine:3.15

ARG UID=${UID:-1000}
ARG GID=${GID:-1000}

RUN apk add --update \
            --no-cache \
            pcre~=8.45 \
            libxml2~=2.9 \
            libxslt~=1.1 \
            tini~=0.19 \
            shadow~=4.8 &&\
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
