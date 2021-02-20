#!/bin/bash

amass enum --passive -d $1 -o /data/$1-amass.txt &> /dev/null
cat /data/$1-amass.txt