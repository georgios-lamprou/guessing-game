#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	echo "How many files are in the current directory? Make a guess!"

	read guess

	number_of_files=$(find . -maxdepth 1 -type f | wc -l)	
	
	integer_condition='^[0-9]+$'
	
	while ! [[ $guess =~ $integer_condition ]]
	do
		echo "Please enter an integer:"
		read guess
	done
		
 	while [[ $guess -ne $number_of_files ]]	
	do
		if [[ $guess -lt $number_of_files ]]
		then
			echo "The number you guessed is smaller than the actual one. Please, try again:"
			read guess
		elif [[ $guess -gt $number_of_files ]]
		then
			echo "The number you guessed is larger than the actual one. Please, try again:"
			read guess
		fi
	done
	
	echo "Congratualtions! Your guess is correct!"
	

	
}

guessinggame


