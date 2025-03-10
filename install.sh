#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo " You must have root access to install"
   exit 1
fi
dnf install mysql -y

