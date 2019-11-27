
FROM ruby:2.6.2-alpine3.9

LABEL maintainer="Yukari Sakurai<neko3genki@gmail.com>" Name=pocket_carbo Version=1.0.0

ENV LANG C.UTF-8

ENV APP_PATH /usr/src/app

WORKDIR $APP_PATH

COPY Gemfile $APP_PATH
COPY Gemfile.lock $APP_PATH

ENV RUNTIME_PACKAGES="libxslt-dev libstdc++ bash tzdata postgresql-client nodejs ca-certificates"\
  DEV_PACKAGES="build-base libxml2-dev postgresql-dev gmp-dev"

RUN set -x && \
  apk add --update --no-cache $RUNTIME_PACKAGES &&\
  apk add --update\
  --virtual build-dependencies\
  --no-cache\
  $DEV_PACKAGES &&\
  gem install bundler --no-document &&\
  bundle config build.nokogiri --use-system-libraries &&\
  bundle install &&\
  apk del build-dependencies && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  rm -rf /var/cache/apk/*

COPY . APP_PATH

EXPOSE 3000
