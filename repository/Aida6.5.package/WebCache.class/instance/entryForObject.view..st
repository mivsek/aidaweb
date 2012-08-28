private-cache
entryForObject: anObject view: aViewSymbol
	^(self objects at: anObject ifAbsent: [^nil])
		at: aViewSymbol ifAbsent: [nil]