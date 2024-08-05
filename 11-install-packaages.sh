#!/bin/bash


ID=$(id -u)
 R="\e[31m"
 G="\e[32m"
 N="\e[0m"
if [ $ID -ne 0 ]
            then 
                echo -e " $R error :: please run this script with root access $N"
            else
                echo "you are root  user"
        fi

echo "all the arguments are passw or not"