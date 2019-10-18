#!/bin/bash

f1=removed-files-images-stripped-f.txt
f2=backup-images.txt
while read p; do
	cat $f2 | grep "$p" > /dev/null
	if [ $? == 1 ]; then
		echo "$p niet gevonden"
	fi	 
done < $f1
