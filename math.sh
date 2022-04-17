#!/bin/bash

printf "ENTER YOUR EQUATION!\n"

read -p 'Enter the first number: ' num1
read -p 'Enter the second number: ' num2

if [ -z "$num1" ] || [ -z "$num2" ]
then 
	printf "Inputs cannot be blank please try again\n"
	exit 0
fi


if ! [[ "$num1" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]] || ! [[ "$num2" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]] 
then 
	printf "Inputs must be numbers!\n"
exit 0
fi

total=$(echo "${num1} * ${num2}" | bc)
read -p "Enter your answer: " guess
if [[ $guess == $total ]]
then
	printf "That is correct!"
fi

if ! [[ $guess == $total ]]
then
	printf "That is incorrect..."
fi