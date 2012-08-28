testing
isHourPeriod
	^self period notNil and: [self period key = #hour]