views-graphs
hourlyStatsFrom: aFirstArray and: aSecondArray
	| e maxCount turn sumArray |
	sumArray := aSecondArray notNil 
		ifTrue: [self sumArray: aFirstArray and: aSecondArray]
		ifFalse: [aFirstArray].
	maxCount := sumArray inject: 0 into: [:max :each | each max: max].
	e := WebElement new.
	e table width: 250; cellSpacing: 0; cellPadding: 0. e newRow color: #thistle.
	e cell width: 50; addTextSmall: 'hour'. e newCell width: 150; addBreak. 
	e newCell width: 50; align: #right; addTextSmall: 'hits'. e newRow.
	turn := true.
	1 to: 24 do: [:hour |
		e newRow.
		(hour-1) \\ 6 = 0 ifTrue: [turn := turn not].
		turn ifTrue: [e row color: #fffbf0].
		e cell addTextSmall: ( (hour-1) printString, ' - ', (hour) printString).
		e newCell add: (self graphLineCount: (aFirstArray at: hour) and: (aSecondArray at: hour) max: maxCount).
		e newCell align: #right; addTextSmall: (sumArray at: hour) printDotString].
	^e