#!/bin/bash
# "/altdns/words.txt"
if test "$#" -ne 2; then
    echo "Path to subdomain file and domain required as arguments"
fi
DOMAIN_FILE=$1
DOMAIN=$2
python3 /altdns/altdns/__main__.py -i $DOMAIN_FILE -o /alternated.txt -w /altdns/words.txt &>/dev/null
cat "/alternated.txt" | sed "s/.$DOMAIN//" > "/alternated_subdomains.txt"
aiodnsbrute -r /root/dns_resolver.txt -w /alternated_subdomains.txt --no-verify -t 64 $DOMAIN -o json -f "aiodns-$DOMAIN.json" &> /dev/null
python /code/aioparse.py "aiodns-$DOMAIN.json" results.txt &> /dev/null
cat results.txt
#cat aiodns.txt | grep "\[+\]" | cut -d " " -f2
echo "$(wc -l /alternated.txt)"