FROM alpine:3.15 as alpine

ENV TZ=Europe/Madrid
ENV VERSION=1.21.2

RUN apk add --update --no-cache \
            tini~=0.19 \
            tzdata~=2022a-r0 && \
    rm -rf /var/cache/apk && \
    mkdir /app /etc/ntfy /app/data /app/data/attachments && \
    addgroup -g 1000 -S dockerus && \
    adduser -u 1000 -S dockerus -G dockerus

ADD https://github.com/binwiederhier/ntfy/releases/download/v${VERSION}/ntfy_${VERSION}_linux_x86_64.tar.gz /tmp/
RUN tar zxvf /tmp/ntfy_${VERSION}_linux_x86_64.tar.gz -C /tmp && \
    cp -a /tmp/ntfy_${VERSION}_linux_x86_64/ntfy /app/ntfy && \
    rm -rf /tmp/ntfy_${VERSION}_linux_x86_64* && \
    chown -R dockerus:dockerus /app /etc/ntfy /app/data /app/data/attachments

EXPOSE 80

WORKDIR /app

ENTRYPOINT ["tini", "--"]
CMD ["/app/ntfy", "serve"]
