#!/bin/bash

#passwd user_name -l disabilita
#passwd user_name -u sabilita

if [ $# -lt 1 ]
  then
    echo "Usage : $0 userfile"
    exit
fi

if [ $(id -u) -eq 0 ]; then


while IFS=, read username password; do
        if egrep "^$username" /etc/passwd >/dev/null;  then
		echo "DISABILITO:" $username
		passwd $username -l
		#passwd $username -u
        else
                echo "$username NOT exists!"
        fi
done <"$@"

else
      echo "Only root may add a user to the system"
      exit
fi

