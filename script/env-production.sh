#!/bin/sh

# source script/env-production.sh と実行する
# docker-composeのデフォルトComposeファイルを本番用に設定
export COMPOSE_FILE=docker-compose.production.yml
env | grep COMPOSE_FILE
