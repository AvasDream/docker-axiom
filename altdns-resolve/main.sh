#!/bin/bash
# "/altdns/words.txt"
DOMAIN=$1
echo $DOMAIN > /altdns/subdomains.txt
python3 /altdns/altdns/__main__.py -i /altdns/subdomains.txt -o /alternated.txt -w /altdns/words.txt &>/dev/null
cat "/alternated.txt" | sed "s/.$DOMAIN//" > "/alternated_subdomains.txt"
aiodnsbrute -r /root/dns_resolver.txt -w /alternated_subdomains.txt --no-verify -t 64 $DOMAIN &> /aiodns.txt
cat aiodns.txt
cat aiodns.txt | grep "\[+\]" | cut -d " " -f2