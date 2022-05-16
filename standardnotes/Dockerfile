FROM ruby:2.7.4-alpine3.14

RUN apk add --update --no-cache \
    alpine-sdk \
    nodejs \
    python3 \
    git \
    yarn \
    tzdata

WORKDIR /app/
RUN git clone https://github.com/standardnotes/web.git /tmp/ && \
    cp /tmp/package.json \
       /tmp/yarn.lock \
       /tmp/Gemfile \
       /tmp/Gemfile.lock /app/ && \
    yarn install --pure-lockfile && \
    gem install bundler && bundle install && \
    cp -r /tmp/. /app/ && \
    yarn bundle && \
    bundle exec rails assets:precompile

EXPOSE 3000

ENTRYPOINT [ "./docker/entrypoint.sh" ]

CMD [ "start" ]

