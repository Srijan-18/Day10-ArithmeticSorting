#!/bin/bash -x
declare -A result
read -p "Enter Value of variable a :" a
read -p "Enter Value of variable b :" b
read -p "Enter Value of variable c :" c

result[UC2]=$((a+b*c))
result[UC3]=$((a*b+c))
result[UC4]=$(( c+a/b ))
result[UC5]=$((a%b+c))
arrayIndex=0
for key in ${!result[@]}
do
	resultArray[((arrayIndex++))]=${result[$key]}
done
#bubble Sorting in descending order. i & j are loop variables

for((i=0;i<arrayIndex-1;i++))
do
	for((j=0;j<arrayIndex-1-i;j++))
	do
		if [ ${resultArray[$j]} -gt ${resultArray[$j+1]} ]
		then
			temp=${resultArray[$j]}
			resultArray[$j]=${resultArray[$j+1]}
			resultArray[$j+1]=$temp
		fi
	done
done
echo ${resultArray[@]}

