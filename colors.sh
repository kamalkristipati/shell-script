#! /bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"

USERID=$(id -u)

VALIDATE(){
 if [ $1 -ne 0 ]
    then 
        echo -e "$2 $R"
        exit 1
    else
    echo -e "$2...$G installation success"
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
   echo -e "$Y My sql is already installed"
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
