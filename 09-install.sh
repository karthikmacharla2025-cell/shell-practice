#!/bin/bash

USERID=$(id -u)

#check root access or not 
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "installing $1 is ---failed"
        exit 1
    else
        echo "installing $1 is ---Success"
    fi
}

# echo "I am continuing"
dnf list installed mysql
if [ $? -eq 0]; then
    echo "MYSQL is already installed...skipping"
else
    echo "Installing MYSQL"
    dnf install mysql -y
    VALIDATE MYSQL $?
fi

dnf list installed nginx
if [ $? -eq 0]; then
    echo "MYSQL is already installed...skipping"
else
    echo "Installing nginx"
    dnf install nginx -y
    VALIDATE MYSQL $?
fi
