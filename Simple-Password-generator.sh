#!/bin/bash

# Simple Password generator 


echo " Welcome to Simple Password Generator"

sleep 3

echo " Please Enter the Password Length"

read PASS_LEN

for p in $(seq 1 5)
do
        openssl rand -base64 48 | cut -c1-$PASS_LEN
done
