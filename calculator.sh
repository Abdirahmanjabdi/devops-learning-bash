#!/bin/bash
 

 # Bash script to perform basic arithmetic operations
echo "Welcome to the Basic Calculator!"
 read -rp "Enter the first number: " num1
 read -rp "Enter the second number: " num2
 #check if the inputs are numbers
    if ! [[ "$num1" =~ ^-?[0-9]+$ && "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter valid integers."
    exit 1
    fi
    #perfoming the operations
sum=$((num1 + num2))
sub=$((num1 - num2))
mul=$((num1 * num2))
#handle division safely
if [ "$num2" -eq 0 ]; then
    div="undefined (division by zero)"
else
    div=$((num1 / num2))
fi
#display the results
echo "Results:"
echo "num1 + num2 = $sum"
echo "num1 - num2 = $sub"
echo "num1 * num2 = $mul"
echo "num1 / num2 = $div"