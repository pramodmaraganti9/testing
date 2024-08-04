#!/bin/bash

       ID=$(id -u)

       TIMESTAMP=$(date +%F-%H-%M-%S)
       LOGFILE="/temp/$0-$TIMESTAMP.log"

       echo "script name: $0"

  validate(){
        if  [ $? -ne 0 ]
            then
               echo "Error: $2 erroe"
               exit 1
            else
               echo " $2 Instalaing is sucess "
           fi

  }
        if [ $ID -ne 0 ]
            then 
                echo "error :: please run this script with root access"
            else
                echo "you are root  user"
        fi    

    yum install mysql -y &>>LOGFILE
    validate $? " installing My sql "

    yum install git -y &>>LOGFILE
    validate $?  "installing GIT "
    