#!/bin/bash

       ID=$(id -u)

       TIMESTAMP=$(date +%F-%H-%M-%S)
       LOGFILE="/temp/$0-$TIMESTAMP.log"
       R="\e[31m"
       G="\e[32m"
       N="\e[0m"

       echo "script name: $0"

  validate(){
        if  [ $? -ne 0 ]
            then
               echo -e " $R Error: $2 .. failed $N"
               exit 1
            else
               echo -e "$2 Instalaing is $G sucess $N"
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
    