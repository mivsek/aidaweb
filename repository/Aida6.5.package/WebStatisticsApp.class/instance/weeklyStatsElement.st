views-graphs
weeklyStatsElement
	| firstArray secondArray |
	firstArray := self site pagesCounter currentWeekCounts.
	secondArray := self subtractArray: firstArray
		from: self site totalCounter currentWeekCounts.
	^self weeklyStatsFrom: firstArray and: secondArray