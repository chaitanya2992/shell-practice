#!/bin/bash

USERID=$(id -u)

if[ $USERID -ne 0 ]; then
    echo "please use root access to run these scripts"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 .. Failed"
        exit 1
    else
        echo "$2 .. success" 
    fi
}

dnf install nginx -y
VALIDATE $? "Installing Nginx"

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install nodejs -y
VALIDATE $? "Installing nodejs"