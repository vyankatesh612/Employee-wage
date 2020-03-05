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

function calculateDailyWage(){
	local hour=$1
	dailyWage=$(($1*$WAGE_PER_HOUR))
	echo $dailyWage
}
  while [[ $day -lt $WORKING_DAY && $totalworkinghours -le $WORKING_HOUR ]]
  do
     workingHours="$( getWorkingHour $((RANDOM%3)) )"
     totalworkinghours=$(($totalworkinghours+$workingHours))
     empDailyWage[$day]="$(calculateDailyWage $workingHours)"
     ((day++))
  done
  
  
 
totalwage="$(calculateDailyWage $totalworkinghours)"
echo "Employee total wage " ${empDailyWage[@]}

