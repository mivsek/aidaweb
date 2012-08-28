*Aida
firstDayInNextMonth
	^SpDate 
		newDay: 1 
		month: (self lastDayInMonth addDays: 1) monthIndex
		year: (self lastDayInMonth addDays: 1) year