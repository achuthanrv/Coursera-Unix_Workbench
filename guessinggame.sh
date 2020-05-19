#!/bin/bash

function numeric_response {
    while [[ ! $response =~ ^[0-9]+$ ]]
    do 
		read -p "Please enter only a numeric guess: " response
    done    
}

function guess_func {
	echo "How many files are in the current directory?"
	read response
	numeric_response
}

correctanswer=$( ls -1 | wc -l )

guess_func

while [[ "$response" -ne $correctanswer ]]
do
	if [[ "$response" -gt $correctanswer ]]
	then
		echo -e "You guess is too high! Please try again.\n"
		guess_func
	else
		echo -e "You guess is too low! Please try again.\n"
		guess_func
	fi
done

echo "Congratulations! That is the right answer!"