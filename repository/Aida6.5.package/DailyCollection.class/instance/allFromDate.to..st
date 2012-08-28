accessing
allFromDate: aStartDate to: anEndDate
	| startDay endDay daysInRange |
	startDay := aStartDate asDays. endDay := anEndDate asDays.
	daysInRange := self allDays select: [:each | each >= startDay and: [each <= endDay] ].
	daysInRange := daysInRange asSortedCollection. 
	^daysInRange inject: OrderedCollection new into: [:col :each | col addAll: (self days at: each). col]

"DailyCollection allInstances last allFromDate: (Date readSloFrom: '1.1.2004' readStream) 
  	to: (Date readSloFrom: '31.12.2006' readStream)"