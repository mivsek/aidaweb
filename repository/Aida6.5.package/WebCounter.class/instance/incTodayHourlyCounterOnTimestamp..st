private
incTodayHourlyCounterOnTimestamp: aTimestamp

	| hours dayOfYear |
	dayOfYear := aTimestamp asDate day.
	self day ~= dayOfYear 	ifTrue: 
		[self initTodayHourlyCounts.
		self day: dayOfYear].
	hours := aTimestamp asTime hours.
	self todayHourlyCounts 
		at: hours+1
		put: (self  todayHourlyCounts at: hours+1) + 1.