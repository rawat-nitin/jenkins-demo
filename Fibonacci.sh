#!/bin/bash

# Define the number for which you want to calculate the Fibonacci sequence
number=10  # You can change this number to any desired value

# Initialize the first two numbers of the sequence
fibonacci_1=0
fibonacci_2=1

# Print the first two numbers (0 and 1)
echo "Fibonacci Sequence for $number:"
echo -n "$fibonacci_1 $fibonacci_2 "

# Calculate and print the rest of the sequence
for ((i = 3; i <= number; i++))
do
    fibonacci_next=$((fibonacci_1 + fibonacci_2))
    echo -n "$fibonacci_next "
    fibonacci_1=$fibonacci_2
    fibonacci_2=$fibonacci_next
done

echo  # Add a newline for formatting
