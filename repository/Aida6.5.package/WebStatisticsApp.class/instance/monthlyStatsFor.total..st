views-graphs
monthlyStatsFor: aFirstCounter total: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter
		countsFrom: self date firstDayInMonth to: self date lastDayInMonth.
	secondArray := self subtractArray: firstArray
		from: (aTotalCounter 
			countsFrom: self date firstDayInMonth to: self date lastDayInMonth).
	^self monthlyStatsDate: self date firstDayInMonth from: firstArray and: secondArray