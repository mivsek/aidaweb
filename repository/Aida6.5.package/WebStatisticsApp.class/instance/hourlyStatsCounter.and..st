views-graphs
hourlyStatsCounter: aFirstCounter and: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter allHourlyCounts.
	secondArray := aTotalCounter notNil
		ifTrue: [aTotalCounter allHourlyCounts]
		ifFalse: [Array new: firstArray size withAll: 0].
	^self hourlyStatsFrom: firstArray and: secondArray