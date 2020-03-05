#!/bin/bash -x
echo "Welcome to Wage computation :"
WAGE_PER_HOUR=20
WORKING_DAY=20
isPartTime=2
isFullTime=1
WORKING_HOUR=100
day=0
hour=0
function getWorkingHour(){ 
  
     case $1 in 
           $isFullTime) empHour=8
            ;;  
           $isPartTime) empHour=4
            ;;
     esac
  echo $empHour
}


  while [[ $day -lt $WORKING_DAY && $hour -le $WORKING_HOUR ]]
  do
     workingHours="$( getWorkingHour $((RANDOM%3)) )"
     totalworkinghours=$(($totalworkinghours+$workingHours))
     day=$(($day + 1))
  done
  
  echo "Total Work Hour:" $totalworkinghours
 

