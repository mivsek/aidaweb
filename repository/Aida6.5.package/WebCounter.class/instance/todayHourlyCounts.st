private
todayHourlyCounts
	"array of counters for each hour today."

	todayHourlyCounts isNil ifTrue: [self initTodayHourlyCounts].
	^todayHourlyCounts