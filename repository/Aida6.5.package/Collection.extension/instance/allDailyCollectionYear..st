*Aida-Daily collections
allDailyCollectionYear: aNumber
	| selected |
	selected := self select: [:each | each includesYear: aNumber].
	^selected
		allDailyCollectionFromDate: (Date newDay: 1 monthNumber: 1 year: aNumber)
		to: (Date newDay: 31 monthNumber: 12 year: aNumber)

"DailyCollection allInstances allDailyCollectionYear: 2004 "