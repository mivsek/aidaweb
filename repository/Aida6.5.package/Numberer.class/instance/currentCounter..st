accessing
currentCounter: aSymbol
	"get curent (last nextCounter) number"
	(self counters includesKey: aSymbol) ifFalse: [self resetCounter: aSymbol].
	^self counters at: aSymbol