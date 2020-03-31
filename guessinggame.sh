#!/usr/bin/env bash
# File: guess
function Check(){
 if [ $guess -gt $anwser ]
        then
                echo "Your guess was to high."
        else
                echo "Your guess was to low."
        fi
}
anwser=$(ls -an|grep -c '^-')
echo 'Please enter your guess for how many files are in this directory:'
read guess
echo 'You guessed' $guess
while [ $guess -ne $anwser ]
do
	Check
	echo 'Please enter your guess for how many files are in this directory.'
	read guess
	echo 'You guessed' $guess
done
echo 'correct there' $anwser 'files'
