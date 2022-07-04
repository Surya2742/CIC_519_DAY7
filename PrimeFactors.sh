#!/bin/bash

echo "Factorization"
read -p "Enter the number to get Factors: " F
echo "1"
counter=0
for (( i=2; i<=F; i++ ))
do
	if [ $((F%i)) -eq 0 ]
	then
	echo "$i"
		for (( a=2; a<i; a++ ))
		do
		isPrime=1
			if [ $((i%a)) -eq 0 ]
			then
			isPrime=0
			break
			fi
		done
			if [ $((isPrime)) -eq 1 ]
			then
			Prime[((counter++))]=$i
			echo "Prime number is " $i
			fi
	fi
done
echo "-------------PRIME Factors in ARRAY-------------"
echo ${Prime[@]}
