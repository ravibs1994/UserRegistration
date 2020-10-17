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


