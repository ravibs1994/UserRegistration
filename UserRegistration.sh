#!/bin/bash -x
#First Name
read -p "Enter First Name " name
pat='^[A-Z]{1}[a-z]{2,}$'
if [[ $pat =~ $name ]]
    then
	echo "Valid"
    else
	echo "Invalid"
fi
#Last Name
read -p "Enter Last Name " lName
if [[ $pat =~ $lName ]]
    then
        echo "Valid"
    else
        echo "Invalid"
fi
#Email Validation
read -p "Enter Email " email
patEmail='^[a-zA-Z0-9]+([.+-_][a-zA-Z0-9]+)*[@][a-zA-Z0-9]+[.][a-z]{2,3}([.][a-z]{2,3})*([,])?$'
if [[ $patEmail =~ $email ]]
    then
        echo "Valid"
    else
        echo "Invalid"
fi
#Mobile Number Validation
read -p "Enter Mobile number " mobNumber
patMobNumber='^((\+){1}91){1}[ -]?[0-9]{10}$'
if [[ $patMobNumber =~ $mobNumber ]]
    then
        echo "Valid"
    else
        echo "Invalid"
fi
#Password Validation Rule 1 Rule 2 Rule 3 Rule 4
read -p "Enter Password " pwd
pwdPat='^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*[@$#%*+]).{8,}$'
if [[ $pwdPat =~ $pwd ]]
    then
        echo "Valid"
    else
        echo "Invalid"
fi

#Validate all Email Samples
i=1;
while [ i -le 8 ]
   do
     read -p "Enter Email Samples one by one $i " emailSample
     patEmail='^[a-zA-Z0-9]+([.+-_][a-zA-Z0-9]+)*[@][a-zA-Z0-9]+[.][a-z]{2,3}([.][a-z]{2,3})*([,])?$'
     if [[ $patEmail =~ $emailSample ]]
       then
         echo "Valid"
     else
         echo "Invalid"
    fi
     ((i++))
   done
