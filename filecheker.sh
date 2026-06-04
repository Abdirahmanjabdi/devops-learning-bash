#!/bin/bash
##Write a script that accepts a filename as an argument and prints the number of lines in that file. If no filename is provided, display a message saying 'No file provided'.
if [ -z "$1" ]; then
  echo "No file provided"
else
  if [ -f "$1" ]; then
    line_count=$(wc -l < "$1")
    echo "The number of lines in the file '$1' is: $line_count"
  else
    echo "File '$1' does not exist."
  fi
fi
