#!/bin/bash


#This is looping statement like for and while



<<comment

#this is the looping statement


comment

for (( num=1; num<=5; num++ ));
do 
	mkdir "demo$num"
done


<<comment

$1 = Folder name
$2 = Starting range
$3 = Ending range

comment

for (( num=$2; num<=$3; num++ ))
do
    mkdir "$1$num"
done
