#!/bin/bash -x
echo "Welcome to Wage computation :"
WAGE_PER_HOUR=20
FULL_HOUR=8
function Attendence()
{
  if [ $((RANDOM%2)) -eq 0 ]
  then
    echo "Employee is present"
    DailyWage=$(($WAGE_PER_HOUR * $FULL_HOUR))
    echo $DailyWage
  else
    echo "Employee Absent"
  fi
}



Attendence

