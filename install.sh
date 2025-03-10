#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo " You must have root access to install"
   exit 1
fi
dnf install mysqll -y

if [ $? -ne 0 ]
then
    echo "Failure in stallation"
    exit 1
else 
    echo "installation success"
fi 

dnf install git -y 

if [ $? -ne 0 ]
then
    echo "installation failed"
    exit 1
else
    echo "installation success
fi 