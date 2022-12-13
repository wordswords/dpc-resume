#!/bin/bash
set -e
sudo docker run -v ${PWD}:/resume there4/markdown-resume md2resume --template=swissen --ansi html CV.md .
python3 -m http.server &
cp -r ./puppeteer /tmp/dpc-resume
sudo chmod -R 777 /tmp/dpc-resume
cd /tmp/dpc-resume
sudo docker run -i --init --network="host" --cap-add=SYS_ADMIN --rm -v $(pwd):/tmp:rw ghcr.io/puppeteer/puppeteer:latest node /tmp/index.js
cd -
cp /tmp/dpc-resume/cv.pdf .
rm -rf /tmp/dpc-resume


