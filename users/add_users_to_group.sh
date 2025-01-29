#!/bin/bash

GROUP=www-data

if [ $# -lt 1 ]
  then
    echo "Usage : $0 userfile"
    exit
fi

if [ $(id -u) -eq 0 ]; then


while IFS=, read username password; do
        if egrep "^$username" /etc/passwd >/dev/null;  then
		echo "AGGIUNGO:" $username
		usermod -a -G ${GROUP} $username
        else
                echo "$username NOT exists!"
        fi
done <"$@"

else
      echo "Only root may add a user to the system"
      exit
fi

