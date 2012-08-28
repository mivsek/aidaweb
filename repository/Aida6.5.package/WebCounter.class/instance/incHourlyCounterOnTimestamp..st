private
incHourlyCounterOnTimestamp: aTimestamp
	| hours |
	hours := aTimestamp asTime hours.
	self hourlyCounts at: hours+1 put: (self  hourlyCounts at: hours+1) + 1.
	self incTodayHourlyCounterOnTimestamp: aTimestamp