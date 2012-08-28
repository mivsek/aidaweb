testing
includesYear: aNumber
	"anything on that year?"
	| start end |
	self isEmpty ifTrue: [^false].
	start := (Date newDay: 1 monthNumber: 1 year: aNumber) asDays.
	end := (Date newDay: 31 monthNumber: 12 year: aNumber) asDays.
	^self allDays contains: [:day | day between: start and: end]