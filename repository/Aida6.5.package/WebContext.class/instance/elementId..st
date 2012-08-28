private-ids
elementId: aSymbol
	"search in a whole context chain, not only in current context! "
	^self ids at: aSymbol ifAbsent: 
		[self isFirst not
			ifTrue: [self parent elementId: aSymbol]
			ifFalse: [nil]].