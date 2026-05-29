#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/home/ec2-user/shell-logs
LOGS_FILE="$LOGS_DIR/$0.log"

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
dnf list installed mysql &>> $LOGS_FILE
if [ $? -eq 0]; then
    echo "MYSQL is already installed...skipping"
else
    echo "Installing MYSQL"
    dnf install mysql -y &>> $LOGS_FILE
    VALIDATE MYSQL $?
fi

dnf list installed nginx &>> $LOGS_FILE
if [ $? -eq 0]; then
    echo "MYSQL is already installed...skipping"
else
    echo "Installing nginx" &>> $LOGS_FILE
    dnf install nginx -y
    VALIDATE MYSQL $?
fi
