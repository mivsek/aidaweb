accessing
nextCounter: aSymbol
	"get next number and increment this counter"
	^self counters at: aSymbol put: (self peekCounter: aSymbol)