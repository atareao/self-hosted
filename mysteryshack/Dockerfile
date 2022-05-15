FROM bnjbvr/mysteryshack-docker as builder

FROM ubuntu:18.04

RUN apt-get update --quiet && \
    apt-get dist-upgrade --yes && \
    apt-get install --quiet --yes --no-install-recommends \
    libssl1.0.0 \
    gosu

RUN mkdir -p /rs/data
COPY create-user.sh config.ini entrypoint.sh /rs/
RUN chmod +x /rs/create-user.sh
COPY --from=builder /rs/mysteryshack/target/release/mysteryshack /rs/

WORKDIR /rs

CMD ["/bin/sh", "/rs/entrypoint.sh"]
