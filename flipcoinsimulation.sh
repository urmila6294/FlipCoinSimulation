#!/bin/bash 

echo "Welcome to Flip Coin Simulation program"

randcheck=$((RANDOM%2))

if [ $randcheck == 1 ]
then
        echo "Its a HEAD!!"
else
        echo "Its a TAIL!!"
fi
declare -A arr

for ((i=1; i<=50; i++))
do
	randomCheck=$((RANDOM % 2))
	if [ $randomCheck == 1 ]
	then
        	echo "HEADS"
		((arr[H]++))
	else
		echo "TAILS"
		((arr[T]++))
	fi
done
