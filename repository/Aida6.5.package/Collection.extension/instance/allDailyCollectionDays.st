*Aida-Daily collections
allDailyCollectionDays
	"all day numbers which occur of any of daily collections"
	^self inject: Set new into: [:set :each | set addAll: each allDays. set].

"DailyCollection allInstances allDailyCollectionDays"