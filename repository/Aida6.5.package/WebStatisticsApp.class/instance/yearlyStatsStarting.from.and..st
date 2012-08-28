views-graphs
yearlyStatsStarting: aDate from: aFirstArray and: aSecondArray
	| e maxCount turn sumArray cdate |
	sumArray := aSecondArray notNil 
		ifTrue: [self sumArray: aFirstArray and: aSecondArray]
		ifFalse: [aFirstArray].
	maxCount := sumArray inject: 0 into: [:max :each | each max: max].
	e := WebElement new.
	e table width: 300; cellSpacing: 0; cellPadding: 0. e newRow color: #thistle.
	e cell addNbSp. 	e newCell addNbSp. e newCell width: 150; addBreak.
	e newCell width: 50; align: #right; addTextSmall: 'hits'. e newRow.
	turn := false.
	cdate := SpDate newDay: 1 month: aDate monthIndex year: aDate year.
	1 to: aFirstArray size do: [:inx |
		e newRow.
		cdate monthIndex \\ 3 = 1 ifTrue: [turn := turn not].
		turn ifTrue: [e row color: #fffbf0].
		e cell addTextSmall: ((Date nameOfMonth: cdate monthIndex) asString copyFrom: 1 to: 3).
		e newCell addTextSmall: cdate year printString.
		e newCell add: (self graphLineCount: (aFirstArray at: inx) and: (aSecondArray at: inx) max: maxCount).
		e newCell align: #right; addTextSmall: (sumArray at: inx) printDotString.
		cdate := SpDate 	newDay: 1 month: (cdate addDays: 31) monthIndex year: (cdate addDays: 31) year].
	^e