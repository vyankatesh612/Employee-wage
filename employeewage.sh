
#!/bin/bash -x
echo "Welcome to Wage computation :"
WAGE_PER_HOUR=20

isPartTime=2
isFullTime=1

function getEmpWage (){ 
  case $((RANDOM%3)) in 
    $isFullTime) empHour=8
    ;;
    $isPartTime) empHour=4
    ;;
  esac
  DailyWage=$(($WAGE_PER_HOUR * $empHour))
	echo "Employee daily wage is :" $DailyWage
}
getEmpWage

