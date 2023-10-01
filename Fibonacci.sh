#!/bin/bash

# Check if the script is provided with one command-line argument
if [ $# -eq 1 ]; then
    number=$1
else
    echo "Usage: $0 <number>"
    exit 1
fi

# Check if the provided argument is a positive integer
if ! [[ "$number" =~ ^[0-9]+$ ]] || [ "$number" -le 0 ]; then
    echo "Please provide a valid positive integer as an argument."
    exit 1
fi

# Initialize the first two numbers of the sequence
fibonacci_1=0
fibonacci_2=1

# Print the first two numbers (0 and 1)
echo "Fibonacci Sequence for $number:"
echo -n "$fibonacci_1 $fibonacci_2 "

# Calculate and print the rest of the sequence
for ((i = 3; i <= number; i++)); do
    fibonacci_next=$((fibonacci_1 + fibonacci_2))
    echo -n "$fibonacci_next "
    fibonacci_1=$fibonacci_2
    fibonacci_2=$fibonacci_next
done

echo  # Add a newline for formatting
