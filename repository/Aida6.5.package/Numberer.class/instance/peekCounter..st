accessing
peekCounter: aSymbol
	"get next number but not increment it"
	(self counters includesKey: aSymbol) ifFalse: [self resetCounter: aSymbol].
	^(self counters at: aSymbol) + 1