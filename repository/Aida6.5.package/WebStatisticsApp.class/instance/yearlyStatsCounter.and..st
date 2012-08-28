views-graphs
yearlyStatsCounter: aFirstCounter and: aSecondCounter
	| firstArray secondArray |
	firstArray := aFirstCounter countsMonthlyFromDate: self statsStartingDate.
	secondArray := aSecondCounter notNil 
		ifTrue: [aSecondCounter  countsMonthlyFromDate: self statsStartingDate.]
		ifFalse: [Array new: firstArray size withAll: 0].
	^self yearlyStatsStarting: self statsStartingDate from: firstArray and: secondArray