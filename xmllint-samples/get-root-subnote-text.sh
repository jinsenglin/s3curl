#!/bin/bash

echo "cat //root/subnote/text()" | xmllint --shell test.xml | sed '1d;$d'
