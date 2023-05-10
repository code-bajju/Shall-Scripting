#!/bin/bash
echo "Enter the first number:"
read num1
# Prompt the user for the operation to perform
echo "Enter the operation (+, -, *, /):"
read operation
# Prompt the user for the second number
echo "Enter the second number:"
read num2
# Perform the operation
case $operation in
    +)
        result=$((num1 + num2))
        echo "$num1 + $num2 = $result"
        ;;
    -)
        result=$((num1 - num2))
        echo "$num1 - $num2 = $result"
        ;;
    \*)
        result=$((num1 * num2))
        echo "$num1 * $num2 = $result"
        ;;
    /)
        if [[ $num2 -eq 0 ]]
        then
            echo "Error: Division by zero"
        else
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "$num1 / $num2 = $result"
        fi
        ;;
    *)
        echo "Error: Invalid operation"
        ;;
esac

