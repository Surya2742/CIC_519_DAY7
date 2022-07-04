#!/bin/bash

for ((i=0;i<10;i++))
do
	arr[$i]=$((RANDOM%900+100));
done

echo ${arr[@]};

echo "-----After sorting-----"

for ((i=0;i<${#arr[@]}-1;i++))
do
	for ((j=i+1;j<${#arr[@]};j++))
	do
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]};
			arr[$i]=${arr[j]};
			arr[$j]=$temp;
		fi
	done
done

echo ${arr[@]};

secondSmallest=${arr[1]};

indexOfSecondLargest=$((${#arr[@]}-2));
secondLargest=${arr[indexOfSecondLargest]};

echo "Second smallest : $secondSmallest";
echo "Second Largest : $secondLargest";
