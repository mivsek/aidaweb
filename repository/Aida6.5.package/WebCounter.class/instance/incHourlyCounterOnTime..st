private
incHourlyCounterOnTime: aTime
	| hours |
	hours := aTime hours.
	self hourlyCounts at: hours+1 	put: (self  hourlyCounts at: hours+1) + 1.