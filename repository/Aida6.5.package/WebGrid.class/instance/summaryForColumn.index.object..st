private-building
summaryForColumn: aColumn index: aNumber object: anObject
	aColumn needsSummary ifFalse: [^nil].
	aColumn addToSummary: anObject.