#!/bin/bash
set -e
uUID=$(id -u)
uGID=$(id -g)
sudo uUID=${uUID} uGID=${uGID} docker-compose run --rm markdown-html-resume

