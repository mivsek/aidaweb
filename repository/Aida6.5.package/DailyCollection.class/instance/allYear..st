accessing
allYear: aNumber
	^self 
		allFromDate: (SpDate newDay: 1 month: 1 year: aNumber)
		to: (SpDate newDay: 31 month: 12 year: aNumber)