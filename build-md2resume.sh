#!/bin/bash
#asdfasdfdset -e
uUID=$(id -u)
uGID=$(id -g)
uUID=${uUID} uGID=${uGID} docker compose run --rm markdown-html-resume

