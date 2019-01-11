#!/usr/bin/env bash
# File: guessinggame.sh

number_of_files=$(ls -A | wc -l)
flag=true
function compare_guess {
echo "Enter your guess for the number of files in the current directory."
read response
if [[ $response -gt $number_of_files ]]
then
  echo "Sorry, your guess was too high, please try again."
elif [[ $response -lt $number_of_files ]]
then
  echo "Sorry, your guess was too low, please try again."
elif [[ $response -eq $number_of_files ]]
then
  echo "Your guess was correct. Congratulations!"
  flag=false
fi
}
while $flag == true
do compare_guess
done
