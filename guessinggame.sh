#!/usr/bin/env bash

# Function to count files in the current directory
function file_count {
    echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Store the correct number of files
correct=$(file_count)

guess=-1

# Loop until the guess is correct
while [[ $guess -ne $correct ]]
do
    echo -n "Enter your guess: "
    read guess

    if [[ $guess -lt $correct ]]
    then
        echo "Your guess is too low. Try again!"
    elif [[ $guess -gt $correct ]]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "🎉 Congratulations! You guessed it right."
    fi
done
