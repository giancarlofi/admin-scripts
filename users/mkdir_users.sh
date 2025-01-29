#!/bin/bash
DIR_PATH=/var/www/html/

if [ $# -lt 1 ]
  then
    echo "Usage : $0 userfile"
    exit
fi

while IFS=, read username password; do
	mkdir ${DIR_PATH}$username
done <"$@"


