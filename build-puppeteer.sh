#!/bin/bash
set -e
python3 -m http.server &
uUID=$(id -u)
uGID=$(id -g)
uUID=${uUID} uGID=${uGID} docker compose run --rm -i puppeteer-pdf-resume
pkill -f 'python3 -m http.server'
cp ./puppeteer/cv.pdf .

