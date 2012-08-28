*Aida-Daily collections
allDailyCollectionDated: aDate
	"all on that date in any of daily collections"
	^self inject: OrderedCollection new into: [:col :each | col addAll: (each allDated: aDate). col]

"DailyCollection allInstances allDailyCollectionDated: 
		DailyCollection allInstances allDailyCollectionDates asOrderedCollection last."