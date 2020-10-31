echo " welcome to employee wage computation "
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
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
  	#TO FUNCTION CALCULATE EMPLOYEE WAGE
	function calculateDailyEmployeeWae(){
  	#TO FUNCTION PART TIME EMPLOYEE AND  WAGE
	function partTimeEmployeeAndWage(){
	read -p "Assume Wage per hour is :" isWagePerHour "rupees"
        isDayHour=24
 	read -p "To full day hours is :" isFullDayHour
	calculateEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
	echo "To calculate daily employee wage :" $calculateEmployeeWage "rupees"
	isDayHour=24
 	read -p "To part time hour is :" isFullDayHour
	calculatePartTimeEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
	echo "To calculate part time employee and wage :" $calculatePartTimeEmployeeWage "rupees"
}
#using use case statement  	
case "$caseChoce" in
	0) echo "To calculate Daily Employee Wage"
		#TO FUNCTION CALCULATE EMPLOYEE WAGE
		function calculateDailyEmployeeWae(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
   	isDayHour=24
 		read -p "To full day hours is :" isFullDayHour
		calculateEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
		echo "To calculate daily employee wage :" $calculateEmployeeWage "rupees"
		}
		calculateDailyEmployeeWae
		;;
	1)echo "To calculate part time Employee and wage"
		function partTimeEmployeeAndWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=24
 		read -p "To part time hour is :" isFullDayHour
		calculatePartTimeEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
		echo "To calculate part time employee and wage :" $calculatePartTimeEmployeeWage "rupees"
			}
		partTimeEmployeeAndWage
		;;
   *)echo "No choice"
      ;;
esac
