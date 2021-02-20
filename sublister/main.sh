#!/bin/bash

DOMAIN=$1
/usr/bin/python /sublister/sublist3r.py -n -t 32 -d $DOMAIN -o results.txt &>/dev/null
cat results.txt