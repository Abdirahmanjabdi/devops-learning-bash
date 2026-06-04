#!/bin/bash

dir="/home/jamaa/Arena"
tresh=1

usage=$(du -sm "$dir" | awk '{print $1}')

if [ "$usage" -gt "$tresh" ]; then
       echo "Warning: Disk usage for $dir is at $usage%!"
else 
 echo "Disk usage for $dir is at $usage%!. All is Good."
fi 
