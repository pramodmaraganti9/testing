#!/bin/bash

    ID=$(ID -u)
    if [$ID -ne 0]
        then 
        echo "error :: please run this script with root access"
        else
        echo "you are root user"
    fi    
    yum install mysql -y
    