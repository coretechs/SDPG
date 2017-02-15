#!/bin/bash
if [ $# -ne 3 ]; then echo "Usage: verify.sh <h1> <h2> <iterations>"; exit 1; fi
H=$(echo -n $1$2$3|openssl dgst -sha256|cut -f2 -d" ");
echo "h1+h2+iterations hash: $H";
for ((i == 1; i < $3; i++));
do H=$(echo -n $1$2$H|openssl dgst -sha256|cut -f2 -d" "); done;
echo "final iteration hash: $H";