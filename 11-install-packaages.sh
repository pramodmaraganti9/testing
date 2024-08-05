#!/bin/bash


ID=$(id -u)
if [ $ID -ne 0 ]
            then 
                echo "error :: please run this script with root access"
            else
                echo "you are root  user"
        fi

echo "all the arguments are passw or not"