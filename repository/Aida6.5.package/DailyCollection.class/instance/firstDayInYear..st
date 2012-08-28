accessing
firstDayInYear: aYear
	"on 1 januar of that year"
	^self allDated: (Date newDay: 1 monthNumber: 1 year: aYear).