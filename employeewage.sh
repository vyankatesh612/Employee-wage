#!/bin/bash -x
echo "Welcome to Wage computation :"

function Attendence()
{
  if [ $((RANDOM%2)) -eq 0 ]
  then
    echo "Employee is present"
  else
    echo "Employee Absent"
  fi
}
Attendence

