#!/bin/bash
#Create a script that searches for a specific word or phrase across all .log files in a directory and outputs the names of the files that contain the word or phrase.
 set -euo  
 if [[ -z "$1" ]]; then
	 echo "Usage: $0 <search_term>"
	 exit 1
 fi
