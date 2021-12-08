#!/usr/bin/bash

#Do not put space around the equal sign
greet="Hello World!"
echo $greet

# pwd
# cd ..
# pwd
# ls

# echo "Say Something"
# read word
# echo "You typed $word"

echo "Do you want to say some more?"
read answer
#boolean variable
exit=false

while [ $exit = false ]
do
    if [ $answer = "y" ]
    then
    #Execute when condition is true
        echo "Say Something"
        read word
        echo "You typed $word"
        echo "Continue speaking?"
        read answer
        if [ $answer != 'y' ]
        then
            echo "goodbye"
            break
        fi
    else
        #Execute when condition is false
        echo "goodbye"
        exit=true
    fi
done