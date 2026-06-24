#!/bin/bash


<<comment

#This is the Conditional statemnet

comment


read -p "Enter your name :" name 

if [[ $name == "Apurva" ]];
then
	echo "yes we got the name "
else 
	echo "No that was not the name"
fi


<<momment
#Multiple line printing
momment

read -p "Enter the loveoone" loveone
read -p "Enter your love %" love

if [[ $loveone == "Swapnil" ]];
then 
	echo"You Are Right"

elif [[ $love -ge 100 ]];
then
	echo " he is loyal to you "

else
	echo "You Are Wrong"
fi

