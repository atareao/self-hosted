FROM alpine:3.15

ENV TZ=Europe/Madrid
LABEL maintainer="Lorenzo Carbonell <a.k.a. atareao> lorenzo.carbonell.cerezo@gmail.com"

ARG UID=${EB_UID:-1000}
ARG GID=${EB_GID:-1000}

ENV VIRTUAL_ENV=/opt/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV PYTHONIOENCODING=utf-8
ENV PYTHONUNBUFFERED=1

RUN echo "**** install Python ****" && \
    apk add --update --no-cache \
            apache2-utils==2.4.53-r0 \
            git==2.34.2-r0 \
            tini==0.19.0-r0 \
            tzdata==2022a-r0 \
            python3==3.9.7-r4 && \
    rm -rf /var/lib/apt/lists/* && \
    echo "**** create user ****" && \
    addgroup radicale && \
    adduser -h /app -G radicale -D radicale && \
    mkdir -p ${VIRTUAL_ENV} && \
    chown -R radicale:radicale ${VIRTUAL_ENV} && \
    mkdir -p /app/config /app/data && \
    chown -R radicale:radicale /app

COPY entrypoint.sh requirements.txt /
USER radicale
RUN echo "**** install Python dependencies **** " && \
    python3 -m venv ${VIRTUAL_ENV} && \
    ${VIRTUAL_ENV}/bin/pip install --upgrade pip && \
    ${VIRTUAL_ENV}/bin/pip install --no-cache-dir -r /requirements.txt

COPY --chown=radicale:radicale ./config /app/config/config

WORKDIR /app

ENTRYPOINT ["tini", "--"]
CMD ["/bin/sh", "/entrypoint.sh"]

