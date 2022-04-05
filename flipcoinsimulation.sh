#!/bin/bash 

echo "Welcome to Flip Coin Simulation program"

randcheck=$((RANDOM%2))

if [ $randcheck == 1 ]
then
        echo "Its a HEAD!!"
else
        echo "Its a TAIL!!"
fi
