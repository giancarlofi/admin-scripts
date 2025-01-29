#!/bin/bash

if [ $# -lt 1 ]
  then
    echo "Usage : $0 userfile"
    exit
fi

if [ $(id -u) -eq 0 ]; then


while IFS=, read username password; do

        if [ egrep "$username" /etc/passwd -ne >/dev/null ];  then
                echo "$username NOT exists!"
        else
                

                if  userdel -r "$username" >/dev/null; then
                        echo "User '$username' has been deleted to system!"
                else
                        echo "Failed to delete  user '$username'!"
                fi
        fi
done <"$@"

else
      echo "Only root may add a user to the system"
      exit
fi

