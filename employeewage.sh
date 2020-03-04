
#!/bin/bash -x
echo "Welcome to Wage computation :"
WAGE_PER_HOUR=20
WORKING_DAY=20
isPartTime=2
isFullTime=1
WORKING_HOUR=100
day=0
hour=0
function getEmpWage (){ 
  while [[ $day -le $WORKING_DAY && $hour -le $WORKING_HOUR ]]
  do
     case $((RANDOM%3)) in 
           $isFullTime) empHour=8
            ;;  
           $isPartTime) empHour=4
            ;;
     esac
     DailyWage=$(($WAGE_PER_HOUR * $empHour))
     totalWage=$(($totalWage + $DailyWage))
     day=$(($day + 1))
     hour=$(($hour + $empHour))

  done
 
  echo "Employee monthly  wage is :" $totalWage
  echo "days : " $day " Hours : " $hour
}

getEmpWage

