#! /bin/bash

echo -n "Enter the distance between two cities(in km): "
read dst_k

dst_m=$(echo "$dst_k * 1000" | bc)

dst_ft=$(echo "$dst_k * 3280.84" | bc)

dst_in=$(echo "$dst_k * 39370.1" | bc)

dst_cm=$(echo "$dst_k * 100000" | bc)

echo "Distance in meters: $dst_m m"
echo "Distance in feet: $dst_ft ft"
echo "Distance in inches: $dst_in in"
echo "Distance in centimeters: $dst_cm cm"
