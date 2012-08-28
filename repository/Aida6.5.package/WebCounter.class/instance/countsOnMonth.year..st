accessing
countsOnMonth: aMonth year: aYear

	| counts date |
	date := SpDate newDay: 1 month: aMonth year: aYear.
	counts := self allCountsInYear: date year.
	^(date day to: date day + date daysInMonth - 1)
		inject: 0 into: [:sum :dy | sum + (counts at: dy)]

"WebServer default totalCounter countsOnMonth: 10 year: 1999"