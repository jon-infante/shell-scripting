#!/usr/bin/bash

#Create a number guessing game from 0 to 100 and have a user guess the correct number. Tell the user is
#they are over or under and how hot and cold they are to the guess. Also include the user's number of guesses.

#Declaring a random number between 0 and 100
randomNum=$(($RANDOM % 100))

# echo $randomNum

echo "Welcome to the number guessing game! Start by guessing a number between 0 and 100."

#Take input for the user's number
read userNum
counter=1

while [ $userNum != $randomNum ]
do
    while [ $userNum -gt 100 ] || [ $userNum -lt 0 ]
    do
        echo "Please enter a number between 0 and 100"
        read userNum
    done
    #get the absolute number of the difference between the user's and random number
    diff=$(($randomNum - $userNum))
    if [ $diff -lt 0 ]
    then
        diff=$(($diff*-1))
    fi
    #If the user's number is the same as the random number
    if [ $diff == 0 ]
    then
        break
    elif [ $diff -lt 5 ]
    then
        temp="very hot!"
    elif [ $diff -lt 10 ]
    then
        temp="hot!"
    elif [ $diff -lt 25 ]
    then
        temp="warm."
    elif [ $diff -lt 50 ]
    then
        temp="cold."
    elif [ $diff -gt 49 ]
    then
        temp="very cold."
    fi
    #Temperature print line
    echo "You are $temp"
    #Increase counter
    counter=$(($counter+1))
    #Checking if the user's number is higher or lower than the random number
    if [ $userNum -lt $randomNum ]
    then
        guessed="lower"
    else
        guessed="higher"
    fi
    echo "Try again! The number you guessed is $guessed than the random number."
    #Get user input
    read userNum
done

checkGuessCount="guess"
if [ $counter != 1 ]
then
    checkGuessCount="guesses"
fi

echo "You guessed the correct number $randomNum. Congratulations!"  
echo "You guessed the number in $counter $checkGuessCount!"