# dpc-resume

## What is it?

This is a script to generate my CV in HTML and PDF formats from a markdown file I maintain.

It uses docker containers from Puppeteer (to convert HTML to PDF) and https://github.com/there4/markdown-resume (to convert Markdown to HTML).

## Requirements

Ubuntu install with Python 3, Docker, Docker compose, and the latest node.

## Usage

1. Edit `CV.md` to your liking
2. Run the `build-md2resume.sh` script to build the HTML CV from `CV.md`
3. Run the `build-puppeteer.sh` script to build the PDF CV from `CV.md`

# My Current Resume / CV

* In Markdown - [https://github.com/wordswords/dpc-resume/blob/master/CV.md](https://github.com/wordswords/dpc-resume/blob/master/CV.md)
* In HTML - [https://wordswords.github.io/dpc-resume/CV.html](https://wordswords.github.io/dpc-resume/CV.html)
* In PDF [https://github.com/wordswords/dpc-resume/blob/master/cv.pdf](https://github.com/wordswords/dpc-resume/blob/master/cv.pdf)
