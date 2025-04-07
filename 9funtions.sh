#!/bin/bash/
#our program goal is installing my sql and postfix
USERID=$(id -u)
VALIDATE(){
if [$1 -ne 0 ]
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
yum install mysql -y
VALIDATE $? "installing mysql"

yum install postfix -y
VALIDATE $? "installing postfix"