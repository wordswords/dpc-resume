#!/bin/bash
set -e
docker run -v ${PWD}:/resume there4/markdown-resume md2resume --template=blockish html CV.md .
docker run -v ${PWD}:/resume there4/markdown-resume md2resume --ansi pdf CV.md .
sudo cp CV.html /mnt/c/Users/conta/Desktop
sudo cp CV.pdf /mnt/c/Users/conta/Desktop

