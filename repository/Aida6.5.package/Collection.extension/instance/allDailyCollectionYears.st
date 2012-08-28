*Aida-Daily collections
allDailyCollectionYears
	"all years on which occur of anything of daily collections. Sorted!"
	^SortedCollection 
		withAll: (self allDailyCollectionDates inject: Set new into: [:set :each | set add: each year. set])
		sortBlock: [:a :b | a < b].

"DailyCollection allInstances allDailyCollectionYears"