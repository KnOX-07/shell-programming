#! /bin/sh

echo -n "Enter the marks for Physics: "
read phy
echo -n "Enter the marks for Maths: "
read math
echo -n "Enter the marks for Computer: "
read comp
echo -n "Enter the marks for Chemistry: "
read chem
echo -n "Enter the marks for Biology: "
read bio

total=$(echo "$phy + $math + $comp + $chem + $bio" | bc)
echo "Total marks obtained: $total"

if [ "$total" -ge 480 ]; then
    echo "Outstanding"
elif [ "$total" -ge 450 ] && [ "$total" -lt 480 ]; then
    echo "Excellent"
elif [ "$total" -ge 420 ] && [ "$total" -lt 450 ]; then
    echo "Good"
elif [ "$total" -ge 400 ] && [ "$total" -lt 420 ]; then
    echo "Average"
elif [ "$total" -ge 350 ] && [ "$total" -lt 400 ]; then
    echo "Poor"
else
    echo "Fail"
fi
