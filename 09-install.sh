#!/bin/bash

USERID=$(id -u)

#check root access or not 
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

# echo "I am continuing"

echo "Installing MYSQL"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "installing MYSQL is ---failed"
    exit 1
else
    echo "installing MYSQL is ---Success"
fi    
