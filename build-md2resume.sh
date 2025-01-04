#!/bin/bash

rm -rf ./markdown-resume-2024
git clone git@github.com:wordswords/markdown-resume-2024.git
cd markdown-resume-2024
composer install
./bin/md2resume --template=swissen --ansi html ../CV.md ..

