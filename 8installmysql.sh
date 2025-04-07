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

yum install mysql -y