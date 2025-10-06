#!/bin/bash

function guess_files {
    local file_count=$(ls -1 | wc -l)
    local guess=-1

    echo "Welcome 2 guessing game!"
    echo "Guess how many files are in the current directory?"

    while [[ $guess -ne $file_count ]]; do 
        read -p "Enter your guess: " guess
        if [[ $guess -lt $file_count ]]; then
            echo "Too low!"
        elif [[ $guess -gt $file_count ]]; then
            echo "Too high!"
        else
            echo "You guessed right."
        fi
    done
}
guess_files
