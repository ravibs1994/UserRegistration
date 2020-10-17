#!/bin/bash -x
read -p "Enter First Name " name
pat='^[A-Z]{1}[a-z]{2,}$'
if [[ $pat =~ $name ]]
    then
	echo "Valid"
    else
	echo "Invalid"
fi

