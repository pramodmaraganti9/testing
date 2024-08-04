#!/bin/bash

    ID=$(ID -u)
    if [$ID -ne 0]
        then 
        echo "error :: please run this script with root access"
        else
        echo "you are root pro user"
    fi    
    yum install mysql -y
    if  [$? -ne 0]
    then
    echo "Error: wile installing we got the erroe"
    exit 1
    else
    echo "no error wile installing "
    fi
