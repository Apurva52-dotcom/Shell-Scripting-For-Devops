#!/bin/bash


<<comment
#This is my first script

comment

name="Apurva"

echo "My name is $name"



echo "Enter the name: "

read username

echo "Your name is: $username "



<<comment
#if you want to add new user 
comment

read -p "Enter the user" username

echo "The username is $username"

read -p "You enteres $username"

sudo useradd -m $username

echo "New user is added"
