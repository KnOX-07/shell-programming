#! /bin/bash

echo -n "Enter Ramesh's basic salary: "
read bsal

#Calculate dearness allowance(40% of basic salary)
da=$(echo "scale=2; $bsal * 0.4" | bc)

#Calculate house rent allowance(20% of basic salary)
hra=$(echo "scale=2; $bsal * 0.2" | bc)

#Calculate gross salary(bsal + da + hra)
gs=$(echo "scale=2; $bsal + $da + $hra" | bc)

#Display Ramesh's gross salary
echo "Gross salary: $gs"
