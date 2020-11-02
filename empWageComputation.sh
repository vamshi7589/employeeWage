echo "** welcome to employee wage computation** "
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
#CONSTANT
WAGE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4

# USER INPUTE
read -p "To number of working days :" NUMBER_OF_WORKING_DAYS
read -p "To number of working hour :" NUMBER_OF_WORKING_HOURS

#VARIABLE
totalSalary=0
totalEmployeeHours=0
totalWorkingDays=0
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
case "$caseChoice" in
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
#CALCULATE DAILY WAGE TILL CONDITION SATISFIED
while [[ $totalEmployeeHours -le $NUMBER_OF_WORKING_HOURS ||
			$totalWorkingDays -le $NUMBER_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	randomShiftCheck=$((RANDOM%3))
	case $randomShiftCheck in

		$IS_FULL_TIME )
			employeeHour=$((EMPLOYEE_HOUR_FULLTIME))
			;;
		$IS_PART_TIME )
			employeeHour=$((EMPLOYEE_HOUR_PARTTIME))
			;;
		* )
			employeeHour=0
			;;
	esac
	totalEmployeeHours=$(($totalEmployeeHours + $employeeHour))
	echo "To total employee hours :" $totalEmployeeHours	
done
 #TO PRINT AND STORE WAGES FOR A MONTH
totalWageOfMonth=$(($(calculateWage $totalEmployeeHours)))
echo "Total wage :"$totaleWageOfMonth
echo "Daily wages: ${dailyWage[@]}"
echo "Day:${!dailyWage[@]}"
