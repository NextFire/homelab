#!/bin/sh -xe
cd "$(dirname "$0")"
git pull
docker compose up -d --remove-orphans
docker system prune --all --volumes -f
