log analysis
analyzeAndStoreLine: aLineAsArray into: aDictionary forDate:aDate

	| datum |
	((aLineAsArray at: 2) > ' ' ) ifTrue:
		[(aLineAsArray at: 2) = '#Date:'
			ifTrue: [datum := self parseDatum: (aLineAsArray at: 3).]
			ifFalse: [datum:=aDate.].
		((aLineAsArray at: 2) copyFrom: 1 to: 1) = '#' ifFalse: 
			[aLineAsArray at: 2 put: 
				(Time readFrom: (ReadStream on: (aLineAsArray at: 2))).
			aLineAsArray at: 1 put: 
				(Timestamp new fromDate: datum andTime: (aLineAsArray at: 2)).
			(aDictionary at:  (aLineAsArray at: 3) ifAbsentPut: [WebCounter new  ] )
				 incCounterOnTimestamp: (aLineAsArray at: 1).
			].
		].
	^datum