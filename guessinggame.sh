#!/usr/bin/env bash
#File: guessinggame.sh

function handle_guess {
	if [[ $user_guess -gt $num_files ]]
	then
		echo "Too high!"
	else
		echo "Too low!"
	fi
    echo "Try again! How many files are in the current directory?"
}

echo "How many files are in the current directory?"

read user_guess

num_files=$(ls | wc -l)

while [[ $user_guess -ne $num_files ]]
do
	handle_guess
    read user_guess
done

echo "Congratulations! $user_guess is right!"
