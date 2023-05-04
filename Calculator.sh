#!/bin/bash

# Function to display the calculator menu
function show_menu() {
    echo "Calculator Menu"
    echo "---------------"
    echo "1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Divide"
    echo "5. Quit"
}

# Loop until the user selects Quit
while true; do
    # Display the menu
    show_menu
    
    # Read the user's choice
    read -p "Enter your choice: " choice
    
    # Perform the selected operation
    case $choice in
        1)  # Addition
            read -p "Enter the first number: " num1
            read -p "Enter the second number: " num2
            result=$(expr $num1 + $num2)
            echo "Result: $result"
            ;;
        2)  # Subtraction
            read -p "Enter the first number: " num1
            read -p "Enter the second number: " num2
            result=$(expr $num1 - $num2)
            echo "Result: $result"
            ;;
        3)  # Multiplication
            read -p "Enter the first number: " num1
            read -p "Enter the second number: " num2
            result=$(expr $num1 \* $num2)
            echo "Result: $result"
            ;;
        4)  # Division
            read -p "Enter the first number: " num1
            read -p "Enter the second number: " num2
            result=$(expr $num1 / $num2)
            echo "Result: $result"
            ;;
        5)  # Quit
            exit 0
            ;;
        *)  # Invalid choice
            echo "Invalid choice. Please try again."
            ;;
    esac
    
    # Wait for the user to press Enter
    read -p "Press Enter to continue..."
done

