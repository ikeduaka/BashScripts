#!/bin/bash
# Creating bash scripting for new username

if [ $(id -u) = 0 ]; then
   read -p "Enter username : " username
   read -s -p "Enter password : " password

# Verify username and adding username/password

   grep "^$username" /etc/passwd >/dev/null
  if [ $? = 0 ]; then
     echo "$username already exist!"
    exit 1
  else 
     useradd -m -p "pass" "$username"
    [ $? = 0 ] && echo "User has beeen successfully added to the system"
    fi
fi 
