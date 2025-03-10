#! /bin/bash

USERID=$(id -u)

VALIDATE(){
 if [ $1 -ne 0 ]
    then 
        echo "$2 Failure"
        exit 1
    else
    echo "$2...installation success"
    fi 
}

if [ $USERID -ne 0 ]
then
   echo " You must have root access to install"
   exit 1
fi

dnf list installed mysql
if  [ $? -ne 0 ]
then 
   echo "Mysql not installed...installing Mysql "
    dnf install mysql -y
    VALIDATE $? "installing mysql"
else 
   echo "My sql is already installed"
fi

dnf list installed git 

if [ $? -ne 0 ]
then 
        echo "Installing Git ..."
        dnf install git -y 
        VALIDATE $? "Installing Git"
else
   echo "Git is already installed"
fi
