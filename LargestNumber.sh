#!/bin/bash

echo "Enter a list of numbers separated by spaces:"
read numbers

largest=0
for n in $numbers
do
    if [[ $n -gt $largest ]]
    then
        largest=$n
    fi
done

echo "The largest number in the list is $largest"

