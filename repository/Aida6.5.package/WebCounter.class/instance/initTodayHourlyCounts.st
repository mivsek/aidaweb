initialize-release
initTodayHourlyCounts

	todayHourlyCounts := Array new: 24 withAll: 0.
	self day: Date today day.