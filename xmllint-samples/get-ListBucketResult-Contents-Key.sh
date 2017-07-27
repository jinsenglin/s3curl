#!/bin/bash

echo "cat //ListBucketResult/Contents/Key/text()" | xmllint --shell s3-bucket.xml | sed '1d;$d' | sed '/-------/d'
