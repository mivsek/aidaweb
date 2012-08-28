accessing
allWeekly: aDate
	^self 
		allFromDate: aDate - aDate weekdayIndex + 1
		to: aDate - aDate weekdayIndex + 1 + 7