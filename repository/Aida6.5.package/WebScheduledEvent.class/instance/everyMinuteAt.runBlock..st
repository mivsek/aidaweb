setup
everyMinuteAt: aSecondNumber runBlock: aBlock
	self timestamp: (SpTimestamp fromDate: Date today andTime: 
		(Time fromSeconds: (Time now hours * 3600) + (Time now minutes * 60) + aSecondNumber)).
	self block: aBlock.
	self periodType: #minute value: aSecondNumber