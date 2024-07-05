#! /bin/bash

echo -n "Enter a five-digit number: "
read num

if [ "$num" -ge 10000 ] && [ "$num" -le 99999 ]; then
    sum=0
    while [ "$num" -gt 0 ]; do
        digit=$((num % 10))
        sum=$((sum + digit))
        num=$((num / 10))
    done

    echo "Sum of digits: $sum"
else
    echo "Invalid input! Please enter a five-digit number."
fi
