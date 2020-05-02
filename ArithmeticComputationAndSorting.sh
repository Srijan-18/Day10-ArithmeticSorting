#!/bin/bash -x
declare -A result
read -p "Enter Value of variable a :" a
read -p "Enter Value of variable b :" b
read -p "Enter Value of variable c :" c

result[UC2]=$((a+b*c))
result[UC3]=$((a*b+c))
result[UC4]=$(bc <<< "scale=4; $c+$a/$b ")
result[UC5]=$((a%b+c))
