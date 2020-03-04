
#!/bin/bash -x
echo "Welcome to Wage computation :"
WAGE_PER_HOUR=20

isPartTime=1
isFullTime=2

function getEmpWage()
{
  if [ $((RANDOM%2)) -eq 0 ]
  then
    echo "Employee Absent"
    DailyWage=0
    echo $DailyWage
  else
     if [ $((RANDOM%3)) -eq $isPartTime ]
     then
        empHour=4
        
      elif [ $((RANDOM%3)) -eq $isFullTime ]
      then
        empHour=8
        
      fi
   DailyWage=$(($WAGE_PER_HOUR * $empHour))
    echo "Employee Wage is : "$DailyWage

  fi
}



getEmpWage

