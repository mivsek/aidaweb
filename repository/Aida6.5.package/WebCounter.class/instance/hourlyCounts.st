private
hourlyCounts
	"array of counters for each hour in a day."

	hourlyCounts isNil ifTrue: [self initHourlyCounts].
	^hourlyCounts