views-graphs
monthlyStatsDate: aDate from: aFirstArray and: aSecondArray
	| e maxCount turn sumArray cDate weekday monthText yearLink |
	sumArray := aSecondArray notNil 
		ifTrue: [self sumArray: aFirstArray and: aSecondArray]
		ifFalse: [aFirstArray].
	maxCount := sumArray inject: 0 into: [:max :each | each max: max].
	e := WebElement new.
	e table width: 300; cellSpacing: 0; cellPadding: 0. e newRow color: #thistle.
	monthText := (Date nameOfMonth: aDate monthIndex), ' ', aDate year printString.
	yearLink := (WebLink text: '<font face="helvetica">yearly</font>' linkTo: self observee)
		parameter: 'view' value: self view; parameter: 'yearly' value: 'true'.
	e cell  colspan: 3;
		add: self previousMonthLink; 	addTextSmall: ' ', monthText, ' ';
		add: self nextMonthLink; addNbSp: 3; add: yearLink.
	e newCell width: 50; align: #right; addTextSmall: 'hits'. e newRow.
	turn := false.
	1 to: aFirstArray size do: [:day |
		e newRow.
		cDate := aDate addDays: day - 1.
		weekday := cDate weekdayIndex. weekday = 1 ifTrue: [turn := turn not]. 
		turn ifTrue: [e row color: #fffbf0].
		e cell addTextSmall: ((Date nameOfDay: weekday) copyFrom: 1 to: 3).
		e newCell align: #right; addTextSmall: (day printString, '.', aDate monthIndex printString, ' ' ).
		e newCell add: (self graphLineCount: (aFirstArray at: day) and: (aSecondArray at: day) max: maxCount).
		e newCell align: #right; addTextSmall: (sumArray at: day) printDotString.
		].
	^e