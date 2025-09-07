#!/bin/bash

# echo "Entr your name please"

# read name 

# echo "Your name is $name"

# # from prompt we use -p

# read -p "Enter your age: " age

# echo " Hello $name, Your age is $age"

## If we want to read without variable we use $REPLY

# echo "Enter your name "
# read
# echo "Your name is " $REPLY

## Hide user input on terminal we use -s

read -p "Username: " username
read -sp "Password: " password
echo -e "\n"
echo "Username: $username  Password: $password"