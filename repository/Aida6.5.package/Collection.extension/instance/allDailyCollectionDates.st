*Aida-Daily collections
allDailyCollectionDates
	"all dates which occur of any of daily collections"
	^self allDailyCollectionDays collect: [:each | Date fromDays: each].

"DailyCollection allInstances allDailyCollectionDates"