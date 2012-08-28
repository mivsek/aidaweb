*Aida-Daily collections
allDailyCollectionEntries
	"sorted by date"
	| days |
	days := self allDailyCollectionDays.
	days := days asSortedCollection. 
	^days inject: OrderedCollection new into: [:col :day | 
		self do: [:daily | (daily days includesKey: day) ifTrue: [col addAll: (daily days at: day)] ].
		col].

"DailyCollection allInstances allDailyCollectionEntries"