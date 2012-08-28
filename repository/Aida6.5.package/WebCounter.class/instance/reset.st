initialize-release
reset

	"set all counters to zero and set started timestamp to now. YOU WILL LOOSE ALL HISTORY
	OF COUNTS ! "

	self initDailyCounts.
	self initHourlyCounts.
	self initTotal.
	self initStarted.