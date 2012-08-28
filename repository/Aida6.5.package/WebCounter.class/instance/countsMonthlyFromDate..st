accessing
countsMonthlyFromDate: aDate
	| date collection |
	date := SpDate newDay: 1
		month: aDate monthIndex
		year: aDate year.
	collection := OrderedCollection new.
	[date < SpDate today] whileTrue:
		[collection add: (self countsOnMonth: date monthIndex year: date year).
		date := SpDate newDay: 1
			month: (date + 31) monthIndex
			year: (date + 31) year].
	^collection

"AIDASite default totalCounter countsMonthlyFromDate: Date today - 6"