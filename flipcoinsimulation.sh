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
head=0
Hcount=0
Tcount=0
counter=0

while [ $counter -lt 21 ]
do
	counter=$(($counter + 1))
	randomCheck=$((RANDOM % 2))
	if [ $randomCheck == 1 ]
	then
		echo "HEADS"
		Hcount=$(($Hcount + 1))

             if [ $Hcount == 21 ]
		then
			break
		fi
       else
		echo "TAILS"
		Tcount=$(($Tcount + 1))
                 if [ $Tcount == 21 ]
		then
			break
		fi
	fi
done

echo "Head = $Hcount"
echo "Tail = $Tcount"
 
if [ $Hcount -gt $Tcount ]
then 
   Head=$(( ($Hcount)-($Tcount) ))
echo "Head Win by $Head times"
else
Tail=$(( ($Tcount)-($Hcount) ))
echo "Tail Win by $Tail times"
fi
