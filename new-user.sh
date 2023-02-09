#!/bin/bash

# Creating bash scripting for mutiple users

userfile=userlist.txt
username=$(cat userlist.txt | tr 'A-Z' 'a-z')
password=$username@007
for user in $username
do
useradd -m $user
   echo $password | passwd --stdin $user
   grep "^$username" /etc/passwd >/dev/null
  if [ $? = username ]; then
   echo "$user already exist!"
   exit 1
  else
   echo "Users have been succesfully added to the system"
  fi
done

						   

