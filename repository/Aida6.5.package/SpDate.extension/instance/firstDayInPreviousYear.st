*Aida
firstDayInPreviousYear
	^SpDate 
		newDay: 1
		month: self firstDayInMonth monthIndex
		year: self firstDayInMonth year + 1