isPresent=1

#TO VARIABLE
randomNumber=$((RANDOM%2))

#TO CHECK THE EMPLOYEE PRESENT AND ABSENT
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
#TO FUNCTION CALCULATE EMPLOYEE WAGE
function calculateDailyEmployeeWae(){
	read -p "Assume Wage per hour is :" isWagePerHour "rupees"
   isDayHour=24
 	read -p "To full day hours is :" isFullDayHour
	calculateEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
	echo "To calculate daily employee wage :" $calculateEmployeeWage "rupees"
}
