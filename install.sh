#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo " You must have root access to install"
   exit 1
fi

dnf list installed mysql
if [$? -ne 0 ]
then 
   echo "Mysql not installed...installing Mysql "
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "installation Failre"
        exit 1
    else
    echo "installing mysql ...installation success"
    fi 
else 
   echo "My sql is already installed"




#if [ $? -ne 0 ]
#then
#    echo "Failure in stallation"
#    exit 1
#else 
#    echo "installation success"
#fi 

dnf list installed mysql 

if [ $? -ne 0 ]
then 
    echo "Installing Git ..."
    dnf install git -y 
    if [ $? -ne 0 ]
    then 
        echo "installation failure"
        exit 1
    else 
        echo "installation success"
    fi
else
   echo "Git is already installed"
fi



#nf install git -y 

#f [ $? -ne 0 ]
#hen
#   echo "installation failed"
#   exit 1
#lse
#   echo "installation success"
#i 