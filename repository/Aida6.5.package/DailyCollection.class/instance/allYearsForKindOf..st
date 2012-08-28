private-accessing
allYearsForKindOf: aClass
	"all years on which something of that class exist"
	| allDays year years skipToDay |
	allDays := self days keys asSortedCollection. allDays isEmpty ifTrue: [^#()].
	years := Set new. skipToDay := 0.
	allDays do: [:day |
		day >= skipToDay ifTrue:
			[((self days at: day) contains: [:entry | entry isKindOf: aClass]) ifTrue:
				[year := (Date fromDays: day) year.
				years add: year. 
				skipToDay := (Date newDay: 1 monthNumber: 1 year: year+1) asDays] ] ].
	^years asSortedCollection asOrderedCollection

"DailyCollection allInstances last allYearsForKindOf: Invoice "