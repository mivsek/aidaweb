views-graphs
hourlyStatsCounter: aFirstCounter total: aTotalCounter
	| firstArray secondArray |
	firstArray := aFirstCounter allHourlyCounts.
	secondArray := self subtractArray: firstArray
		from: aTotalCounter allHourlyCounts.
	^self hourlyStatsFrom: firstArray and: secondArray