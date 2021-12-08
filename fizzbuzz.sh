#!/usr/bin/bash

#Divisible by 3 diplay "fizz"
#Divisible by 5 display "buzz"
#Divisible by 3 and 5 display "fizzbuzz"

echo "Enter a positive integer"
read number

#input validation
while [ $number -le 0 ]
do
    echo "The number should be greater than zero"
    echo "Enter a positive integer"
    read number
done

echo "You entered $number"

counter=1

#loop while the counter is less than or equal to number
while [ $counter -le $number ]
do
    if [ $(($counter % 3)) -ne 0 ]
    then
        if [ $(($counter % 5)) -eq 0 ]
        then
            echo "buzz"
        else
            echo $counter
        fi
    else
        if [ $(($counter % 5)) -eq 0 ]
        then
            echo "fizzbuzz"
        else
            echo "fizz"
        fi
    fi
    #increment counter
    counter=$(($counter+1))

done