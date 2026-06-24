#!/bin/bash

<<comment

#This is the function creation
#also making the program modular by putting$ 

comment

#This is functioon creation or defination
function love() {
read -p "$1 your name: " name 

if [[ $name == "Apurva" ]];
then 
	echo "$1, You are right"
else
	echo "$1, You are Wrong"
fi
}
#This is the function call
love "heyy"

