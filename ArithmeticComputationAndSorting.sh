#!/bin/bash -x

read -p "Enter Value of variable a :" a
read -p "Enter Value of variable b :" b
read -p "Enter Value of variable c :" c

result1=((a+b*c))
result2=((a*b+c))
