accessing
allYears
	"all years on which something exist"
	^SortedCollection 
		withAll: (self allDates inject: Set new into: [:set :each | set add: each year. set])
		sortBlock: [:a :b | a < b]

"DailyCollection allInstances last allYears"