views-graphs
monthlyStatsCounter: aFirstCounter and: aSecondCounter
	| firstArray secondArray |
	firstArray := aFirstCounter
		countsFrom: self date firstDayInMonth to: self date lastDayInMonth.
	secondArray := aSecondCounter notNil 
		ifTrue: [aSecondCounter countsFrom: self date firstDayInMonth to: self date lastDayInMonth]
		ifFalse: [Array new: firstArray size withAll: 0].
	^self monthlyStatsDate: self date firstDayInMonth from: firstArray and: secondArray