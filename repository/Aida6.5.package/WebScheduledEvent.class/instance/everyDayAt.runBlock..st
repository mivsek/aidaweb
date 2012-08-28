setup
everyDayAt: aTimeOrHour  runBlock: aBlock
	| time |
	time := aTimeOrHour class == Time 
		ifTrue: [aTimeOrHour] ifFalse: [Time fromSeconds: aTimeOrHour*60*60].
	self timestamp: (SpTimestamp fromDate: Date today andTime: time).
	self block: aBlock.
	self periodType: #day value: time