#!/bin/bash

set -e
set -x

#docker run -t -p 8087:8080 quay.io/ukhomeofficedigital/html-pdf-converter:v2.4.3 &

CV="$(<./CV.html)"
CV=`echo "${CV}" | jq -Rsa .`
echo "{ \"template\" : ${CV} }" | jq empty

curl -H "Content-Type:application/json" \
     -d "{ \"template\" : ${CV} }" -i localhost:8087/convert --output ./cv.pdf

