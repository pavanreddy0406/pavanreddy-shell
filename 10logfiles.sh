#!/bin/bash/
#our program goal is installing my sql and postfix
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/SCRIPT_NAME-$DATE.log
USERID=$(id -u)
VALIDATE(){

if [ $1 -ne 0 ]
then
    echo "$2 .... failure"
    exit 1
else
    echo "$2.... is success"
fi
}
if [$USERID -ne 0 ]
then
    echo "ERROR:run the sceipt in root acess"
    exit 1
else
    echo "INFO: success"
fi
yum install mysql -y &>>$LOGFILE
VALIDATE $? "installing mysql"

yum install postfix -y &>>$LOGFILE
VALIDATE $? "installing postfix"