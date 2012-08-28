accessing
countsMonthlyOnYear: aYear

	^(1 to: 12) collect: [:month | self countsOnMonth: month year: aYear]

"WebServer default totalCounter countsMonthlyOnYear: 1999"