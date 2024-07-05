#! /bin/bash

echo -n "Enter the length of the rectangle: "
read length
echo -n "Enter the breadth of the rectangle: "
read breadth
echo -n "Enter the radius of the circle: "
read radius

rect_area=$(echo "$length * $breadth" | bc)

rect_peri=$(echo "2 * ($length + $breadth)" | bc)

circle_area=$(echo "3.14 * $radius * $radius" | bc)

circle_cf=$(echo "2 * 3.14 * $radius" | bc)

#Display the values
echo "Area of the rectangle: $rect_area"
echo "Perimeter of the rectangle: $rect_peri"
echo "Area of the circle: $circle_area"
echo "Circumference of the circle: $circle_cf"
