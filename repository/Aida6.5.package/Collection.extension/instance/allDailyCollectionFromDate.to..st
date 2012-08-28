*Aida-Daily collections
allDailyCollectionFromDate: aStartDate to: anEndDate
	"sorted by date"
	| startDay endDay daysInRange |
	startDay := aStartDate asDays. endDay := anEndDate asDays.
	daysInRange := self allDailyCollectionDays select: [:each | each >= startDay and: [each <= endDay] ].
	daysInRange := daysInRange asSortedCollection. 
	^daysInRange inject: OrderedCollection new into: [:col :day | 
		self do: [:daily | (daily days includesKey: day) ifTrue: [col addAll: (daily days at: day)] ].
		col].

"DailyCollection allInstances allDailyCollectionFromDate: (Date readSloFrom: '1.1.2004' readStream) 
  	to: (Date readSloFrom: '31.12.2006' readStream)"