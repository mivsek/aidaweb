views-graphs
weeklyStatsFrom: aFirstArray and: aSecondArray
	| e maxCount turn sumArray |
	sumArray := aSecondArray notNil 
		ifTrue: [self sumArray: aFirstArray and: aSecondArray]
		ifFalse: [aFirstArray].
	maxCount := sumArray inject: 0 into: [:max :each | each max: max].
	e := WebElement new.
	e table width: 400; cellSpacing: 0; cellPadding: 0. e newRow color: #thistle.
	e cell width: 50; addTextSmall: 'this week'. e newCell width: 300; addBreak.
	e newCell width: 50; align: #right; addTextSmall: 'hits'. e newRow.
	turn := false.
	1 to: 7 do: [:day |
		e newRow.
		turn ifTrue: [e row color: #fffbf0].
		e cell addTextSmall: ((Date nameOfDay: day) copyFrom: 1 to: 3).
		e newCell add: (self graphLineCount: (aFirstArray at: day) and: (aSecondArray at: day) max: maxCount).
		e newCell align: #right; addTextSmall: (sumArray at: day) printDotString.
		turn := turn not].
	^e