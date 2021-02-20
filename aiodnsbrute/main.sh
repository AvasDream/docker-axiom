#!/bin/bash

DOMAIN=$1
aiodnsbrute -r /root/dns_resolver.txt -w /root/sublist.txt -t 32 -o json -f "aiodns-$DOMAIN.json" $DOMAIN &> /dev/null
python /code/aioparse.py "aiodns-$DOMAIN.json" results.txt &> /dev/null
cat results.txt