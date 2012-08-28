initialize-release
initDailyCounts
	dailyCounts := Array new: 366 withAll: 0.
	self year: Date today year.