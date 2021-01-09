#!/bin/bash

docker run -it --rm subfinder $1 > subdomains.txt
for i in $(cat subdomains.txt);
do 
    echo "[+] $i" 
    docker run -it --rm altdns-resolve $i
done