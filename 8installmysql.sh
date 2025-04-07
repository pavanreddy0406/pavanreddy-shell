#!/bin/bash/
#our prigram goal is install mysql
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR:please run the script with root access"
    exit 1
else
    echo "INFO:you are root access"
fi
#this our responsibitly for to check the installation
yum install mysql -y
if [ $? -ne o ]
then
    echo "installing my sql is error"
else 
    echo " installong my sql is sucess"
fi
yum install postfix -y
if [ $? -ne o ]
then
    echo "installing postfix is error"
else 
    echo " installong postfix is sucess"
fi