#!/bin/bash


num=0

while [[ $num -le 10 ]]
do 
	echo $num
	num=$((num+2))
done




<<commnets
#odd operation


commnets


num=1
while [[ $num -le 10 ]]
do 
	echo "$num"
	num=$((num+2))
done
