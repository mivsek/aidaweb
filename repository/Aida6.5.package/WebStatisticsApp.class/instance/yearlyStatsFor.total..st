views-graphs
yearlyStatsFor: aFirstCounter total: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter countsMonthlyFromDate: self statsStartingDate.
	secondArray := self subtractArray: firstArray
		from: (aTotalCounter  countsMonthlyFromDate: self statsStartingDate).
	^self yearlyStatsStarting: self statsStartingDate from: firstArray and: secondArray