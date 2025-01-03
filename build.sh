#!/bin/bash

set -x
set -e

./build-md2resume.sh
./build-html2pdf.sh

