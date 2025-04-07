#!/bin/bash/
#our program goal is installing my sql and postfix
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\[32m"
N="\[0m"

USERID=$(id -u)
VALIDATE(){

if [ $1 -ne 0 ]
then
    echo -e "$2 .... $R failure $N"
    exit 1
else
    echo -e "$2.... $G is success $N"
fi
}
if [ $USERID -ne 0 ]
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