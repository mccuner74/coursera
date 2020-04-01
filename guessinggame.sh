#!/usr/bin/env bash
# File: guess
function Check(){
 if [[ $guess -gt $anwser ]]
        then
                echo "Your guess was to high."
        else
                echo "Your guess was to low, or you entered an inproper variable (integers only please)."
        fi
}
anwser=$(ls -an|grep -c '^-')
echo 'Please enter your guess for how many files are in this directory:'
read guess
echo 'You guessed' $guess
if [[ $guess -ne $guess ]]
	then
		echo $guess
		guess =0
	fi
while [[ $guess -ne $anwser ]]
do
	Check
	echo 'Please enter your guess for how many files are in this directory.'
	read guess
	echo 'You guessed' $guess
done
echo 'correct there' $anwser 'files'
