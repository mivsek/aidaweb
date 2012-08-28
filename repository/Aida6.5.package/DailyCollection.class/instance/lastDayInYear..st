accessing
lastDayInYear: aYear
	"on 31 december of that year"
	^self allDated: (SpDate newDay: 31 month: 12 year: aYear).