#!/bin/bash
function file_cnt{
echo $(ls -l | wc -l)
}

echo "Please guess how many files in current directory"

#calling function to get count
file_cnt=$(file_cnt)

#starting guessing loop

while true; 
do
read -p "whats your guess: " guess

if ![[ "$guess" =~ ^[0-9]+$ ]]; then
echo "not a valid number, please enter a valid number"
continue
fi

if [ "$guess" -lt "$file_count" ]; then
echo "not a match, guess is too low , try again"
elif [ "$guess" -lt "$file_count" ]; then
echo "not a match, guess is too high , try again"
else
echo "congratulations, its a match, the count is correct"
break
fi

done
