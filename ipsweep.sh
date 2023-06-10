#!/bin/bash

if [ "$1" == "" ]
then
echo "You forgot the IP address my avo-friend!"
echo "Correct Syntax: ./ipsweep.sh 192.168.1"

else
for ip in `seq 1 254`; do

echo "The IPs in the same network than "$1" are:"
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & #-c is for the quantity of pings you want to do

done
fi