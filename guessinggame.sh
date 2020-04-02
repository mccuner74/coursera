#!/usr/bin/env bash
# File: guess
function Check(){
	if [[ $guess -gt $anwser ]]
        	then
                	echo "Your guess was too high."
        	else
                	if [[ $guess -ne -1  ]]
				then
					echo "Your guess was too low"
			fi
        fi
}

function ruleout(){
	if [[ ! ($guess =~ ^[0-9]+$) ]] ; then
                echo "You entered an improper input. Please try again"
                guess=-1
	fi
}

anwser=$(ls -an|grep -c '^-')
echo 'Please enter your guess for how many files are in this directory:'
read guess
echo 'You guessed' $guess
ruleout
while [[ $guess -ne $anwser ]]
do
	Check
	echo 'Please enter your guess for how many files are in this directory.'
	read guess
	echo 'You guessed' $guess
	ruleout
done
echo 'correct there' $anwser 'files'
