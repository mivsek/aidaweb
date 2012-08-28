setup
everyHourAt: aMinuteNumber runBlock: aBlock
	self timestamp: (SpTimestamp fromDate: Date today andTime: 
		(Time fromSeconds: (Time now hours * 3600) + (aMinuteNumber * 60))).
	self block: aBlock.
	self periodType: #hour value: aMinuteNumber