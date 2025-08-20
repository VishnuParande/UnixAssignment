#!/bin/bash

# Function to count files in current directory
file_count() {
    echo $(ls -lrt | wc -l)
}

# This Function is to prompt user for the guess
function fun_guess(){
    echo "Lets guess how many files are in the current directory:"
    read guess
}

# Main loop for guessing game
function game(){
    actual_count=$(file_count)
    echo "Welcome to the game!"
    fun_guess

    while [[ $guess -ne $actual_count ]]
    do
        if [[ $guess -lt $actual_count ]]
        then
            echo "Too low. Try again."
        elif [[ $guess -gt $actual_count ]]
        then
            echo "Too high. Try again."
        fi
        fun_guess
    done

    echo "Congratulations! the guess for count is correct"
}
game
