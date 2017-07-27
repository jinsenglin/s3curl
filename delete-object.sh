#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 BUCKET-NAME OBJECT-NAME"
    exit 1
fi

export MY_S3_HOST=192.168.128.3
export MY_S3_ENDPOINT=http://$MY_S3_HOST:7480
export MY_S3_ACCESS_ID=HHAIF9PL0EAXO6MLSDVW
export MY_S3_SECRET_KEY=5ZGw9STwOmouodXxqZD5d667LsbWPaIyogdB59O8

set -x
./s3curl.pl --id $MY_S3_ACCESS_ID --key $MY_S3_SECRET_KEY --delete -- $MY_S3_ENDPOINT/$1/$2
