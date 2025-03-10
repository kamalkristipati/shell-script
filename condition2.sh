#! /bin/bash 

echo "Enter first number"

read N1

echo "Eneter second Number"

read N2

if [ $N1 -gt $N2 ]
then
    echo "$N1 is greter Than $N2"
else
    echo "$N2 is gerter than $N1"
fi 