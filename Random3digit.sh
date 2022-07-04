#!/bin/bash

for (( i=0; i<10; i++ ))
do
A=$((RANDOM%900 + 100));
random[(($i))]=$((A))
done
echo ${random[@]}
sort -R ${random[@]}
