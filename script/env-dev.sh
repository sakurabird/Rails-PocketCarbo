#!/bin/sh

# source script/env-dev.sh と実行する
# docker-composeのデフォルトComposeファイルを開発用に設定
export COMPOSE_FILE=docker-compose.development.yml
env | grep COMPOSE_FILE
