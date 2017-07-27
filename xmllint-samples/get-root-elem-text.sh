#!/bin/bash

echo "cat //root/elem/text()" | xmllint --shell test.xml | sed '1d;$d' | sed '/-------/d'
