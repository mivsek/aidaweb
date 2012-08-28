private
dailyCounts
	"array of counters for each day in current year. When new year arrives, counters are 
	copied in a yearlyHistory"

	dailyCounts isNil ifTrue: [self initDailyCounts].
	^dailyCounts