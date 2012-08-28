accessing
allMonthly: aDate
	^self 
		allFromDate: aDate firstDayOfMonth
		to: aDate firstDayInMonth + aDate daysInMonth - 1