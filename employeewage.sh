
#!/bin/bash -x
echo "Welcome to Wage computation :"
WAGE_PER_HOUR=20
WORKING_DAY=20
isPartTime=2
isFullTime=1

function getEmpWage (){ 
  for ((day=1;day<$WORKING_DAY;day++))
  do
     case $((RANDOM%3)) in 
           $isFullTime) empHour=8
            ;;  
           $isPartTime) empHour=4
            ;;
     esac
     DailyWage=$(($WAGE_PER_HOUR * $empHour))
     totalWage=$(($totalWage + $DailyWage))

  done
 echo "Employee monthly  wage is :" $totalWage

}

getEmpWage

