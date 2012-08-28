accessing
adjustViewingDate
	"read url parameters and adjust a viewing date accordingly"
	| adjusted m |
	adjusted := false.
	(self session lastRequest includesQuery: 'day') ifTrue: 
		[self date: (SpDate 
			newDay: (self session lastRequest queryAt: 'day') asInteger
			month: self date monthIndex
			year: self date year). adjusted := true].
	(self session lastRequest includesQuery: 'month') ifTrue: 
		[m := (self session lastRequest queryAt: 'month') asInteger.
		(m between: 1 and: 12) ifTrue: 
			[self date: (SpDate newDay: 1 month: m year: self date year). adjusted := true] ].
	(self session lastRequest includesQuery: 'year') ifTrue: 
		[self date: (SpDate 
			newDay: 1
			month: self date monthIndex
			year: (self session lastRequest queryAt: 'year') asInteger).
			adjusted := true].
	adjusted ifFalse: [date := SpDate today].