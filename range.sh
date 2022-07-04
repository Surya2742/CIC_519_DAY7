#!/bin/bash

echo "Range should be 0-100"
read -p "Enter the starting range: " A;
read -p "Enter the ending range: " B;
count=0;
for (( i=A; i<=B; i++ ))
do
	if [ $((i%11)) -eq 0 ]
	then
	Arr[((count++))]=$((i))
	fi
done
echo ${Arr[@]}
