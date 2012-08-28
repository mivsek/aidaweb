*Aida
firstDayInPreviousMonth
	^SpDate 
		newDay: 1
		month: (self firstDayInMonth subtractDays: 1) monthIndex
		year: (self firstDayInMonth subtractDays: 1) year