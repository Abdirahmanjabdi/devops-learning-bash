#!/bin/bash
#1. Creates a directory names 'Battlefield'
#2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
#3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
#4. List the contents of both Battlefield and Archive.

mkdir Battlefield
cd Battlefield
touch knight.txt sorcerer.txt rouge.txt
if [ -f knight.txt ]
then
	mkdir ../Archive
	mv knight.txt ../Archive
	ls .
	ls ../Archive
fi
